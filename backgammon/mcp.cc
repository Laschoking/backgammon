#include <assert.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <signal.h>

#include <state.h>
#include <state-internal.h>
#include <mcp.h>

enum exit_reason {
  /* Invalid moves disqualify the player. */
  INVALID_MOVE_0 = 1,
  INVALID_MOVE_1,
  /* Crashes do, too. */
  CRASH_0,
  CRASH_1,
  /* Couldn't execute a player. This is a configuration error. */
  EXEC_FAILED,
  WIN_ABOVE,
  WIN_BELOW,
  DRAW,
};

enum constants {
  PLAYERS = 2,
  NAME_MAX_LEN = 127,
};

static const time_t ETERNITY = 0;
static const time_t DEFAULT_GRACE_TIME = 1;

static time_t cpu_limit        = ETERNITY;
static time_t cpu_limit_grace  = ETERNITY;
static struct rlimit mem_limit = { RLIM_INFINITY, RLIM_INFINITY };

static bool        debug         = false;
static const char *valgrind_tool = NULL;

static struct player {
  int player;
  volatile pid_t pid;

  int pipe_from_player;
  int pipe_to_player;

  volatile bool soft_timeout;
  volatile bool hard_timeout;

  char name[NAME_MAX_LEN + 1];
} player[PLAYERS];

static struct player * volatile current_player = NULL;


/* Kill both players */
static void kill_players()
{
  /* Disable SIGCHLD handling as both players are about to be killed */
  struct sigaction sact;

  if (sigemptyset(&sact.sa_mask)) { abort(); }
  sact.sa_flags = 0;
  sact.sa_handler = SIG_IGN;
  if (sigaction(SIGCHLD, &sact, NULL) != 0) { abort(); }

  /* Wake and actually kill the players */
  for (int i = 0; i < PLAYERS; i++) {
    /* Any of the two players may not be initialized yet */
    if (!player[i].pid) { continue; }

    kill(player[i].pid, SIGCONT);
    kill(player[i].pid, SIGTERM);
    waitpid(player[i].pid, NULL, 0);
  }
}

/* Error occured - print diagnostic message and exit gracefully*/
__attribute__((noreturn))
__attribute__ ((format (printf, 2, 3)))
static void
exit_msg(unsigned r, const char *msg, ...)
{
  va_list ap;
  va_start(ap, msg);
  vfprintf(stderr, msg, ap);
  kill_players();
  exit(r);
  va_end(ap);
}

/* More convenient, yet still signal-safe version of 'write' */
static ssize_t
safe_write(int const fd, char const * const str, size_t max) {
  const char *cur = str;

  while (*cur && max) { --max; ++cur; }

  size_t const len = cur - str;
  size_t left = len;

  while (left) { left -= write(fd, str, left); }
  return len;
}

/* Specify seconds = ETERNITY to disarm timer. */
static void
arm_timer(time_t const seconds)
{
  struct itimerval t = { {0, 0}, {seconds, 0} };
  if (setitimer(ITIMER_REAL, &t, NULL) < 0) { abort(); }
}

static void
alarm_handler(int const signum, siginfo_t *, void *)
{
  assert(signum == SIGALRM && "Unexpected signal");

  struct player *p = current_player;
  assert(p && "No active player");

  if (!p->soft_timeout) {
    p->soft_timeout = true;
    kill(p->pid, SIGXCPU);
    arm_timer(cpu_limit_grace - cpu_limit);
  } else {
    p->hard_timeout = true;
    kill(p->pid, SIGKILL);
    safe_write(STDERR_FILENO, "Player timeout!\n", 16);
  }
}

static void
child_handler(int signum, siginfo_t *si, void *)
{
  assert(signum == si->si_signo && "Weird semantics");
  assert(signum == SIGCHLD && "Unexpected signal");
  assert((si->si_code != CLD_STOPPED) && (si->si_code != CLD_CONTINUED) && "Suppressed signal");

  /* Find the child that triggered the signal. */
  size_t plid;

  for (plid = 0; plid < 2; ++plid)
    if (player[plid].pid == si->si_pid) { break; }

  assert(plid < 2 && "Signal from unknown child");


  /* Check if the child quit on its own */
  if (si->si_code == CLD_EXITED) {
    exit_msg(CRASH_0 + plid,         \
             "'%s' left the game\n", \
             player[plid].name);
  }

  /* Otherwise, we only care if the child process was terminated */
  if (si->si_code != CLD_KILLED) { return; }

  /* If the child was terminated by a signal (most common case), then
     'si_status' contains the signal that caused termination. */
  switch(si->si_status) {

  case EXEC_FAILED:
    exit_msg(EXEC_FAILED, "Unable to execute '%s'\n", player[plid].name);
    break;

#define CASE(x) case x:                                  \
                  exit_msg(CRASH_0 + plid,               \
                  "'%s' got signal: %d (%s)\n",          \
                  player[plid].name, si->si_status, #x); \
                  break

    CASE(SIGHUP);  CASE(SIGINT);  CASE(SIGILL);  CASE(SIGABRT); CASE(SIGSEGV);
    CASE(SIGFPE);  CASE(SIGPIPE); CASE(SIGKILL); CASE(SIGALRM); CASE(SIGUSR1);
    CASE(SIGUSR2); CASE(SIGBUS);  CASE(SIGCHLD); CASE(SIGTERM); CASE(SIGXCPU);
#undef CASE

  default:
    write(STDERR_FILENO, "Unexpected signal from child!\n", 30);
    break;
  }
}

static void
setup_signal_handlers()
{
  struct sigaction sact;

  if (sigemptyset(&sact.sa_mask)) { abort(); }
  sact.sa_flags = 0;

  /* Ignore SIGPIPE. Accessing dead pipes now returns EPIPE. */
  sact.sa_handler = SIG_IGN;
  if (sigaction(SIGPIPE, &sact, NULL) != 0) { abort(); }

  /* Handle SIGALRM. */
  sact.sa_sigaction = alarm_handler;
  sact.sa_flags = SA_SIGINFO | SA_RESTART;
  if (sigaction(SIGALRM, &sact, NULL) != 0) { abort(); }

  /* Handle SIGCHLD (except for stop or resume events). */
  sact.sa_sigaction = child_handler;
  sact.sa_flags = SA_SIGINFO | SA_RESTART | SA_NOCLDSTOP;
  if (sigaction(SIGCHLD, &sact, NULL) != 0) { abort(); }
}

static bool
fork_player(char const * const executable, struct player * const cur_player)
{
  assert(!cur_player->pid && "Player already started");

  enum { READ = 0, WRITE = 1 };

  int pipe_out[2], // Parent <- Child
      pipe_in[2];  // Parent -> Child

  if ( pipe(pipe_out) || pipe(pipe_in) )  { return false; }
  if ( (cur_player->pid = fork()) == -1 ) { abort(); }
  strncpy(cur_player->name, executable, sizeof(cur_player->name));

  /* Child */
  if (cur_player->pid == 0) {
    /* Close useless ends of pipes */
    close(pipe_out[READ]);
    close(pipe_in [WRITE]);

    /* Associate useful ones with correct fds */
    dup2(pipe_in [READ],  CHILD_IN_FD);
    dup2(pipe_out[WRITE], CHILD_OUT_FD);

    setrlimit(RLIMIT_AS, &mem_limit);
    execl(executable, executable, NULL);

    _exit(EXEC_FAILED);
  }
  /* Parent */
  else {
    /* Stop the cur_player until it is his turn */
    if (kill(cur_player->pid, SIGSTOP) < 0) { return false; }

    /* Close useless ends of pipes */
    close(pipe_out[WRITE]);
    close(pipe_in [READ]);

    /* Remember the useful ones */
    cur_player->pipe_from_player = pipe_out[READ];
    cur_player->pipe_to_player   = pipe_in[WRITE];
  }

  return true;
}

static void
throw_dice(unsigned short int * const dice)
{
  assert(dice);

  static bool init = false;

  /* This is *not* thread-safe! */
  if (!init) {
    struct timeval tv; // not initialized on purpose (in case 'gtod' fails)

    gettimeofday(&tv, NULL);
    srandom(getpid() + tv.tv_sec + tv.tv_usec);
    init = true;
  }

  dice[0] = (random() % 6) + 1;
  dice[1] = (random() % 6) + 1;
}

static bool
player_move(struct player           * const cur_player,
            struct game_state const * const state,
            multi_move              * const mmove)
{
  assert(!current_player && "Current player (still) set");

  bool succ;

  cur_player->hard_timeout = false;
  cur_player->soft_timeout = false;

  /* Arm timer with softlimit */
  current_player = cur_player;
  arm_timer(cpu_limit);

  /* Write state to pipe *before* we wake the player to avoid races */
  succ = serialize_state(cur_player->pipe_to_player, state);
  if (!succ || cur_player->hard_timeout) { return false; }

  /* Wake 'cur_player' */
  if (!(debug || valgrind_tool) && kill(cur_player->pid, SIGCONT) < 0)
    return false;

  /* Get the player's move */
  succ = deserialize_moves(cur_player->pipe_from_player, mmove);
  if (!succ || cur_player->hard_timeout) { return false; }

  /* Stop cur_player and disarm timer. */
  if (!(debug || valgrind_tool) && kill(cur_player->pid, SIGSTOP) < 0)
    return false;

  arm_timer(ETERNITY);
  current_player = NULL;

  return true;
}

static void
print_usage()
{
  fprintf(stderr, "Usage: mcp [-t soft-player-time] [-m soft-player-mem]\n"
                  "           [-T hard-player-time] [-M hard-player-mem]\n"
                  //~ "           [-d] [-V valgrind-tool] [-p 1/-1]\n"
                  "           player1 player-1\n\n"
                  "  player-time   - CPU time per turn in seconds\n"
                  "  player-mem    - Memory limit per player in megabytes\n");
}


int
main(int argc, char **argv)
{
  fprintf(stderr, "Master Control Program\n");

  int opt;
  while ((opt = getopt(argc, argv, "t:T:m:M:dV:p:")) != -1) {
    switch (opt) {
    case 't': cpu_limit       = strtoul(optarg, NULL, 0); break;
    case 'T': cpu_limit_grace = strtoul(optarg, NULL, 0); break;
    case 'm': mem_limit.rlim_cur = strtoul(optarg, NULL, 0) << 20; break;
    case 'M': mem_limit.rlim_max = strtoul(optarg, NULL, 0) << 20; break;
    //~ case 'd': debug = true; break;
    //~ case 'V': valgrind_tool = strdup(optarg); break;
    //~ case 'p': debug_player = strtoul(optarg, NULL, 0); break;
    case ':': // fall
    case '?': goto usage;
    }
  }
  if ((cpu_limit != ETERNITY) && (cpu_limit_grace == ETERNITY))
    cpu_limit_grace = cpu_limit + DEFAULT_GRACE_TIME;

  if (optind + 2 > argc) {
usage:
    print_usage();
    exit(1);
  }

  setup_signal_handlers();

  player[0].player = PLAYER_BELOW;
  player[1].player = PLAYER_ABOVE;

  if (!fork_player(argv[optind],     &player[0]) ||
      !fork_player(argv[optind + 1], &player[1]))
    exit_msg(EXEC_FAILED, "Unable to fork players.\n");

  fprintf(stderr, "'%s' (P-1) vs. '%s' (P1)\n", player[0].name, player[1].name);

  if (debug) {
    char buf[32];
    fprintf(stderr, "Press ENTER when you want to start the game.\n");
    fgets(buf, sizeof(buf), stdin);
  }

  static struct game_state state;
  static struct multi_move mmove;
  static unsigned player_no;
  static unsigned plies = 0;

  initialize_state(&state);
  assert(!is_final_state(&state) && "State initialization failed");

  do {
    throw_dice(state.dice);

    /* First move */
    if (plies == 0) {
      /* Doubles not allowed, because... */
      while (state.dice[0] == state.dice[1])
        throw_dice(state.dice);

      /* ...the dice determine which player starts */
      state.player = (state.dice[0] > state.dice[1] ? PLAYER_BELOW : PLAYER_ABOVE);
    }

    player_no = (state.player == PLAYER_ABOVE ? 0 : 1);
    printf("\n== Ply %2u: P%d '%s' ==\n",
           ++plies, state.player, player[player_no].name);

    if (debug) { print_state(&state); }

    if (!player_move(&player[player_no], &state, &mmove))
      exit_msg(CRASH_0 + player_no,
               "No move from player %d.\n", state.player);

    printf("P%d moves.\n", state.player);

    if (!apply_multi_move(&state, &mmove))
      exit_msg(INVALID_MOVE_0 + player_no,
               "Invalid move from player %d.\n", state.player);

    state.player *= -1; // switch active player
  } while (!is_final_state(&state));

  int win = winner(&state);
  int ret;
  if (win == 0) {
    fprintf(stderr, "Game ends in a DRAW.\n");
    ret = DRAW;
  } else {
    fprintf(stderr, "Player %d '%s' wins%s.\n", sign(win),
     player[(win < 0 ? 0 : 1)].name,
     (abs(win) == 3 ? " a backgammon" : (abs(win) == 2 ? " a gammon" : "")));
    ret = (win < 0 ? WIN_ABOVE : WIN_BELOW);
  }
  fprintf(stderr, "\n\nEnd of Line.\n");

  kill_players();

  return ret;
}

/* EOF */

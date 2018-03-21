#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

#include "state.h"

#define BUF_SIZE 512

namespace {

enum {
  DRAWN_POS = 5, // number of checker positions drawn for each point
  PLAYER_ABOVE_SYM = 'x', // symbol for PLAYER_ABOVE
  PLAYER_BELOW_SYM = 'o', // symbol for PLAYER_BELOW
};


// status for enforce strict alternation between reading and sending
enum class Action {
  INIT,
  READ,
  SEND
};

enum class Type {
  INIT,
  MCP,
  PLAYER
};

Action last_action = Action::INIT;
Type i_am = Type::INIT;


char
mark(signed short int const num_checkers, size_t const pos)
{
  assert(num_checkers >= -NUM_CHECKERS && num_checkers <= NUM_CHECKERS);
  assert(pos <= DRAWN_POS + 1);

  char sym, ret;
  unsigned char abs_val;
  const char map[] = {' ', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A'};

  /* Determine player */
  sym = (num_checkers < 0 ? PLAYER_ABOVE_SYM : PLAYER_BELOW_SYM);
  abs_val = abs(num_checkers);

  /* Draw player symbol or number of remaining checkers */
  if (pos <= DRAWN_POS) {
    ret = (abs_val >= pos ? sym : ' ');
  }
  else {
    char diff = abs_val - DRAWN_POS;
    ret = map[ (diff < 0 ? 0 : diff) ];
  }

  return ret;
}

} // end anon namespace


bool
serialize_state(int const fd, game_state const * const state)
{
  assert(state);
  assert((i_am == Type::INIT || i_am == Type::MCP) && "Player trying to serialize field");
  assert((last_action == Action::INIT || last_action == Action::READ) && "Send and Receive should alternate strictly");

  i_am = Type::MCP; last_action = Action::SEND; // enforce send/read alternation

  char buf[BUF_SIZE];
  int bytes;

  bytes = snprintf(buf, sizeof(buf), "%hhd %hu-%hu: (%hd %hd) %hd |",
                   state->player, state->dice[0], state->dice[1],
                   get_higher_bar(state->board[POS_BAR]),
                   get_lower_bar(state->board[POS_BAR]),
                   state->board[POS_OFF]);

  for (size_t cc = 1; cc <= POINTS; cc++)
    bytes += snprintf(buf + bytes, sizeof(buf) - bytes,
                      " %hd", state->board[cc]);

  fprintf(stderr, "> %s\n", buf);
  return (write(fd, buf, bytes + 1) == (bytes + 1)); // mind terminating 0-byte
}

bool
deserialize_state(int const fd, game_state * const state)
{
  assert(state);
  assert((i_am == Type::INIT || i_am == Type::PLAYER) && "MCP trying to deserialize field");
  assert((last_action == Action::INIT || last_action == Action::SEND) && "Send and Receive should alternate strictly");

  i_am = Type::PLAYER; last_action = Action::READ; // enforce send/read alternation


  char buf[BUF_SIZE];
  signed short int higher_bar = 0, lower_bar = 0;
  signed short int * const b = state->board;
  int chars = read(fd, buf, sizeof(buf) - 1);

  if (chars <= 0) { return false; }
  buf[chars] = '\0';

  int res = sscanf(buf, "%hhd %hu-%hu: " // player + dice
                        "(%hd %hd) %hd | " // bar (P-1, P1) + off
                        "%hd %hd %hd %hd %hd %hd %hd %hd %hd %hd %hd %hd "
                        "%hd %hd %hd %hd %hd %hd %hd %hd %hd %hd %hd %hd",
                        &state->player, &state->dice[0], &state->dice[1],
                        &higher_bar, &lower_bar, &b[POS_OFF],
                        &b[1],  &b[2],  &b[3],  &b[4],  &b[5],  &b[6],  &b[7],
                        &b[8],  &b[9],  &b[10], &b[11], &b[12], &b[13], &b[14],
                        &b[15], &b[16], &b[17], &b[18], &b[19], &b[20], &b[21],
                        &b[22], &b[23], &b[24]);

  b[POS_BAR] = 0;
  set_higher_bar(&b[POS_BAR], higher_bar);
  set_lower_bar(&b[POS_BAR], lower_bar);

  return (30 == res);
}

bool
serialize_moves(int const fd, multi_move const * const mmove)
{
  assert(mmove && mmove->num_moves <= MAX_MOVES);
  assert(i_am == Type::PLAYER && "Non-Player (MCP or player before reading field) trying to serialize moves");
  assert(last_action == Action::READ && "Send and Receive should alternate strictly");

  last_action = Action::SEND; // enforce send/read alternation


  char buf[BUF_SIZE];
  int bytes;

  bytes = snprintf(buf, sizeof(buf), "%hhu |", mmove->num_moves);

  for (size_t cc = 0; cc < mmove->num_moves; ++cc)
    bytes += snprintf(buf + bytes, sizeof(buf) - bytes, " (%hu,%hu)",
                      mmove->moves[cc].point_from,
                      mmove->moves[cc].roll);

  return (write(fd, buf, bytes + 1) == (bytes + 1)); // mind terminating 0-byte
}

bool
deserialize_moves(int const fd, multi_move * const mmove)
{
  assert(mmove);
  assert(i_am == Type::MCP && "Non-MCP (Player or MCP before serializing field) trying to deserialize moves");
  assert(last_action == Action::SEND && "Send and Receive should alternate strictly");

  last_action = Action::READ; // enforce send/read alternation


  char buf[BUF_SIZE];
  int chars = read(fd, buf, sizeof(buf) - 1);

  if (chars < 0) { return false; }
  buf[chars] = 0;

  int res = sscanf(buf, "%hhu | (%hu,%hu) (%hu,%hu) (%hu,%hu) (%hu,%hu)",
                   &mmove->num_moves,
                   &mmove->moves[0].point_from, &mmove->moves[0].roll,
                   &mmove->moves[1].point_from, &mmove->moves[1].roll,
                   &mmove->moves[2].point_from, &mmove->moves[2].roll,
                   &mmove->moves[3].point_from, &mmove->moves[3].roll);

  fprintf(stderr, "< %s\n", buf);
  return ( (res >= 1) && (res == 1 + 2 * mmove->num_moves) );
}

void
initialize_multi_move(multi_move * const mmove)
{
  assert(mmove);
  mmove->num_moves = 0;
}

void
initialize_state(game_state * const state)
{
  assert(state);
  assert(sizeof(state->board)/sizeof(state->board[0]) == POS_OFF + 1);

  state->player  = 1;
  state->dice[0] = state->dice[1] = 0;

  /* Initialize the board */
  for (size_t cc = POS_BAR; cc <= POS_OFF; cc++)
    state->board[cc] = 0;

  /* PLAYER_ABOVE's checkers */
  state->board[1 ] = -2;
  state->board[17] = -3;
  state->board[12] = state->board[19] = -5;

  /* PLAYER_BELOW's checkers */
  state->board[POINTS + 1 - 1 ] = 2;
  state->board[POINTS + 1 - 17] = 3;
  state->board[POINTS + 1 - 12] = state->board[POINTS + 1 - 19] = 5;
}


void
print_state(game_state const * const state)
{
  assert(state);
  assert(state->player  == PLAYER_ABOVE || state->player  == PLAYER_BELOW);
  assert(state->dice[0] <= 6            && state->dice[1] <= 6);

  signed short int const * const b = state->board;
  signed short int const higher_bar = - get_higher_bar(b[POS_BAR]), // sign!
                         lower_bar  = get_lower_bar(b[POS_BAR]);

  printf("Next Player: %s (%c)\n"
         "Dice: %hu %hu\n"
         "\n"
         "+-1--1--1--1--1--1-------1--2--2--2--2--2-+\n"
         "+-3--4--5--6--7--8-------9--0--1--2--3--4-+\n",
         (state->player == PLAYER_ABOVE ? "Above - CW"     : "Below - CCW"),
         (state->player == PLAYER_ABOVE ? PLAYER_ABOVE_SYM : PLAYER_BELOW_SYM),
         state->dice[0], state->dice[1]);

  for (size_t pos=1; pos <= DRAWN_POS + 1; ++pos)
    printf("| %c  %c  %c  %c  %c  %c | %c | %c  %c  %c  %c  %c  %c |\n",
           mark(b[13], pos), mark(b[14], pos), mark(b[15], pos),
           mark(b[16], pos), mark(b[17], pos), mark(b[18], pos),
           mark(higher_bar, DRAWN_POS + 2 - pos), // draw upwards on the bar
           mark(b[19], pos), mark(b[20], pos), mark(b[21], pos),
           mark(b[22], pos), mark(b[23], pos), mark(b[24], pos));

  printf("|                  |   |                  |\n"
         "|~~~~~~~~~~~~~~~~~~|BAR|~~~~~~~~~~~~~~~~~~|\n"
         "|                  |   |                  |\n");

  for (size_t pos=DRAWN_POS + 1; pos >= 1; --pos)
    printf("| %c  %c  %c  %c  %c  %c | %c | %c  %c  %c  %c  %c  %c |\n",
           mark(b[12], pos), mark(b[11], pos), mark(b[10], pos),
           mark(b[9], pos),  mark(b[8], pos),  mark(b[7], pos),
           mark(lower_bar, DRAWN_POS + 2 - pos), // draw downwards on the bar
           mark(b[6], pos),  mark(b[5], pos),  mark(b[4], pos),
           mark(b[3], pos),  mark(b[2], pos),  mark(b[1], pos));

  printf("+-1--1--1---------------------------------+\n"
         "+-2--1--0--9--8--7-------6--5--4--3--2--1-+\n\n");
}

/* EOF */

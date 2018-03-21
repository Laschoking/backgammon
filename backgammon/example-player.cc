#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>

#include <mcp.h>
#include <state.h>
#include <state-internal.h> /* UNAVAILABLE for your player */


static bool
read_move_from_user(game_move *move)
{
  assert(move);

  char letter, input[128];

  /* Ask user to enter a move */
  printf("\nSelect which checker to move and which die roll to use (e.g. "
         "'13 4' = advance checker on point 13 by 4)\n"
          "Special values: '%d' = bar, 'q' = finish turn\n"
          "$ ", POS_BAR);

  while (1) {
    /* Read user input */
    if (fgets(input, sizeof(input), stdin) == NULL) { abort(); }

    /* Check for game move */
    if (sscanf(input, "%hu %hu", &move->point_from, &move->roll) == 2) {
      return true;
    }

    /* Check for 'move complete' marker */
    if (sscanf(input, "%c", &letter) == 1 && letter == 'q') {
      return false;
    }

    printf("Unknown input. Please retry\n$ ");
  }
}


int
main(int, char **) // ignore command line parameters
{
  game_state state, int_state;
  multi_move mmove;
  game_move int_move;

  while (1) {
    initialize_multi_move(&mmove);

    /* Retrieve current game state */
    if (! deserialize_state(CHILD_IN_FD, &state) ) { abort(); }

    /* Get moves from the user */
    size_t const max_moves =
      (state.dice[0] != state.dice[1] ? NUM_DICE : 2 * NUM_DICE);

    while (mmove.num_moves < max_moves) {
      /* Create a convenient pointer to the current move */
      game_move * const cur_move = &mmove.moves[mmove.num_moves];

      /* Show the current board */
      print_state(&state);

      /* Read move and leave loop if user ended the turn */
      if (! read_move_from_user(cur_move)) { break; }

      /* Check whether the move is valid and retry if it is not */
      to_internal(cur_move, state.player, &int_move);
      to_internal(&state, &int_state);

      if (! check_move(&int_state, &int_move)) {
        fputs("Invalid move! Retry...\n\n", stderr);
        continue;
      }

      /* Make our local game state represent the move */
      apply_move(&int_state, &int_move);
      from_internal(&int_state, &state);

      /* Use next move for next loop iteration */
      mmove.num_moves++;
    }

    /* Send multi move (i.e. all individual moves) back to the MCP */
    if (! serialize_moves(CHILD_OUT_FD, &mmove) ) { abort(); }
  }

  /* Here be dragons! */
  abort();
}

/* EOF */

#pragma once

#include <assert.h>
#include <stdbool.h>



/*****************************************************************************
 ** Usefull constants                                                       **
 *****************************************************************************/
enum {
  POINTS       = 24,           // 24 actual points on the field
  HOME_POINTS  = 6,            // number of points making up the home board
  NUM_DICE     = 2,            // we play with a pair of dice
  NUM_CHECKERS = 15,           // initial number of checkers for each player
  MAX_MOVES    = 2 * NUM_DICE, // doubles: each roll is used twice

  /* Players */
  PLAYER_ABOVE = -1,
  PLAYER_BELOW = 1,

  /* Special positions */
  POS_BAR = 0,         // the bar
  POS_OFF = POINTS + 1 // off-board
};



/*****************************************************************************
 ** Data stuctures to hold game state and moves                             **
 *****************************************************************************/

/** Current state of the game: active player, dice, board */
typedef struct game_state {
  /*
   * Current player: 1 -> player "sitting" below the board
   *                -1 -> player "sitting" above the board
   */
  signed char player;

  /* Current dice roll */
  unsigned short int dice[NUM_DICE];

  /*
   * The layout of this array is:
   *
   * Off-board: 25
   * PLAYER_ABOVE's side: 13 14 15 16 17 18 19 20 21 22 23 24
   * PLAYER_BELOW's side: 12 11 10  9  8  7  6  5  4  3  2  1
   * Bar: 0
   *
   * A positive integer represents the number of PLAYER_BELOW's
   * checkers on a particular point; the absolute value of negative
   * numbers stands for the number of PLAYER_ABOVE's checkers.
   *
   * Note, that there can never be points with checkers from both
   * players at the same time! However, this is different for the
   * two pseudo positions POS_BAR and POS_OFF.
   *
   * POS_BAR stands for the bar. As both players may have checkers
   * on the bar at some point, the coding is a little bit more complex
   * here: PLAYER_BELOW's checkers are stored in the lower two decimal
   * places, whereas the fourth and third digit are used for PLAYER_ABOVE.
   * So the (decimal!) number '103' stands for a situation where
   * PLAYER_BELOW has 3 checkers on the bar and PLAYER_ABOVE has 1 checker
   * on the bar. You may want to use the accessor functions defined below.
   *
   * Usually there is no need to consider POS_OFF at all. It represents
   * all checkers that have already been beared off. The value stored in
   * POS_OFF is simply the sum of all checkers that left the board, i.e.
   * if PLAYER_BELOW beared off one checker and PLAYER_ABOVE beared off
   * three checkers POS_OFF will hold a value of 1 + (-3) = -2
   */
  signed short int board[POINTS + 2]; // bar + actual points + off
} game_state;


/** Get number of checkers PLAYER_BELOW has on the bar */
inline unsigned short int
get_lower_bar(signed short int const bar_val)
{
  return bar_val % 100;
}

/** Get number of checkers PLAYER_ABOVE has on the bar */
inline unsigned short int
get_higher_bar(signed short int const bar_val)
{
  return bar_val / 100;
}

/** Set number of checkers PLAYER_BELOW has on the bar */
inline void
set_lower_bar(signed short int * const bar_val, unsigned short int low_val)
{
  assert(bar_val);
  assert(low_val <= NUM_CHECKERS);
  *bar_val = get_higher_bar(*bar_val) * 100 + low_val;
  assert(*bar_val >= 0 && *bar_val <= NUM_CHECKERS * 100 + NUM_CHECKERS);
}

/** Set number of checkers PLAYER_ABOVE has on the bar */
inline void
set_higher_bar(signed short int * const bar_val, unsigned short int high_val)
{
  assert(bar_val);
  assert(high_val <= NUM_CHECKERS);
  *bar_val = high_val * 100 + get_lower_bar(*bar_val);
  assert(*bar_val >= 0 && *bar_val <= NUM_CHECKERS * 100 + NUM_CHECKERS);
}


/**
 * Move of a single checker
 *
 * Note that 'roll' *must* always hold one of the two die rolls given
 * in the current 'game_state'. When bearing off this may lead to an end
 * position ('point_from' + 'roll') that is beyond POS_OFF.
 */
typedef struct game_move {
  unsigned short point_from; // departure point of the checker
  unsigned short roll;       // die roll to use for the move
} game_move;


/**
 * Full game move comprised of up to 4 basic moves
 * (see also 'initialize_multi_move')
 */
typedef struct multi_move {
  unsigned char num_moves;    // number of basic moves ('0' to skip turn)
  game_move moves[MAX_MOVES]; // basic moves
} multi_move;



/*****************************************************************************
 ** Conversion between data structures and strings read/written by MCP      **
 *****************************************************************************/

/**
 * Serialize game state 'state' into a human-readable string and write it
 *  to file descriptor 'fd'
 *
 * The MCP uses these strings to send the current game state to the
 * player and outputs it before
 */
bool serialize_state(int const fd, game_state const * const state);

/**
 * Read game state from file descriptor 'fd', parse it and fill in 'state'
 *
 * Note: Expects a string that was written by 'serialize_state'.
 */
bool deserialize_state(int const fd, game_state * const state);

bool serialize_moves  (int const fd, multi_move const * const mmove);
bool deserialize_moves(int const fd, multi_move       * const mmove);


/**
 * Establish the initial board in 'state'
 */
void initialize_state(game_state * const state);

/**
 * Establish an empty/null move (i.e. a move that skips the turn) in 'mmove'
 */
void initialize_multi_move(multi_move * const mmove);

/**
 * Print the game state in 'state' to the console (STDOUT)
 */
void print_state(game_state const * const state);



/*****************************************************************************
 ** Tiny helper functions                                                   **
 *****************************************************************************/

inline int sign(int const x)
{
  /* https://stackoverflow.com/a/1903975 */
  return (x > 0) - (x < 0);
}

/* EOF */

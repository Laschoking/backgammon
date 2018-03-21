#include <state.h>

/**
 * Convert between general board representation as defined in 'state.h'
 * and the internal representation.
 *
 * On the internal board the active player always moves his checkers from
 * lower numbers to higher ones, i.e. 1->24 with the home board being
 * 19-24. The player's checkers are denoted by positive values.
 */
void to_internal(unsigned char    const         pos,
                 signed short int const         val,
                 signed char      const         player,
                 unsigned char          * const int_pos,
                 signed short int       * const int_val);

void from_internal(unsigned char    const         int_pos,
                   signed short int const         int_val,
                   signed char      const         player,
                   unsigned char          * const pos,
                   signed short int       * const val);

void to_internal(game_state const * const state,
                 game_state       * const int_state);

void from_internal(game_state const * const int_state,
                   game_state       * const state);

void to_internal(game_move const * const move,
                 signed char       const player,
                 game_move       * const int_move);

void from_internal(game_move const * const int_move,
                   signed char       const player,
                   game_move       * const move);

void to_internal(multi_move const * const mmove,
                 signed char        const player,
                 multi_move       * const int_mmove);

void from_internal(multi_move const * const int_mmove,
                   signed char        const player,
                   multi_move       * const mmove);

/**
 * Returns true, if this is a final (winning) game state
 *
 * Note: Uses general state
 */
bool is_final_state(game_state const * const state);

/**
 * Returns the winning player (sign) und type of victory (absolute value)
 *
 *  0 ... stalemate
 * -1 ... PLAYER_ABOVE wins                1 ... PLAYER_BELOW wins
 * -2 ... PLAYER_ABOVE wins a gammon       2 ... PLAYER_BELOW wins a gammon
 * -3 ... PLAYER_ABOVE wins a backgammon   3 ... PLAYER_BELOW wins a backgammon
 *
 * Note: To be used ONLY if 'is_final_state' is true!
 */
int winner(game_state const * const state);


/**
 * Checks a move to be performed in the given state. Returns false, if the
 * move was invalid
 *
 * Note: Uses internal state representation!
 */
bool check_move(game_state const * const int_state,
 game_move const * const int_move, bool output = true);

/**
 * Applies a move to the given state.
 *
 * Note: Uses internal state representation!
 */
void apply_move(game_state * int_state, game_move const * const int_move,
 bool output = true);

/**
 * Tries to apply a full move (i.e. 'multi_move') to the given state.
 * Returns false, if the move is invalid. The state is not modified in
 * this case.
 *
 * Note: Even though the individual moves comprising a "multi move"
 *       may be legal, the multi move itself can be invalid!
 */
bool apply_multi_move(game_state * state, multi_move const * const mmove);

/* EOF */

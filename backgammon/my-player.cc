#include <stdio.h>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include <mcp.h>
#include <state.h>
#include <iostream>
#include <vector>

/* You may want to use code from 'example-player.cc' for your own
 * implementation. Feel free to do so, but keep in mind that anything
 * declared in 'state-internal.h' is off limits - basically omit the
 * inner 'while' loop of the example player's 'main' function.
 *
 * It is recommended to use the game state ('game_state') and move
 * ('multimove') representations provided in 'state.h'. Please have
 * a look at its comments for a better understanding.
 *
 * In case you want to parse the string the MCP sends yourself here
 * is the meaning of the different parts of said string:
 *
 * 1 5-5: (0 1) 0 | -2 0 0 0 0 5 0 3 0 0 1 -5 4 0 0 0 -2 0 -4 -1 -1 0 0 1
 * ^ ^ ^   ^ ^  ^   < checkers on all the positions of the board (1-24) >
 * | \ /   \ /  |            PLAYER_BELOW - positive values
 * |  V     V   |            PLAYER_ABOVE - negative values
 * |  |     |   |
 * |  |     |   balance of checkers already beared off (also see 'state.h')
 * |  |     |
 * |  |     number of checkers on the bar for PLAYER_ABOVE and PLAYER_BELOW
 * |  dice
 * active player (1=PLAYER_BELOW, -1=PLAYER_ABOVE)
 *
 *
 * The MCP expects you to reply with the move(s) you want to make:
 *
 * 4 | (0,5) (20,5) (8,5) (13,5)
 * ^    ^ ^  ^    ^ ^   ^ ^    ^
 * |    | |  \    / \   / \    /
 * |    | |   \  /   \ /   \  /
 * |    | |    \/     V     \/
 * |    | |  <2nd>  <3rd>  <4th> <-- subsequent moves (ordered)
 * |    | |
 * |    | die roll to use for 1st move
 * |    position from which to move a checker in 1st move
 * |
 * total number of moves to make in this round
 *
 * If you do not want to make any move (i.e. skip your turn), you send '0 |'.
 */
int
main(int, char**) // ignore command line parameters
{
    game_state state, int_state;
    multi_move mmove;
    game_move int_move;

    initialize_multi_move(&mmove);

    /* Retrieve current game state*/
    if (! deserialize_state(CHILD_IN_FD, &state) ) { abort(); }

    /* Show the current board */
    print_state(&state);
    std::cout << " dice 1: "<< state.dice[0] << '\n';
    std::cout << " dice 2: "<< state.dice[1] << '\n';
    for (int i = 0; i < 26; i++){
      std::cout << " " << state.board[i] ;
    }
    std::vector<int> blockedPoints;
    std::vector<int> hitPoints; //Points where one enemy checker may be hit

    for (int p  = 1; p < 25; p++){
      if (state.board[p] < (-1)); blockedPoints.push_back(p);
      if (state.board[p] == (-1)); hitPoints.push_back(p);
    }


    std::cout << '\n' << "elemente in blockedPoints " << blockedPoints.size() << '\n';
    std::cout <<  "elemente in hitPoints " << hitPoints.size() << '\n';
    /*int *i;
    i = blockedPoints.begin;
    while (i != blockedPoints.end){
      std::cout << "blockedPoints"<< blockedPoints[i] << '\n';
      i++;
    }*/
    /* Here be dragons! */


  return 0;
}


















/* EOF */

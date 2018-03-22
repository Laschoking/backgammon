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
#include <cmath>
 /*
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

 /*Globale Variablen,Listen etc
 //////////////////////////////////////////*/
 std::vector<int> blockedPoints;
 std::vector<multi_move> allMoves;
 int checkers[15];
 game_state state, int_state;
 multi_move mmove;
 game_move int_move;

 /*/////////////////////////////////////////*/

/*befüllt "checkers" und "blockedPoints" */
void init_checkers_blockedPoints(){
  int iteratorCheckers;
  iteratorCheckers = 0;
  for (int p  = 0; p < 25; p++){
    if (state.board[p] > (1)) blockedPoints.push_back(p);
    if (state.board[p] < 0){
      for(int i = 0; i < abs (state.board[p]);i++){
        checkers[iteratorCheckers] = p;
        iteratorCheckers ++;
      }
    }
  }
}

void double_fill_move(int array_position, int move_number, int dice,){
  mmove.moves[move_number].point_from = checkers[array_position];
  mmove.moves[move_number].roll = state.dice[dice];
   //"neue" Position berechnen für folgenden Spielzug
  if ( checkers[array_position] == 0) checkers[array_position] = 25 - state.dice[dice];
  else checkers[array_position] -= state.dice[dice];
  }

void reset_checkers(int array_position){
  checkers[array_position] += state.dice[0];
  if (checkers[array_position] ==  25 ) checkers[array_position] = 0;
}

void init_allMoves(){
  int i,d,k, counter;
  if ( state.dice[0] != state.dice[1] ){
    mmove.num_moves = 2;

    for (d = 0; d < 2; d++){ //für beide würfelkombos
      for (i = 0; i < 15; i++){
        counter = 0;
        mmove.moves[counter].point_from = checkers[i];
        mmove.moves[counter].roll = state.dice[(0 + d) % 2];
        if (checkers[i] == 0) checkers[i] = 25 - state.dice[(0 + d) % 2];

        else checkers[i] -= state.dice[0]; //set new virtual Position of moved checker
        for (k = 0; k < 15; k++){https://duckduckgo.com/
          counter = 1;
          mmove.moves[counter].point_from = checkers[k];
          mmove.moves[counter].roll = state.dice[(1 + d) % 2];

          allMoves.push_back(mmove);
        }
      }
    }
  }
  /*Pasch */
  else{
    mmove.num_moves = 4;

      for (i = 0; i < 15;){
        double_fill_move(i, 0, 0);

        for (k = 0; k < 15; k++){
          double_fill_move(k, 1, 0);

          for (int j = 0; j < 15; j++){
            double_fill_move(j, 2, 0);

            for (int r = 0; r < 15; r++){
              double_fill_move(r, 3 ,0);
              reset_checkers(r);


            }
            reset_checkers(j);
          }
          reset_checkers(k);
        }
        reset_checkers(i);
      }
    }
  }

void check_valid_Moves(){}

//standart player -1
int
main(int, char**) // ignore command line parameters
{

    initialize_multi_move(&mmove);

    /* Retrieve current game state*/
    if (! deserialize_state(CHILD_IN_FD, &state) ) { abort(); }

    /* Show the current board */
    print_state(&state);
    for (int iterator = 0; iterator < 26; iterator++){
      std::cout << " " << state.board[iterator] ;
    }

    init_checkers_blockedPoints();
    init_allMoves();
    std::cout <<"\n allMoves size" << allMoves.size() << '\n';
        for (int i = 0; i < 15; i++)std::cout << "own checker position"<< checkers[i] << '\n';
    std::cout << '\n' << "elemente in blockedPoints " << blockedPoints.size() << '\n';


  return 0;
}


















/* EOF */

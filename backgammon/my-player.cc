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
#include <algorithm>

 /*Globale Variablen,Listen etc.
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
      for(int i = 0; i < abs (state.board[p]); i++){
        checkers[iteratorCheckers] = p;
        iteratorCheckers ++;
      }
    }
  }
}

void fill_move(int array_position, int move_number, int dice){
  mmove.moves[move_number].point_from = checkers[array_position];
  mmove.moves[move_number].roll = state.dice[dice];
   //"neue" Position berechnen für folgenden Spielzug
  if ( checkers[array_position] == 0) checkers[array_position] = 25 - state.dice[dice];
  else checkers[array_position] += state.dice[dice];
  }


void reset_checkers(int array_position, int dice){
  checkers[array_position] -= state.dice[dice];
  //if (checkers[array_position] ==  25 ) checkers[array_position] = 0;
}

void init_allMoves(){
  int i,d,k;
  if ( state.dice[0] != state.dice[1] ){

    for (d = 0; d < 2; d++){ //für beide würfelkombos
      for (i = 0; i < 15; i++){
        mmove.num_moves = 1;
        fill_move(i, 0 , 0 + d);
        allMoves.push_back(mmove);

        for (k = 0; k < 15; k++){
          mmove.num_moves = 2;


          fill_move(k, 1, (1 + d) % 2);
          allMoves.push_back(mmove);
          reset_checkers(k, (1 + d) % 2);
        }
        reset_checkers(i, 0 + d);
      }
    }
  }
  /*Pasch */
  else{

      for (i = 0; i < 15; i++){
        mmove.num_moves = 1;
        fill_move(i, 0, 0);
        allMoves.push_back(mmove);


        for (k = 0; k < 15; k++){
          mmove.num_moves = 2;
          fill_move(k, 1, 0);
          allMoves.push_back(mmove);


          for (int j = 0; j < 15; j++){
            mmove.num_moves = 3;
            fill_move(j, 2, 0);
            allMoves.push_back(mmove);


            for (int r = 0; r < 15; r++){
              mmove.num_moves = 4;
              fill_move(r, 3 ,0);
              allMoves.push_back(mmove);
              reset_checkers(r,0);

            }
            reset_checkers(j,0);
          }
          reset_checkers(k,0);
        }
        reset_checkers(i,0);
      }
    }
  }

void sort_out_blocked_Moves(){
  for( int i = 0; i < allMoves.size(); i++){
    for(int k = 0; k < allMoves[i].num_moves ; k++){
      /*prüft ob zünftige Position blockiert ist */
      if (find(blockedPoints.begin(), blockedPoints.end(),
      (allMoves[i].moves[k].point_from + allMoves[i].moves[k].roll))
      != blockedPoints.end()){
        allMoves.erase(allMoves.begin() + i);
      }
    }
  }
}

void sort_out_shorter_Moves(){
  int current_moves, max_moves, max_iterator;
  max_moves = allMoves[0].num_moves;
  max_iterator = 0;
  for (int i = 1; i < allMoves.size(); i++){
    current_moves = allMoves[i].num_moves;
    if (current_moves > max_moves){
      allMoves.erase(allMoves.begin() + max_iterator);
      max_moves = current_moves;
      max_iterator = i;
    }
    else allMoves.erase(allMoves.begin() + i);
  }
}

//standart player -1
int
main(int, char**) // ignore command line parameters
{


    /* Retrieve current game state*/
    if (! deserialize_state(CHILD_IN_FD, &state) ) { abort(); }

    /* Show the current board */
    print_state(&state);

    init_checkers_blockedPoints();
    std::cout << '\n' << "elemente in blockedPoints " << blockedPoints.size() << '\n';
    for(int i = 0; i < blockedPoints.size();i++) std::cout<< blockedPoints[i];
    init_allMoves();
    std::cout <<"\n allMoves size" << allMoves.size() << '\n';
    for (int i = 0; i < 15; i++)std::cout << "own checker position "<< checkers[i] << '\n';

    sort_out_blocked_Moves();
    std::cout <<"\n reduced sort_out_blocked_Moves size " << allMoves.size() << '\n';

    sort_out_shorter_Moves();
    std::cout <<"\n reduced sort_out_shorter_Moves size " << allMoves.size() << '\n';


    serialize_moves(CHILD_OUT_FD, &allMoves[0]);


  return 0;
}


















/* EOF */

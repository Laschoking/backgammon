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
 std::vector<multi_move> allMoves;
 int checkers[15];
 game_state state, int_state;
 multi_move mmove;
 game_move int_move;

 /*/////////////////////////////////////////*/

/*befüllt "checkers" */

void init_checkers(){
  int iteratorCheckers;
  iteratorCheckers = 0;
  for( int k = 0; k < (state.board[0] / 100); k++){
    checkers[iteratorCheckers] = 0;
    iteratorCheckers++;
  }
  for (int p  = 1; p < 25; p++){
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
  checkers[array_position] += state.dice[dice];
  }

/* Nach Verwendung eines Würfels muss intern eine neue Position des bewegten Steines
angelegt werden, damit Folgezug korrekt.
Hier wird Position, auf die letzte Änderung zurückgesetzt*/

void reset_checkers(int array_position, int dice){
  checkers[array_position] -= state.dice[dice];
}

/* auch ungültige Züge können vorerst in allMoves enthalten sein*/
void init_allMoves(){
  int i,d,k;
  if ( state.dice[0] != state.dice[1] ){
    /* kein Pasch */
    for (d = 0; d < 2; d++){

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


  void remove_blocked_Points(){
    std::vector<int> blockedPoints;
    bool deleted;
    /*prüft ob zünftige Position blockiert ist */
    for (int l = 1; l < 25; l++){
      if (state.board[l] > (1)) blockedPoints.push_back(l);
    }
    std::cout << "blockedPoints " << blockedPoints.size();

    for (int i = 0; i < allMoves.size(); i++){
      deleted = false;
      for (int k = 0; !deleted && k < allMoves[i].num_moves; k++){

        /* return 1 wenn zukünfitge Position in blockedPoints enthalten */
         if (find(blockedPoints.begin(), blockedPoints.end(),
         (allMoves[i].moves[k].point_from + allMoves[i].moves[k].roll))
         != blockedPoints.end()){
           allMoves.erase(allMoves.begin() + i);

           /*beim Löschen rücken übrige objekte vor, sort_out muss selbe Stelle
           mit "jetzt" neuem Objekt prüfen*/
           i--;
           deleted = true;
         }
       }
     }
  }

    /*
     soll 25- 30 blockieren, vor bear off phase .
     geht so vmtl. aber nicht, da ja nach 1. move, plötzlich alle checker
    im homeboard sein können, und zweiter Move = bear off
    if (checkers[0] < 19){
      blockedPoints.push_back(25);
      blockedPoints.push_back(26);
      blockedPoints.push_back(27);
      blockedPoints.push_back(28);
      blockedPoints.push_back(29);
      blockedPoints.push_back(30);
    }
  }
  */


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
  while(true){

    initialize_multi_move(&mmove);

    /* Retrieve current game state*/
    if (! deserialize_state(CHILD_IN_FD, &state) ) { abort(); }
    allMoves.clear();
    init_checkers();

    /* Show the current board */
    print_state(&state);
    std::cout << "steine auf der Bar" <<state.board[0];

    init_allMoves();
    std::cout <<"\n allMoves size" << allMoves.size() << '\n';
    for (int i = 0; i < 15; i++)std::cout << "own checker position "<< checkers[i] << '\n';

    remove_blocked_Points();
    std::cout << "\nreduced sort_out_blocked_Moves size " << allMoves.size() << '\n';

    sort_out_shorter_Moves();
    std::cout << "reduced sort_out_shorter_Moves size " << allMoves.size() << '\n';

    serialize_moves(CHILD_OUT_FD, &allMoves[0]);
  }


  return 0;
}

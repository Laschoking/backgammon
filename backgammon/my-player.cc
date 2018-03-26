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
#include <iterator>
#include <numeric>
#include <time.h>
using namespace std;
 /*Globale Variablen,Listen etc.
 //////////////////////////////////////////*/
 vector<multi_move> allMoves;
 int checkers[15];
 game_state state, int_state;
 multi_move mmove;
 game_move int_move;

 /*/////////////////////////////////////////*/

/*befüllt "checkers" */

void init_checkers(){
  int iteratorCheckers;
  iteratorCheckers = 0;
  /* alternativ auch get_higher_bar(state.board[0])*/
  for( int k = 0; k < (state.board[0] / 100); k++){
    checkers[iteratorCheckers] = 0;
    iteratorCheckers++;
  }
  for (int p  = 1; p < 25 || iteratorCheckers < 15; p++){
    if( p > 24 ){
      checkers[iteratorCheckers] = 26;
      iteratorCheckers++;
    }else if (state.board[p] < 0){
      for(int i = 0; i < abs (state.board[p]); i++){
        checkers[iteratorCheckers] = p;
        iteratorCheckers ++;
      }
    }
  }
}



void fill_move(int arrayPosition, int move_number, int dice){
  mmove.moves[move_number].point_from = checkers[arrayPosition];
  mmove.moves[move_number].roll = state.dice[dice];
   //"neue" Position berechnen für folgenden Spielzug
  checkers[arrayPosition] += state.dice[dice];
  }

/* Nach Verwendung eines Würfels muss intern eine neue Position des bewegten Steines
angelegt werden, damit Folgezug korrekt.
Hier wird Position, auf die letzte Änderung zurückgesetzt*/

void reset_checkers(int arrayPosition, int dice){
  checkers[arrayPosition] -= state.dice[dice];
}

/* auch ungültige Züge können vorerst in allMoves enthalten sein*/
void init_allMoves(){
  int i,d,k;
    if ( state.dice[0] != state.dice[1] ){
    /* kein Pasch */
    for (d = 0; d < 2; d++){

      for (i = 0; i < 15; i++){
        if ((i > 0) && (checkers[i] == checkers[(i - 1)])) continue;
        mmove.num_moves = 1;
        fill_move(i, 0 , 0 + d);
        allMoves.push_back(mmove);

        for (k = 0; k < 15; k++){
          if ((k > 0) && (checkers[k] == checkers[(k - 1)])) continue;
          mmove.num_moves = 2;
          fill_move(k, 1, (1 + d) % 2);
          allMoves.push_back(mmove);
          reset_checkers(k, (1 + d) % 2);
        }
        reset_checkers(i, 0 + d);
      }
    }
  }
  /* Pasch */
  else{

      for (i = 0; i < 15; i++){
        if ((i > 0) && checkers[i] == checkers[(i - 1)] ) continue;
        mmove.num_moves = 1;
        fill_move(i, 0, 0);
        allMoves.push_back(mmove);

        for (k = 0; k < 15; k++){
          if ((k > 0) && checkers[k] == checkers[(k - 1)] ) continue;
          mmove.num_moves = 2;
          fill_move(k, 1, 0);
          allMoves.push_back(mmove);

          for (int j = 0; j < 15; j++){
            if ((j > 0) && checkers[j] == checkers[(j - 1)] ) continue;
            mmove.num_moves = 3;
            fill_move(j, 2, 0);
            allMoves.push_back(mmove);

            for (int r = 0; r < 15; r++){
              if ((r > 0) && (checkers[r] == checkers[(r - 1)])) continue;
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


vector<int> find_blocked_Points(){
  vector<int> blockedPoints;

  /*prüft ob zukünftige Position blockiert ist */
  for (int l = 1; l < 25; l++){
    if (state.board[l] > 1) blockedPoints.push_back(l);
  }
  return blockedPoints;
}

vector<int> find_hit_Points(){
  vector<int> hitPoints;
  for (int l = 1; l < 25; l++){
    if (state.board[l] == 1) hitPoints.push_back(l);
  }
  return hitPoints;
  }


  void remove_blocked_Points(){
    vector<int> blockedPoints;
    bool deleted;
    blockedPoints = find_blocked_Points();

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

void remove_bearOff_Points(){
     int virtual_checkers[15];
     vector<int> bearOff = {25,26,27,28,29,30};
     int arrayPosition, minElement;
     bool deleted;
     for (int i = 0; i < allMoves.size(); i++){

       /* in virtual_checkers werden später die neuen Positionen anhand vorheriger moves bestimmt */
       copy(begin(checkers), end(checkers), begin(virtual_checkers));
       deleted = false;

       for (int k = 0; !deleted && k < allMoves[i].num_moves; k++){
         /* entfernen aller Spielzüge deren Startposition größer ist als 24,
         die also schon abgetragen wurden */
         if (allMoves[i].moves[k].point_from > 24){
           allMoves.erase(allMoves.begin() + i);
           i--;
           deleted = true;
           continue;
         }
         minElement = *min_element(begin(virtual_checkers), end(virtual_checkers));
         if (minElement < 19){

           /* lösche alle Züge, deren neue Position > 24 wäre */
           //cout << "\nmin < 19 ";
           if (find(bearOff.begin(), bearOff.end(),
           (allMoves[i].moves[k].point_from + allMoves[i].moves[k].roll))
           != bearOff.end()){
             allMoves.erase(allMoves.begin() + i);
             i--;
             deleted = true;
           }else{
             arrayPosition = find(begin(virtual_checkers), end(virtual_checkers)
             , allMoves[i].moves[k].point_from) - begin(virtual_checkers);
             virtual_checkers[arrayPosition] += allMoves[i].moves[k].roll;
           }
         }

         /* bearOff Phase */
         else{
           if (allMoves[i].moves[k].point_from > minElement){
             /* sperren ab 25, direkte moves zur 25 sind erlaubt */
             //cout << "\n posBlocked, ab 25 begrenztes Abtragen ";
             if ( allMoves[i].moves[k].point_from + allMoves[i].moves[k].roll > 25){
               allMoves.erase(allMoves.begin() + i);
               i--;
               deleted = true;
             }
           }else{
             /* unbegrenztes Abtragen, wenn keine gegnerische Blockierung;
             lediglich virtual_checkers updaten */
             //cout << "\n not Blocked, unbegrenztes Abtragen ";
             arrayPosition = find(begin(virtual_checkers), end(virtual_checkers)
             , allMoves[i].moves[k].point_from) - begin(virtual_checkers);
             virtual_checkers[arrayPosition] += allMoves[i].moves[k].roll;
           }
         }
       }
     }
   }






void remove_shorter_Moves(){
  int  max_iterator;
  max_iterator = 0;
  for (int i = 1; i < allMoves.size(); i++){
    if (allMoves[i].num_moves > allMoves[max_iterator].num_moves){

      for( int m = i - 1; m >= max_iterator; m--){
        allMoves.erase(allMoves.begin() + m);
        i--;

      }
        /* Position des mmove verringert sich um -1 , da ein voriges
        Objekt gelöscht wurde */
        max_iterator = i;

    }
    else if (allMoves[i].num_moves < allMoves[max_iterator].num_moves){
      allMoves.erase(allMoves.begin() + i);
      i--;
    }
  }
}

void remove_bar_priority(){
  int bar, max_roll;
  if (state.dice[0] == state.dice[1]) max_roll = 4;
  else max_roll = 2;
  bar = get_higher_bar(state.board[0]);
  for (int k = 0; (k < max_roll) && (k < bar); k++){
    for (int i = 0; i < allMoves.size(); i++){
      if (k < allMoves[i].num_moves  && allMoves[i].moves[k].point_from != 0){
        allMoves.erase(allMoves.begin() + i);
        i--;
      }
    }
  }
}

/* wenn nur ein Move gemacht werden kann,
  muss der höhere Würfel genutzt werden, wenn möglich */
void remove_lower_dice(){
  if (allMoves.size()== 0) return;

  int max_roll, max_iterator, current_roll;
  max_roll = allMoves[0].moves[0].roll;
  max_iterator = 0;
  for (int i = 0; i < allMoves.size(); i++){
    current_roll = allMoves[i].moves[0].roll;
    if (current_roll > max_roll){
      allMoves.erase(allMoves.begin() + max_iterator);
      max_roll = current_roll;
      max_iterator = i - 1;
      i--;
    }
    else if (current_roll < max_roll){
      allMoves.erase(allMoves.begin() + i);
      i--;
    }

  }
}


void print_moves(){
  for (int i = 0; i < allMoves.size(); i++){
    cout << "num_moves " << allMoves[i].num_moves << " : ";
    for (int k = 0; k < allMoves[i].num_moves; k++ ){
      cout << " (" << allMoves[i].moves[k].point_from << " "<< allMoves[i].moves[k].roll << ") ";
    }
    cout << "\n";
  }
}


void swap_player(){
  if (state.player == 1){
    int oldBar;
    oldBar = state.board[0];
    reverse(begin(state.board) + 1, end(state.board) - 1);
    for ( int n = 1; n < 25; n++) state.board[n] *= -1;
    //cout << "\nbarvorher " << state.board[0];
    set_lower_bar(&state.board[0],get_higher_bar(oldBar));
    //cout << "\nbar set_lower_bar" << state.board[0];
    set_higher_bar(&state.board[0],get_lower_bar(oldBar));
    //cout << "\nbar set_higher_bar" << state.board[0];
  }
}


int hit_them_where_you_can(){
  vector<int> hitPoints = find_hit_Points();
  int hitPosition;
  for (int i = 0; i < allMoves.size();i++){
    for (int k = 0;  (k < allMoves[0].num_moves); k++ ){
      if (find(hitPoints.begin(), hitPoints.end(),
       allMoves[i].moves[k].point_from +  allMoves[i].moves[k].roll) != hitPoints.end()){
         return i;
       }
     }
   }
   return 0;
 }


int
main(int, char**) // ignore command line parameters
{
  srand(time(NULL));
  while(true){

    initialize_multi_move(&mmove);

    /* Retrieve current game state*/
    if (! deserialize_state(CHILD_IN_FD, &state) ) { abort(); }

    swap_player();


    allMoves.clear();
    init_checkers();

    /* Show the current board */
    //print_state(&state);
    //cout << "steine auf der Bar " << state.board[0];

    init_allMoves();
    //cout <<"\n allMoves size " << allMoves.size() << '\n';
    //for (int i = 0; i < 15; i++) cout << " " << checkers[i];

    remove_blocked_Points();
    //cout << "\nreduced by blocked_Moves: size " << allMoves.size() << '\n';
    //print_moves();

    remove_bearOff_Points();
    //cout << "\nreduced by bearOffMoves: size " << allMoves.size() << '\n';
    //print_moves();

    /* wichtig: remove_bar_priority muss zwingend vor remove_shorter_Moves aufgerufen werden */
    remove_bar_priority();
    //cout << "reduced by remove_bar_priority: size " << allMoves.size() << '\n';
    //print_moves();

    remove_shorter_Moves();
    //cout << "reduced by shorter_Moves: size " << allMoves.size() << '\n';
    //print_moves();



    if(allMoves.size() > 1 && allMoves[0].num_moves == 1) remove_lower_dice();

    int bestMove;
    if (allMoves.size() > 1) bestMove = hit_them_where_you_can();

    if (allMoves.size() == 0){
      initialize_multi_move(&mmove);
      allMoves.push_back(mmove);
      bestMove = 0;
    }else  if (state.player == 1){
      for (int k = 0; k < allMoves[bestMove].num_moves; k++ ){
        allMoves[bestMove].moves[k].point_from = (25 - allMoves[bestMove].moves[k].point_from) % 25;
      }
    }
    serialize_moves(CHILD_OUT_FD, &allMoves[bestMove]);
  }


  return 0;
}

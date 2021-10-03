#ifndef __game_movie__
#define __game_movie__

//------------------------------------------------------------------------------
// cartoon.h - мультфильма и его интерфейса
//------------------------------------------------------------------------------

#include <iostream>
#include <fstream>

#include "rnd.h"
#include "constants.h"


struct game_movie {
    int name_size;
    char name[MAX_NAME_LEN];
    int releaseYear;

    int director_size;
    char director[MAX_NAME_LEN];
};

// Ввод параметров фильма из файла
void In(game_movie &r, std::ifstream &ifst);

// Случайный ввод параметров фильма
void InRnd(game_movie &r);

// Вывод параметров фильма в форматируемый поток
void Out(game_movie &r, std::ofstream &ofst);

double YearDivName(game_movie &g);

#endif
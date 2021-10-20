#ifndef __movie__
#define __movie__

//------------------------------------------------------------------------------
// movie.h - содержит описание обобщающего фильма.
//------------------------------------------------------------------------------

#include <iostream>

#include "game_movie.h"
#include "cartoon.h"
#include "documentary.h"

//------------------------------------------------------------------------------
// структура, обобщающая для всех фильмы
struct movie {
    // значения ключей для каждого из видов фльма
    enum key {GAME_MOVIE, CARTOON, DOCUMENTARY};
    key k; // ключ
    // используемые альтернативы
    union {
        game_movie g;
        cartoon c;
        documentary d;
    };
};

// Ввод обобщенного фильма
movie *In(std::ifstream &ifdt);

// Случайный ввод обобщенного фильма
movie *InRnd();

// Вывод обобщенного фильма
void Out(movie &s, std::ofstream &ofst);

double YearDivName(movie &m);


#endif
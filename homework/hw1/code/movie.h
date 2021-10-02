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
// структура, обобщающая все фильмы
struct movie {
    // значения ключей для каждого из видов ЯП
    enum key {GAME_MOVIE, CARTOON, DOCUMENTARY};
    key k; // ключ
    // используемые альтернативы
    union { // используем простейшую реализацию
        game_movie g;
        cartoon c;
        documentary d;
    };
};

// Ввод обобщенного ЯП
movie *In(std::ifstream &ifdt);

// Случайный ввод обобщенного ЯП
movie *InRnd();

// Вывод обобщенного ЯП
void Out(movie &s, std::ofstream &ofst);


#endif
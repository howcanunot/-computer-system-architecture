#ifndef __documentary__
#define __documentary__

//------------------------------------------------------------------------------
// documentary.h - мультфильма и его интерфейса
//------------------------------------------------------------------------------

#include <iostream>
#include <fstream>

#include "rnd.h"
#include "constants.h"


struct documentary {
    int name_size;
    char name[MAX_NAME_LEN];
    int releaseYear;

    int duration;
};

// Ввод параметров прямоугольника из файла
void In(documentary &r, std::ifstream &ifst);

// Случайный ввод параметров прямоугольника
void InRnd(documentary &r);

// Вывод параметров прямоугольника в форматируемый поток
void Out(documentary &r, std::ofstream &ofst);


#endif
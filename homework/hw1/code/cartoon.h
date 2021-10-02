#ifndef __cartoon__
#define __cartoon__

//------------------------------------------------------------------------------
// cartoon.h - мультфильма и его интерфейса
//------------------------------------------------------------------------------

#include <iostream>
#include <fstream>

#include "rnd.h"
#include "constants.h"


struct cartoon {
    int name_size;
    char name[MAX_NAME_LEN];
    int releaseYear;

    enum way_to_create {
        HAND, PUPPET, PLASTICINE
    };

    way_to_create type;
};

// Ввод параметров фильма из файла
void In(cartoon &r, std::ifstream &ifst);

// Случайный ввод параметров фильма
void InRnd(cartoon &r);

// Вывод параметров фильма в форматируемый поток
void Out(cartoon &r, std::ofstream &ofst);


#endif
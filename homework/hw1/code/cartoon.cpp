//------------------------------------------------------------------------------
// cartoon.cpp - содержит функции обработки для процедурных ЯП
//------------------------------------------------------------------------------

#include "cartoon.h"

//------------------------------------------------------------------------------
// Ввод параметров фильма из потока
void In(cartoon &c, std::ifstream &ifst) {
    int type;
    ifst >> c.name >> c.releaseYear >> type;

    if (type == 0) {
        c.type = cartoon::way_to_create::HAND;
    } else if (type == 1) {
        c.type = cartoon::way_to_create::PUPPET;
    } else {
        c.type = cartoon::way_to_create::PLASTICINE;
    }
}

// Случайный ввод параметров фильма
void InRnd(cartoon &c) {
    c.name_size = Random();
    for (size_t i = 0; i < c.name_size; ++i) {
        c.name[i] = char('a' + Random());
    }
    c.name[c.name_size - 1] = '\0';

    c.releaseYear = MIN_YEAR + Random();

    int type = Random() % 3;
    if (type == 0) {
        c.type = cartoon::way_to_create::HAND;
    } else if (type == 1) {
        c.type = cartoon::way_to_create::PUPPET;
    } else {
        c.type = cartoon::way_to_create::PLASTICINE;
    }
}

//------------------------------------------------------------------------------
// Вывод параметров фильма в форматируемый поток
void Out(cartoon &c, std::ofstream &ofst) {
    ofst << "It is Cartoon Movie: name = "
         << c.name << " (" << c.releaseYear <<
         "), created by " <<
                          (c.type == 0 ? "HAND" : (c.type == 1 ?  "PUPPET" : "PLASTICINE")) << "\n";
}

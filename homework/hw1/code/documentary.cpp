//------------------------------------------------------------------------------
// documentary.cpp - содержит функции обработки для док. фильмов
//------------------------------------------------------------------------------

#include "documentary.h"

//------------------------------------------------------------------------------
// Ввод параметров фильма из потока
void In(documentary &d, std::ifstream &ifst) {
    ifst >> d.name >> d.releaseYear >> d.duration;
    d.name_size = strlen(d.name);
}

// Случайный ввод параметров фильма
void InRnd(documentary &g) {
    g.name_size = Random();
    for (size_t i = 0; i < g.name_size; ++i) {
        g.name[i] = char('a' + Random());
    }
    g.name[g.name_size] = '\0';

    g.releaseYear = MIN_YEAR + Random();
    g.duration = 60 + 2 * Random();
}

//------------------------------------------------------------------------------
// Вывод параметров фильма в форматируемый поток
void Out(documentary &d, std::ofstream &ofst) {
    ofst << "It is Documentary Movie: name = "
         << d.name << " (" << d.releaseYear <<
         "), duration = " << d.duration << "\n";
}

double YearDivName(documentary &d) {
    return 1.0 * d.releaseYear / d.name_size;
}

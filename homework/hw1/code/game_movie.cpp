//------------------------------------------------------------------------------
// functional.cpp - содержит функции обработки для процедурных ЯП
//------------------------------------------------------------------------------

#include "game_movie.h"

//------------------------------------------------------------------------------
// Ввод параметров фильма из потока
void In(game_movie &g, std::ifstream &ifst) {
    ifst >> g.name >> g.releaseYear >> g.director;
}

// Случайный ввод параметров игрового фильма
void InRnd(game_movie &g) {
    for (size_t i = 0; i < MAX_NAME_LEN; ++i) {
        g.name[i] = char('a' + Random());
    }

    for (size_t i = 0; i < MAX_NAME_LEN; ++i) {
        g.director[i] = char('a' + Random());
    }
    g.name[MAX_NAME_LEN - 1] = '\0';
    g.director[MAX_NAME_LEN - 1] = '\0';
    g.releaseYear = MIN_YEAR + Random();
}

//------------------------------------------------------------------------------
// Вывод параметров игрового фильма в форматируемый поток
void Out(game_movie &g, std::ofstream &ofst) {
    ofst << "It is Game Movie: name = "
         << g.name << " (" << g.releaseYear <<
         "), director: " <<  g.director << "\n";
}

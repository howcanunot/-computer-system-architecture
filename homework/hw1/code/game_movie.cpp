#include "game_movie.h"
//------------------------------------------------------------------------------
// Ввод параметров фильма из потока
void In(game_movie &g, std::ifstream &ifst) {
    ifst >> g.name >> g.releaseYear >> g.director;
    g.name_size = strlen(g.name);
}

// Случайный ввод параметров игрового фильма
void InRnd(game_movie &g) {    g.name_size = Random();
    for (size_t i = 0; i < g.name_size; ++i) {
        g.name[i] = char('a' + Random());
    }

    g.director_size = Random();
    for (size_t i = 0; i < g.director_size; ++i) {
        g.director[i] = char('a' + Random());
    }
    g.name[g.name_size] = '\0';
    g.director[g.director_size] = '\0';
    g.releaseYear = MIN_YEAR + Random();
}

//------------------------------------------------------------------------------
// Вывод параметров игрового фильма в форматируемый поток
void Out(game_movie &g, std::ofstream &ofst) {
    ofst << "It is Game Movie: name = "
         << g.name << " (" << g.releaseYear <<
         "), director = " <<  g.director << "\n";
}

double YearDivName(game_movie &g) {
    return 1.0 * g.releaseYear / g.name_size;
}

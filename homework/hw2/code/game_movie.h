#ifndef __game_movie__
#define __game_movie__

#include "movie.h"

class game_movie : public movie {
public:
    char *director;
    int director_size;

    game_movie(char *name, int name_size, int release_year, char *director, int director_size);

    ~game_movie() override;

    void print(FILE *out) override;
};

// // Ввод параметров фильма из файла
// void In(game_movie &r, std::ifstream &ifst);
//
// // Случайный ввод параметров фильма
// void InRnd(game_movie &r);
//
// // Вывод параметров фильма в форматируемый поток
// void Out(game_movie &r, std::ofstream &ofst);
//
// double YearDivName(game_movie &g);

#endif
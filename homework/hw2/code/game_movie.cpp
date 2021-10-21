#include "game_movie.h"


game_movie::game_movie(char *name, int name_size,
                            int release_year, char *director, int director_size) : movie(name, name_size, release_year) {
    this->director = director;
    this->director_size = director_size;
}

game_movie::~game_movie() {
    delete[] name;
    delete[] director;
}

void game_movie::print(FILE *out) {
    fprintf(out, "[Game Movie]\n"
                 "-name: %s\n"
                 "-release year: %d\n"
                 "-director: %s\n"
                 "-function result: %lf\n\n", name, release_year, director, year_div_name());
}

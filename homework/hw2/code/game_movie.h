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

#endif
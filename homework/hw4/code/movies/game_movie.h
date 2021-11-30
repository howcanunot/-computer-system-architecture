#ifndef __GAME_MOVIE__
#define __GAME_MOVIE__

#include "../const.h"
#include "string.h"
#include "stdlib.h"
#include "stdio.h"

struct game_movie {
    unsigned long name_size;
    char name[MAX_NAME_LEN];
    int releaseYear;

    unsigned long director_size;
    char director[MAX_NAME_LEN];
};

void GameMovieIn(struct game_movie* g, FILE* in);

void GameMovieInRnd(struct game_movie* g);

extern double GameMovieYearDivName(struct game_movie* g);

void GameMovieOut(struct game_movie* g, FILE* ofst);

#endif

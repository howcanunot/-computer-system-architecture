#ifndef __MOVIE__
#define __MOVIE__

#include "game_movie.h"
#include "cartoon.h"
#include "documentary.h"
#include "stdio.h"

#define GAME_MOVIE 0
#define CARTOON 1
#define DOCUMENTARY 2

struct movie {
    int k;
    union {
        struct game_movie *g;
        struct cartoon *c;
        struct documentary *d;
    };
};

struct movie* MovieIn(FILE* in);

struct movie* MovieInRnd();

void MovieOut(struct movie* m, FILE* ofst);

extern double MovieYearDivName(struct movie* m);

#endif
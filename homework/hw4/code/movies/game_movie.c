#include "game_movie.h"

int GameMovieRandom() {
    return rand() % 26;
}

void GameMovieIn(struct game_movie* g, FILE* in) {
    fscanf(in, "%s %d %s", g->name, &g->releaseYear, g->director);
    g->name_size = strlen(g->name);
    g->director_size = strlen(g->director);
}

void GameMovieInRnd(struct game_movie* g) {
    g->name_size = GameMovieRandom() + 1;
    for (size_t i = 0; i < g->name_size; ++i) {
        g->name[i] = (char) ('a' + GameMovieRandom());
    }

    g->director_size = GameMovieRandom();
    for (size_t i = 0; i < g->director_size; ++i) {
        g->director[i] = (char)('a' + GameMovieRandom());
    }
    g->name[g->name_size] = '\0';
    g->director[g->director_size] = '\0';
    g->releaseYear = MIN_YEAR + GameMovieRandom();
}

void GameMovieOut(struct game_movie* g, FILE* ofst) {
    fprintf(ofst,"[Game Movie]\n"
                 "-name = %s\n"
                 "-release year = %d\n"
                 "-director = %s\n"
                 "-function result = %lf\n\n", g->name, g->releaseYear, g->director, GameMovieYearDivName(g));
}


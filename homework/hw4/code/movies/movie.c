#include "movie.h"
#include "stdlib.h"

int MovieRandom() {
    return rand() % 26;
}


struct movie* MovieIn(FILE* in) {
    struct movie* m = malloc(sizeof(struct movie));
    char type[MAX_NAME_LEN];
    fscanf(in, "%s\n", type);

    if (!strcmp(type, "game_movie")) {
        m->g = malloc(sizeof(struct game_movie));
        m->k = GAME_MOVIE;
        GameMovieIn(m->g, in);
    } else if (!strcmp(type, "cartoon")) {
        m->c = malloc(sizeof(struct cartoon));
        m->k = CARTOON;
        CartoonIn(m->c, in);
    } else if(!strcmp(type, "documentary")) {
        m->d = malloc(sizeof(struct documentary));
        m->k = DOCUMENTARY;
        DocumentaryIn(m->d, in);
    } else {
        printf("ERROR: Wrong movie type %s\n", type);
        exit(1);
    }
    return m;
}

struct movie* MovieInRnd() {
    struct movie* m = malloc(sizeof(struct movie));
    int type = MovieRandom() % 3;

    if (type == 0) {
        m->k = GAME_MOVIE;
        m->g = malloc(sizeof(struct game_movie));
        GameMovieInRnd(m->g);
    } else if (type == 1) {
        m->k = CARTOON;
        m->c = malloc(sizeof(struct cartoon));
        CartoonInRnd(m->c);
    } else {
        m->k = DOCUMENTARY;
        m->d = malloc(sizeof(struct documentary));
        DocumentaryInRnd(m->d);
    }
    return m;
}

void MovieOut(struct movie* m, FILE* ofst) {
    switch (m->k) {
        case GAME_MOVIE: {
            GameMovieOut(m->g, ofst);
            break;
        }
        case CARTOON: {
            CartoonOut(m->c, ofst);
            break;
        }
        case DOCUMENTARY: {
            DocumentaryOut(m->d, ofst);
            break;
        }
        default:
            fprintf(ofst, "Incorrect movie type\n");
            break;
    }
}

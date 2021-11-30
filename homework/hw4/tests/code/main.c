#include "container/container.h"

/*
int Random() {
    return rand() % 26;
}

int RandomDuration() {
    return 90 + rand() % 90;
}


//-------------------------------------------------- GAME MOVIE
struct game_movie {
    unsigned long name_size;
    char name[MAX_NAME_LEN];
    int releaseYear;

    unsigned long director_size;
    char director[MAX_NAME_LEN];
};

void GameMovieIn(struct game_movie* g, FILE* in) {
    fscanf(in, "%s %d %s", g->name, &g->releaseYear, g->director);
    g->name_size = strlen(g->name);
    g->director_size = strlen(g->director);
}

void GameMovieInRnd(struct game_movie* g) {
    g->name_size = Random() + 1;
    for (size_t i = 0; i < g->name_size; ++i) {
        g->name[i] = (char) ('a' + Random());
    }

    g->director_size = Random();
    for (size_t i = 0; i < g->director_size; ++i) {
        g->director[i] = (char)('a' + Random());
    }
    g->name[g->name_size] = '\0';
    g->director[g->director_size] = '\0';
    g->releaseYear = MIN_YEAR + Random();
}

// double GameMovieYearDivName(struct game_movie* g) {
//     return 1.0 * g->releaseYear / g->name_size;
// }

extern double GameMovieYearDivName(struct game_movie* g);

void GameMovieOut(struct game_movie* g, FILE* ofst) {
    fprintf(ofst,"[Game Movie]\n"
                 "-name = %s\n"
                 "-release year = %d\n"
                 "-director = %s\n"
                 "-function result = %lf\n\n", g->name, g->releaseYear, g->director, GameMovieYearDivName(g));
}


//-------------------------------------------------- GAME MOVIE

//-------------------------------------------------- CARTOON

struct cartoon {
    unsigned long name_size;
    char name[MAX_NAME_LEN];
    int releaseYear;

    int type;
};

void CartoonIn(struct cartoon* c, FILE* in) {
    fscanf(in, "%s %d %d", c->name, &c->releaseYear, &c->type);
    c->name_size = strlen(c->name);
}

void CartoonInRnd(struct cartoon* c) {
    c->name_size = Random() + 1;
    for (size_t i = 0; i < c->name_size; ++i) {
        c->name[i] = (char) ('a' + Random());
    }

    c->name[c->name_size] = '\0';
    c->type = Random() % 3;
    c->releaseYear = MIN_YEAR + Random();
}

// double CartoonYearDivName(struct cartoon* c) {
//     return 1.0 * c->releaseYear / c->name_size;
// }

extern double CartoonYearDivName(struct cartoon* c);


void CartoonOut(struct cartoon* c, FILE* ofst) {
    fprintf(ofst,"[Cartoon]\n"
                 "-name = %s\n"
                 "-release year = %d\n"
                 "-director = %d\n"
                 "-function result = %lf\n\n", c->name, c->releaseYear, c->type, CartoonYearDivName(c));
}

//-------------------------------------------------- CARTOON

//-------------------------------------------------- DOCUMENTARY


struct documentary {
    int name_size;
    char name[MAX_NAME_LEN];
    int releaseYear;

    int duration;
};

void DocumentaryIn(struct documentary* d, FILE* in) {
    fscanf(in, "%s %d %d", d->name, &d->releaseYear, &d->duration);
    d->name_size = strlen(d->name);
}

void DocumentaryInRnd(struct documentary* d) {
    d->name_size = Random() + 1;
    for (size_t i = 0; i < d->name_size; ++i) {
        d->name[i] = (char) ('a' + Random());
    }

    d->name[d->name_size] = '\0';
    d->duration = RandomDuration();
    d->releaseYear = MIN_YEAR + Random();
}

// double DocumentaryDivName(struct documentary* d) {
//     return 1.0 * d->releaseYear / d->name_size;
// }


extern double DocumentaryDivName(struct documentary* d);


void DocumentaryOut(struct documentary* d, FILE* ofst) {
    fprintf(ofst,"[Documentary]\n"
                 "-name = %s\n"
                 "-release year = %d\n"
                 "-duration = %d\n"
                 "-function result = %lf\n\n", d->name, d->releaseYear, d->duration, DocumentaryDivName(d));
}

//-------------------------------------------------- DOCUMENTARY

//-------------------------------------------------- MOVIE

struct movie {
    int k;
    union {
        struct game_movie *g;
        struct cartoon *c;
        struct documentary *d;
    };
};

struct movie* MovieIn(FILE* in) {
    struct movie *m;
    char type[MAX_NAME_LEN];
    fscanf(in, "%s\n", type);

    if (!strcmp(type, "game_movie")) {
        m = malloc(sizeof(struct game_movie));
        m->k = GAME_MOVIE;
        GameMovieIn(m->g, in);
    } else if (!strcmp(type, "cartoon")) {
        m = malloc(sizeof(struct cartoon));
        m->k = CARTOON;
        CartoonIn(m->c, in);
    } else if(!strcmp(type, "documentary")) {
        m = malloc(sizeof(struct documentary));
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
    int type = rand() % 3;

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


// double MovieYearDivName(struct movie* m) {
//     if (m->k == 0) {
//         return GameMovieYearDivName(m->g);
//     } else if (m->k == 1) {
//         return CartoonYearDivName(m->c);
//     } else {
//         return DocumentaryDivName(m->d);
//     }
// }

extern double MovieYearDivName(struct movie* m);
//-------------------------------------------------- MOVIE
*/
//-------------------------------------------------- CONTAINER
/*
struct container {
    int len; // текущая длина
    struct movie* cont[10000];
};

void Init(struct container* c) {
    c->len = 0;
}

void Clear(struct container* c) {
    for (int i = 0; i < c->len; i++) {
        free(c->cont[i]);
    }
    c->len = 0;
}

void ContainerIn(struct container* c, FILE* ifst) {
    while (!feof(ifst)) {
        if ((c->cont[c->len] = MovieIn(ifst)) != 0) {
            c->len++;
        }
    }
}

void ContainerInRnd(struct container* c, int size) {
    while (c->len < size) {
        if ((c->cont[c->len] = MovieInRnd()) != NULL) {
            c->len++;
        }
    }
}

void ContainerOut(struct container* c, FILE* ofst) {
    fprintf(ofst, "Container contains %d elements\n", c->len);
    for (int i = 0; i < c->len; i++) {
        MovieOut(c->cont[i], ofst);
    }
}

/*
void swap(struct movie *a, struct movie *b)
{
    struct movie t = *a;
    *a = *b;
    *b = t;
}

int Partition (struct container* c, int low, int high) {
    int pivot = high;
    int i = (low - 1);

    for (int j = low; j <= high - 1; j++) {
        if (MovieYearDivName(c->cont[j]) < MovieYearDivName(c->cont[pivot])) {
            i++;
            swap(c->cont[i], c->cont[j]);
        }
    }
    swap(c->cont[i + 1], c->cont[high]);
    return (i + 1);
}

void QuickSort(struct container* c, int low, int high) {
    if (low < high) {

        int pi = Partition(c, low, high);

        QuickSort(c, low, pi - 1);
        QuickSort(c, pi + 1, high);
    }
}

extern void swap(struct movie *a, struct movie *b);
extern int Partition (struct container* c, int low, int high);
extern void QuickSort(struct container* c, int low, int high);
*/

void errMessage1() {
    printf("incorrect command line!\n"
                 "  Waited:\n"
                 "     command -f infile outfile01 outfile02\n"
                 "  Or:\n"
                 "     command -n number outfile01 outfile02\n");
}

void errMessage2() {
    printf("incorrect qualifier value!\n"
                 "  Waited:\n"
                 "     command -f infile outfile01 outfile02\n"
                 "  Or:\n"
                 "     command -n number outfile01 outfile02\n");
}


int main(int argc, char* argv[]) {
    if (argc != 5) {
        errMessage1();
        return 1;
    }

    printf("Start\n");
    struct container c;
    Init(&c);
    int size;

    if (!strcmp(argv[1], "-f")) {
        FILE* in = fopen(argv[2], "r");
        fscanf(in, "%d\n", &size);
        ContainerIn(&c, in);
        fclose(in);
    }
    else if (!strcmp(argv[1], "-n")) {
        int size = atoi(argv[2]);
        ContainerInRnd(&c, size);
    }
    else {
        errMessage2();
        return 2;
    }

    FILE* out1 = fopen(argv[3], "w");
    FILE* out2 = fopen(argv[4], "w");
    fprintf(out1, "Filled container:\n");
    ContainerOut(&c, out1);

    // The 2nd part of task
    QuickSort(&c, 0 , c.len - 1);
    fprintf(out2, "Sorted container:\n");
    ContainerOut(&c, out2);

    Clear(&c);
    printf("Stop\n");
    return 0;
}

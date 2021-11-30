#include "cartoon.h"

int CartoonRandom() {
    return rand() % 26;
}

void CartoonIn(struct cartoon* c, FILE* in) {
    fscanf(in, "%s %d %d", c->name, &c->releaseYear, &c->type);
    c->name_size = strlen(c->name);
}

void CartoonInRnd(struct cartoon* c) {
    c->name_size = CartoonRandom() + 1;
    for (size_t i = 0; i < c->name_size; ++i) {
        c->name[i] = (char) ('a' + CartoonRandom());
    }

    c->name[c->name_size] = '\0';
    c->type = CartoonRandom() % 3;
    c->releaseYear = MIN_YEAR + CartoonRandom();
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
#include "documentary.h"
#include "stdlib.h"

int DocumentaryRandom() {
    return rand() % 26;
}

int RandomDuration() {
    return 90 + rand() % 90;
}

void DocumentaryIn(struct documentary* d, FILE* in) {
    fscanf(in, "%s %d %d", d->name, &d->releaseYear, &d->duration);
    d->name_size = strlen(d->name);
}

void DocumentaryInRnd(struct documentary* d) {
    d->name_size = DocumentaryRandom() + 1;
    for (size_t i = 0; i < d->name_size; ++i) {
        d->name[i] = (char) ('a' + DocumentaryRandom());
    }

    d->name[d->name_size] = '\0';
    d->duration = RandomDuration();
    d->releaseYear = MIN_YEAR + DocumentaryRandom();
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

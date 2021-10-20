#include "documentary.h"

documantary::documantary(char *name, int name_size,
                         int release_year, int duration) : movie(name, name_size, release_year) {
    this->duration = duration;
}

void documantary::print(FILE *out) {
    fprintf(out, "[Documentary]\n"
                 "-name: %s\n"
                 "-release year: %d\n"
                 "-duration: %d\n"
                 "-function result: %lf\n\n", name, release_year, duration, year_div_name());
}

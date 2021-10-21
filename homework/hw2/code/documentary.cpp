#include "documentary.h"

documentary::documentary(char *name, int name_size,
                         int release_year, int duration) : movie(name, name_size, release_year) {
    this->duration = duration;
}

documentary::~documentary() {
    delete[] name;
}

void documentary::print(FILE *out) {
    fprintf(out, "[Documentary]\n"
                 "-name: %s\n"
                 "-release year: %d\n"
                 "-duration: %d\n"
                 "-function result: %f\n\n", name, release_year, duration, year_div_name());
}

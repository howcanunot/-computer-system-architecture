#ifndef __rnd__
#define __rnd__

#include <cstdlib>

int rand_letter() {
    return rand() % 26;
}

int rand_year() {
    return 1895 + rand() % 127;
}

int rand_size() {
    int result = rand() % 40;
    return result == 0 ? 1 : result;
}

int rand_duration() {
    return 60 + rand() % 120;
}

#endif

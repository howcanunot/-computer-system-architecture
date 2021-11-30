#ifndef __DOCUMENTARY__
#define __DOCUMENTARY__

#include "../const.h"
#include "string.h"
#include "stdlib.h"
#include "stdio.h"

struct documentary {
    int name_size;
    char name[MAX_NAME_LEN];
    int releaseYear;

    int duration;
};

void DocumentaryIn(struct documentary* d, FILE* in);

void DocumentaryInRnd(struct documentary* d);

extern double DocumentaryDivName(struct documentary* d);

void DocumentaryOut(struct documentary* d, FILE* ofst);

#endif
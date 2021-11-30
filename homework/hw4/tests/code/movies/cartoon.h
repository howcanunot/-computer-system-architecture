#ifndef __CARTOON__
#define __CARTOON__

#include "../const.h"
#include "string.h"
#include "stdlib.h"
#include "stdio.h"

struct cartoon {
    unsigned long name_size;
    char name[MAX_NAME_LEN];
    int releaseYear;

    int type;
};

void CartoonIn(struct cartoon* c, FILE* in);

void CartoonInRnd(struct cartoon* c);

extern double CartoonYearDivName(struct cartoon* c);

void CartoonOut(struct cartoon* c, FILE* ofst);

#endif

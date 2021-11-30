#ifndef __CONTAINER__
#define __CONTAINER__

#include "../movies/movie.h"

struct container {
    int len; // текущая длина
    struct movie* cont[10000];
};

void Init(struct container* c);

void Clear(struct container* c);

void ContainerIn(struct container* c, FILE* ifst);

void ContainerInRnd(struct container* c, int size);

void ContainerOut(struct container* c, FILE* ofst);

extern void swap(struct movie *a, struct movie *b);

extern int Partition (struct container* c, int low, int high);

extern void QuickSort(struct container* c, int low, int high);

#endif

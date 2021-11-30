#include "container.h"

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
 */

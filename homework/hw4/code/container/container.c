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

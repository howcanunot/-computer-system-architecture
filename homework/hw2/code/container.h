#ifndef __container__
#define __container__

#include "movie.h"


// struct container {
//     enum {max_len = 10000};
//     int len; // текущая длина
//     movie *cont[max_len];
// };

class container {
private:
    movie **cont;
    int size;

public:
    container();

    container(int size);

    ~container();

    void fill(FILE *in);

    void fill_rand();

    void print(FILE *out);

    void swap(movie *a, movie *b);

    int partition(int low, int high);

    void quick_sort(int low, int high);
};

#endif

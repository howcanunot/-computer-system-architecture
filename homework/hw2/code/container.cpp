#include "container.h"

container::container() {

}

container::container(int size) {
    this->size = size;
    this->cont = new movie*[this->size];
}

container::~container() {
    for (int i = 0; i < this->size; i++) {
        delete this->cont[i];
    }

    delete cont;
    this->size = 0;
}

void container::fill(FILE *in) {
    while (!feof(in)) {
        for (int i = 0; i < this->size; i++) {
            this->cont[i] = movie::create_from_file(in);
        }
    }
}

void container::fill_rand() {
    for (int i = 0; i < this->size; i++) {
        this->cont[i] = movie::create_random();
    }
}

void container::print(FILE *out) {
    for (int i = 0; i < this->size; i++) {
        fprintf(out, "%d. ", (i + 1));
        cont[i]->print(out);
    }
}

void container::swap(movie *a, movie *b) {
    movie t = *a;
    *a = *b;
    *b = t;
}

int container::partition(int low, int high) {
    int pivot = high;
    int i = (low - 1);
    for (int j = low; j <= high - 1; j++)
    {
        if (cont[j]->year_div_name() < cont[pivot]->year_div_name())
        {
            i++;
            swap(cont[i], cont[j]);
        }
    }
    swap(cont[i + 1], cont[high]);
    return (i + 1);
}

void container::quick_sort(int low, int high) {
    if (low < high)
    {
        int pi = partition(low, high);
        quick_sort(low, pi - 1);
        quick_sort(pi + 1, high);
    }
}

#include "container.h"
#include "game_movie.h"
#include "cartoon.h"
#include "documentary.h"

container::container() {

}

container::container(int size) {
    this->size = size;
    this->cont = new movie*[this->size];
}

container::~container() {
    for (int i = 0; i < this->size; i++) {
        // game_movie *m1 = dynamic_cast<game_movie *>(cont[i]);
        // cartoon *m2 = dynamic_cast<cartoon *>(cont[i]);
        // documentary *m3 = dynamic_cast<documentary*>(cont[i]);
//
        // if (m1 != NULL) {
        //     delete m1;
        // } else if (m2 != NULL) {
        //     delete m2;
        // } else {
        //     delete m3;
        // }
        delete cont[i];
    }

    delete[] cont;
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

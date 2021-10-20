#include "container.h"

void Init(container &c) {
    c.len = 0;
}

void Clear(container &c) {
    for (int i = 0; i < c.len; i++) {
        delete c.cont[i];
    }
    c.len = 0;
}

void In(container &c, std::ifstream &ifst) {
    while (!ifst.eof()) {
        if ((c.cont[c.len] = In(ifst)) != 0) {
            c.len++;
        }
    }
}

void InRnd(container &c, int size) {
    while (c.len < size) {
        if ((c.cont[c.len] = InRnd()) != nullptr) {
            c.len++;
        }
    }
}

void Out(container &c, std::ofstream &ofst) {
    ofst << "Container contains " << c.len << " elements.\n";
    for (int i = 0; i < c.len; i++) {
        ofst << i << ": ";
        Out(*(c.cont[i]), ofst);
    }
}

void swap(movie *a, movie *b)
{
    movie t = *a;
    *a = *b;
    *b = t;
}

int Partition (container &c, int low, int high)
{
    int pivot = high;
    int i = (low - 1);

    for (int j = low; j <= high - 1; j++)
    {
        if (YearDivName(*c.cont[j]) < YearDivName(*c.cont[pivot]))
        {
            i++;
            swap(c.cont[i], c.cont[j]);
        }
    }
    swap(c.cont[i + 1], c.cont[high]);
    return (i + 1);
}

void QuickSort(container &c, int low, int high)
{
    if (low < high)
    {

        int pi = Partition(c, low, high);

        QuickSort(c, low, pi - 1);
        QuickSort(c, pi + 1, high);
    }
}

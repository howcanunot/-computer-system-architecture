#ifndef __movie__
#define __movie__

#include <iostream>

class movie {
private:
    static void fill_rand(char *str, int size);

public:
    char *name;
    int name_size;
    int release_year;

    movie(char *name, int name_size, int release_year);

    double year_div_name();

    virtual void print(FILE *out);

    static movie* create_from_file(FILE *in);

    static movie* create_random();
};

// movie *In(std::ifstream &ifdt);
//
// movie *InRnd();
//
// void Out(movie &s, std::ofstream &ofst);


#endif
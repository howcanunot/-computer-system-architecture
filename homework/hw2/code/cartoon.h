#ifndef __cartoon__
#define __cartoon__

#include "movie.h"

// struct cartoon {
//     int name_size;
//     char name[MAX_NAME_LEN];
//     int releaseYear;
//
//     enum way_to_create {
//         HAND, PUPPET, PLASTICINE
//     };
//
//     way_to_create type;
// };

class cartoon : public movie {
private:
    enum way_to_create {
        HAND, PUPPET, PLASTICINE
    };

public:
    way_to_create type;

    cartoon(char *name, int name_size, int release_year, int type);

    void print(FILE *out) override;
};

// // Ввод параметров фильма из файла
// void In(cartoon &r, std::ifstream &ifst);
//
// // Случайный ввод параметров фильма
// void InRnd(cartoon &r);
//
// // Вывод параметров фильма в форматируемый поток
// void Out(cartoon &r, std::ofstream &ofst);
//
// double YearDivName(cartoon &c);


#endif
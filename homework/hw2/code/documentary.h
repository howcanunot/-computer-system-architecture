#ifndef __documentary__
#define __documentary__

#include "movie.h"

// struct documentary {
//     int name_size;
//     char name[MAX_NAME_LEN];
//     int releaseYear;
//
//     int duration;
// };

class documantary : public movie {
public:
    int duration;

    documantary(char *name, int name_size, int release_year, int duration);

    void print(FILE *out) override;
};

// // Ввод параметров фильма из файла
// void In(documentary &r, std::ifstream &ifst);
//
// // Случайный ввод параметров фильма
// void InRnd(documentary &r);
//
// // Вывод параметров фильма в форматируемый поток
// void Out(documentary &r, std::ofstream &ofst);
//
// double YearDivName(documentary &d);


#endif
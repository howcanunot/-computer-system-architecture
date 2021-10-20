#include "movie.h"
#include "game_movie.h"
#include "cartoon.h"
#include "documentary.h"
#include "rnd.h"
#include "constants.h"
#include <cstring>

movie::movie(char *name, int name_size, int release_year) {
    this->name = name;
    this->name_size = name_size;
    this->release_year = release_year;
}

double movie::year_div_name() {
    return 1.0 * this->release_year / this->name_size;
}

void movie::print(FILE *out) {

}

movie* movie::create_from_file(FILE *in) {
    char *type = new char[MAX_NAME_LEN];
    fscanf(in, "%s\n", type);

    if (!strcmp(type, "game_movie")) {
        char *name = new char[MAX_NAME_LEN], *director = new char[MAX_NAME_LEN];
        int release_year;

        fscanf(in, "%s %d %s\n", name, &release_year, director);
        return new game_movie(name, sizeof(name) / sizeof(char*), release_year,
                              director, sizeof(director) / sizeof(char*));
    } else if (!strcmp(type, "cartoon")) {
        char *name = new char[MAX_NAME_LEN];
        int release_year, creat_type;

        fscanf(in, "%s %d %d\n", name, &release_year, &creat_type);
        return new cartoon(name, sizeof(name) / sizeof(char*), release_year, creat_type);
    } else if (!strcmp(type, "documentary")) {
        char *name = new char[MAX_NAME_LEN];
        int release_year, duration;

        fscanf(in, "%s %d %d\n", name, &release_year, &duration);
        return new documantary(name, sizeof(name) / sizeof(char*), release_year, duration);
    } else {
        printf("ERROR: Wrong movie type %s\n", type);
        exit(1);
    }
}

void movie::fill_rand(char *str, int size) {
    for (int i = 0; i < size; i++) {
        str[i] = (char)('a' + rand_letter());
    }
    // str[size] = '\0';
}

movie* movie::create_random() {
    int type = rand_letter() % 3;

    if (type == 0) {
        int size1 = rand_size(), size2 = rand_size();
        char *name = new char[size1], *director = new char[size2];
        fill_rand(name, size1);
        fill_rand(director, size2);

        return new game_movie(name, size1, rand_year(), director, size2);
    } else if (type == 1) {
        int size = rand_size();
        char *name = new char[size];
        fill_rand(name, size);

        return new cartoon(name, size, rand_year(), rand_letter() % 3);
    } else {
        int size = rand_size();
        char *name = new char[size];
        fill_rand(name, size);

        return new documantary(name, size, rand_year(), rand_duration());
    }
}

#include "movie.h"

movie* In(std::ifstream &ifst) {
    movie *m;
    char type[MAX_NAME_LEN];
    ifst >> type;

    if (!strcmp(type, "game_movie")) {
        m = new movie;
        m->k = movie::GAME_MOVIE;
        In(m->g, ifst);
    } else if (!strcmp(type, "cartoon")) {
        m = new movie;
        m->k = movie::CARTOON;
        In(m->c, ifst);
    } else if(!strcmp(type, "documentary")) {
        m = new movie;
        m->k = movie::DOCUMENTARY;
        In(m->d, ifst);
    } else {
        std::cout << "ERROR: Wrond movie type " << type << "\n";
        exit(1);
    }
    return m;
}

movie *InRnd() {
    movie *m;
    int type = rand() % 3;

    if (type == 0) {
        m = new movie;
        m->k = movie::GAME_MOVIE;
        InRnd(m->g);
    } else if (type == 1) {
        m = new movie;
        m->k = movie::CARTOON;
        InRnd(m->c);
    } else {
        m = new movie;
        m->k = movie::DOCUMENTARY;
        InRnd(m->d);
    }
    return m;
}

void Out(movie &m, std::ofstream &ofst) {
    switch (m.k) {
        case movie::GAME_MOVIE: {
            Out(m.g, ofst);
            break;
        }
        case movie::CARTOON: {
            Out(m.c, ofst);
            break;
        }
        case movie::DOCUMENTARY: {
            Out(m.d, ofst);
            break;
        }
        default:
            ofst << "Incorrect movie type\n";
            break;
    }
}




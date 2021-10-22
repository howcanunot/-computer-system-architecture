#ifndef __documentary__
#define __documentary__

#include "movie.h"

class documentary : public movie {
public:
    int duration;

    documentary(char *name, int name_size, int release_year, int duration);

    ~documentary() override;

    void print(FILE *out) override;
};

#endif
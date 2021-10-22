#ifndef __cartoon__
#define __cartoon__

#include "movie.h"

class cartoon : public movie {
private:
    enum way_to_create {
        HAND, PUPPET, PLASTICINE
    };

public:
    way_to_create type;

    cartoon(char *name, int name_size, int release_year, int type);

    ~cartoon() override;

    void print(FILE *out) override;
};

#endif
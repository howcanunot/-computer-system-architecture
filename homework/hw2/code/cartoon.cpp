#include "cartoon.h"

cartoon::cartoon(char *name, int name_size, int release_year, int type) : movie(name, name_size, release_year){
    this->type = static_cast<way_to_create>(type);
}

void cartoon::print(FILE *out) {
    fprintf(out, "[Cartoon]\n"
                 "-name: %s\n"
                 "release_year: %d\n"
                 "type of creation: %s\n"
                 "-function result: %lf\n\n", name, release_year,
            (type == 0 ? "HAND" : (type == 1 ? "PUPPET" : "PLASTICINE")), year_div_name());
}

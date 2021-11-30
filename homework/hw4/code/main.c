#include "container/container.h"

void errMessage1() {
    printf("incorrect command line!\n"
                 "  Waited:\n"
                 "     command -f infile outfile01 outfile02\n"
                 "  Or:\n"
                 "     command -n number outfile01 outfile02\n");
}

void errMessage2() {
    printf("incorrect qualifier value!\n"
                 "  Waited:\n"
                 "     command -f infile outfile01 outfile02\n"
                 "  Or:\n"
                 "     command -n number outfile01 outfile02\n");
}


int main(int argc, char* argv[]) {
    if (argc != 5) {
        errMessage1();
        return 1;
    }

    struct container c;
    Init(&c);
    int size;

    if (!strcmp(argv[1], "-f")) {
        FILE* in = fopen(argv[2], "r");
        fscanf(in, "%d\n", &size);
        ContainerIn(&c, in);
        fclose(in);
    }
    else if (!strcmp(argv[1], "-n")) {
        int size = atoi(argv[2]);
        ContainerInRnd(&c, size);
    }
    else {
        errMessage2();
        return 2;
    }

    FILE* out1 = fopen(argv[3], "w");
    FILE* out2 = fopen(argv[4], "w");
    fprintf(out1, "Filled container:\n");
    ContainerOut(&c, out1);

    QuickSort(&c, 0 , c.len - 1);
    fprintf(out2, "Sorted container:\n");
    ContainerOut(&c, out2);

    Clear(&c);
    return 0;
}

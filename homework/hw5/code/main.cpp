#include <iostream>
#include <cstring>
#include "pin/pin.h"
#include "people/evaluator.h"
#include "people/grinder.h"
#include "people/controller.h"


int main(int argc, char** argv) {
    if (argc < 2 || argc > 4) {
        std::cout << "Error!";
        exit(1);
    }

    Pin* pins;
    size_t size = 0;
    std::string path;

    if (!strcmp("-n", argv[1])) {
        size = atoi(argv[2]);
        pins = Pin::GenerateRandomPins(size);

        if (argc == 4) {
            path = argv[3];
        }

    } else if (!strcmp("-f", argv[1])) {
        size = 0;
        if (argc < 3) {
            std::cout << "Error";
            exit(1);
        }

        std::string path_in(argv[2]);
        std::ifstream file(path_in);

        pins = Pin::GeneratePinsFromFile(file, size);

        if (argc == 4) {
            path = argv[3];
        }

    }

    SynchronizedQueue in;
    SynchronizedQueue out;

    Evaluator evaluator(&in, pins, size, path);
    std::this_thread::sleep_for(std::chrono::milliseconds(2000));

    Grinder grinder(&in, &out, path);
    std::this_thread::sleep_for(std::chrono::milliseconds(2000));

    Controller controller(&out, path);

    return 0;
}

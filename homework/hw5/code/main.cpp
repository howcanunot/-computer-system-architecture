#include <iostream>
#include "pin/pin.h"
#include "people/evaluator.h"
#include "people/grinder.h"
#include <random>


int main() {
    Pin pins[10];
    for (int i = 0; i < 10; i++) {
        pins[i] = Pin(static_cast<double>(random()) / static_cast<double>(RAND_MAX), random() % 10);
    }

    Conveyer conveyer;

    Evaluator evaluator(&conveyer, pins, 10);
    Grinder grinder(&conveyer);

    return 0;
}
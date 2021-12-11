#ifndef HW5_EVALUATOR_H
#define HW5_EVALUATOR_H

#include "../conveyer/conveyer.h"
#include <thread>
#include <chrono>
#include <iostream>


class Evaluator {
private:
    Conveyer* conveyer_;
    std::thread thread_;
    Pin* pins_;
    size_t size_;

public:
    Evaluator() = default;

    Evaluator(Conveyer*, Pin*, size_t);

    ~Evaluator();

    void CheckPinsAndPush();

};


#endif //HW5_EVALUATOR_H

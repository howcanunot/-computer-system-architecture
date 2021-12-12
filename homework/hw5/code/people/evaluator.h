#ifndef HW5_EVALUATOR_H
#define HW5_EVALUATOR_H

#include "../conveyer/synchronized_queue.h"
#include <thread>
#include <chrono>
#include "../synchronized_logger/logger.h"


class Evaluator {
private:
    SynchronizedQueue* conveyer_;
    std::thread thread_;
    Pin* pins_;
    size_t size_;
    Logger* logger_;

public:
    Evaluator() = default;

    Evaluator(SynchronizedQueue*, Pin*, size_t, std::string);

    ~Evaluator();

    void CheckPinsAndPush();

};


#endif //HW5_EVALUATOR_H

#ifndef HW5_GRINDER_H
#define HW5_GRINDER_H

#include "../conveyer/synchronized_queue.h"
#include <thread>
#include <chrono>
#include "../synchronized_logger/logger.h"

class Grinder {
private:
    std::thread thread_;
    SynchronizedQueue* in_sync_queue_;
    SynchronizedQueue* out_sync_queue_;
    Logger* logger_;

public:
    Grinder(SynchronizedQueue*, SynchronizedQueue*, Logger*);

    ~Grinder();

    void SharpenAndPush();
};


#endif //HW5_GRINDER_H

#ifndef HW5_CONTROLLER_H
#define HW5_CONTROLLER_H

#include "../conveyer/synchronized_queue.h"
#include <thread>
#include "../synchronized_logger/logger.h"

class Controller {
private:
    SynchronizedQueue* sync_queue_;
    std::thread thread_;
    Logger* logger_;

public:
    Controller(SynchronizedQueue*, std::string);

    ~Controller();

    void CheckPinQuality();
};


#endif //HW5_CONTROLLER_H

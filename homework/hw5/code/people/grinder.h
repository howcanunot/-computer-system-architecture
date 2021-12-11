#ifndef HW5_GRINDER_H
#define HW5_GRINDER_H

#include "../conveyer/conveyer.h"
#include <thread>
#include <chrono>

class Grinder {
private:
    std::thread thread_;
    Conveyer* conveyer_;

public:
    Grinder(Conveyer* conveyer);

    ~Grinder();

    void SharpenAndPush();
};


#endif //HW5_GRINDER_H

#ifndef HW5_CONVEYER_H
#define HW5_CONVEYER_H

#include "../pin/pin.h"
#include <mutex>
#include <condition_variable>
#include <queue>

// static std::queue<Pin> que;


class Conveyer {
private:
    std::queue<Pin> pins_;
    std::mutex mutex_;
    std::condition_variable var_;
    bool isWorking = true;

    typedef std::lock_guard<std::mutex> lock;
    typedef std::unique_lock<std::mutex> ulock;

public:
    Conveyer() = default;

    void PushPin(Pin pin);

    Pin PopPin();

    bool IsEmpty();

    bool IsWorking();

    void Stop();
};


#endif //HW5_CONVEYER_H

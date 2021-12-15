#ifndef HW5_SYNCHRONIZED_QUEUE_H
#define HW5_SYNCHRONIZED_QUEUE_H

#include "../pin/pin.h"
#include <mutex>
#include <condition_variable>
#include <queue>

class SynchronizedQueue {
private:
    std::queue<Pin*> pins_;
    static std::mutex mutex_;
    std::condition_variable var_;
    bool isWorking = true;

    typedef std::lock_guard<std::mutex> lock;
    typedef std::unique_lock<std::mutex> ulock;

public:
    SynchronizedQueue() = default;

    void PushPin(Pin* pin);

    Pin* PopPin();

    bool IsEmpty() const;

    bool IsWorking() const;

    void Stop();
};


#endif //HW5_SYNCHRONIZED_QUEUE_H

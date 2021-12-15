#include "synchronized_queue.h"

std::mutex SynchronizedQueue::mutex_;

void SynchronizedQueue::PushPin(Pin* pin) {
    lock l(SynchronizedQueue::mutex_);
    bool wake = pins_.empty();
    pins_.push(pin);
    if (wake) {
        var_.notify_all();
    }
}

Pin* SynchronizedQueue::PopPin() {
    ulock l(SynchronizedQueue::mutex_);
    while (pins_.empty()) {
        if (!isWorking) {
            return nullptr;
        }
        var_.wait(l);
    }

    auto pin = pins_.front();
    pins_.pop();

    return pin;
}

bool SynchronizedQueue::IsEmpty() const {
    return pins_.empty();
}

bool SynchronizedQueue::IsWorking() const {
    return isWorking;
}

void SynchronizedQueue::Stop() {
    isWorking = false;
    var_.notify_all();
}

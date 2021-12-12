#include "synchronized_queue.h"

void SynchronizedQueue::PushPin(Pin& pin) {
    lock l(mutex_);
    pins_.push(pin);
    var_.notify_all();
}

Pin SynchronizedQueue::PopPin() {
    ulock l(mutex_);
    while (pins_.empty()) {
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
}

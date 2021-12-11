#include "conveyer.h"

void Conveyer::PushPin(Pin pin) {
    lock l(mutex_);
    pins_.push(pin);
    var_.notify_all();
}

Pin Conveyer::PopPin() {
    ulock l(mutex_);
    while (pins_.empty()) {
        var_.wait(l);
    }

    auto pin = pins_.front();
    pins_.pop();

    return pin;
}

bool Conveyer::IsEmpty() {
    return pins_.empty();
}

bool Conveyer::IsWorking() {
    return isWorking;
}

void Conveyer::Stop() {
    isWorking = false;
}

#include "grinder.h"

Grinder::Grinder(SynchronizedQueue* in_queue, SynchronizedQueue* out_queue, std::string path) {
    in_sync_queue_ = in_queue;
    out_sync_queue_ = out_queue;
    logger_ = new Logger(path);
    logger_->WriteLog("Grinder thread start");
    thread_ = std::thread(&Grinder::SharpenAndPush, this);
}

Grinder::~Grinder() {
    thread_.join();
}

void Grinder::SharpenAndPush() {
    while (in_sync_queue_->IsWorking() || !in_sync_queue_->IsEmpty()) {
        Pin pin = in_sync_queue_->PopPin();
        pin.Sharpen();

        logger_->WriteLog("Grinder grind pin: ");

        out_sync_queue_->PushPin(pin);
    }

    out_sync_queue_->Stop();
}

#include "grinder.h"

Grinder::Grinder(SynchronizedQueue* in_queue, SynchronizedQueue* out_queue, Logger* logger) {
    in_sync_queue_ = in_queue;
    out_sync_queue_ = out_queue;
    logger_ = logger;
    logger_->WriteLog("Grinder thread start");
    thread_ = std::thread(&Grinder::SharpenAndPush, this);
}

Grinder::~Grinder() {
    thread_.join();
    logger_->WriteLog("Grinder thread joined");
}

void Grinder::SharpenAndPush() {
    while (in_sync_queue_->IsWorking() || !in_sync_queue_->IsEmpty()) {
        Pin* pin = in_sync_queue_->PopPin();

        if(!pin) {
            break;
        }

        logger_->WriteLog("Grinder started sharpening a " + pin->to_string());

        pin->Sharpen();

        logger_->WriteLog("Grinder sharpened a " + pin->to_string());

        out_sync_queue_->PushPin(pin);
    }
    logger_->WriteLog("Grinder stopped conveyer");
    out_sync_queue_->Stop();
}

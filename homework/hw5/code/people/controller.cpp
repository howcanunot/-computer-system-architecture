#include "controller.h"

Controller::Controller(SynchronizedQueue *conveyer, Logger* logger) {
    sync_queue_ = conveyer;
    logger_ = logger;
    logger_->WriteLog("Controller thread start");
    thread_ = std::thread(&Controller::CheckPinQuality, this);
}

Controller::~Controller() {
    thread_.join();
    logger_->WriteLog("Controller thread joined");
}

void Controller::CheckPinQuality() {
    while (sync_queue_->IsWorking() || !sync_queue_->IsEmpty()) {
        auto pin = sync_queue_->PopPin();

        if (!pin) {
            break;
        }

        logger_->WriteLog("Controller check quality for " + pin->to_string() +
        ". Quality is " + std::to_string(pin->GetQuality()));
    }
}
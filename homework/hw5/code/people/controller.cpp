#include "controller.h"

Controller::Controller(SynchronizedQueue *conveyer, std::string path) {
    sync_queue_ = conveyer;
    logger_ = new Logger(path);
    logger_->WriteLog("Controller thread start");
    thread_ = std::thread(&Controller::CheckPinQuality, this);
}

Controller::~Controller() {
    thread_.join();
}

void Controller::CheckPinQuality() {
    while (sync_queue_->IsWorking() || !sync_queue_->IsEmpty()) {
        auto pin = sync_queue_->PopPin();
        double quality = pin.GetQuality();
        logger_->WriteLog("Controller check quality: " + std::to_string(quality));
    }
}
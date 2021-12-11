#include "controller.h"

Controller::Controller(Conveyer *conveyer) {
    conveyer_ = conveyer;
    thread_ = std::thread(&Controller::CheckPinQuality, this);
}

Controller::~Controller() {
    thread_.join();
}

void Controller::CheckPinQuality() {
    while (conveyer_->IsWorking() || !conveyer_->IsEmpty()) {
        auto pin = conveyer_->PopPin();
        std::cerr << "ok\n";
    }
}
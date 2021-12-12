#include "evaluator.h"

Evaluator::Evaluator(SynchronizedQueue* conveyer, Pin* pins, size_t size, std::string path) {
    pins_ = pins;
    size_ = size;
    conveyer_ = conveyer;
    logger_ = new Logger(path);
    logger_->WriteLog("Evaluator thread start");
    thread_ = std::thread(&Evaluator::CheckPinsAndPush, this);
}

Evaluator::~Evaluator() {
    thread_.join();
    delete[] pins_;
}

void Evaluator::CheckPinsAndPush() {
    for (size_t i = 0; i < size_; i++) {
        if (!pins_[i].CheckCurvature()) {
            continue;
        }
        // TODO: write pin
        logger_->WriteLog("evaluator checked pin for curvature: ");
        conveyer_->PushPin(pins_[i]);
    }

    conveyer_->Stop();
}
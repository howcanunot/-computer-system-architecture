#include "evaluator.h"

Evaluator::Evaluator(SynchronizedQueue* conveyer, Pin* pins, size_t size, Logger* logger) {
    pins_ = pins;
    size_ = size;
    conveyer_ = conveyer;
    logger_ = logger;
    logger_->WriteLog("Evaluator thread start");
    thread_ = std::thread(&Evaluator::CheckPinsAndPush, this);
}

Evaluator::~Evaluator() {
    delete[] pins_;
    thread_.join();
    logger_->WriteLog("Evaluator thread joined");
}

void Evaluator::CheckPinsAndPush() {
    for (size_t i = 0; i < size_; i++) {
        if (!pins_[i].CheckCurvature()) {
            logger_->WriteLog("Not enough curvature " + pins_[i].to_string() + ". Required >= 0.3");
            continue;
        }
        logger_->WriteLog("Evaluator checked curvature for " + pins_[i].to_string());
        conveyer_->PushPin(&pins_[i]);
    }

    logger_->WriteLog("Evaluator stopped conveyer");
    conveyer_->Stop();
}
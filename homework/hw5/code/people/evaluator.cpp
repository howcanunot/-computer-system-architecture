#include "evaluator.h"

Evaluator::Evaluator(Conveyer* conveyer, Pin* pins, size_t size) {
    pins_ = pins;
    size_ = size;
    conveyer_ = conveyer;
    thread_ = std::thread(&Evaluator::CheckPinsAndPush, this);
}

Evaluator::~Evaluator() {
    thread_.join();
    // delete[] pins_;
}

void Evaluator::CheckPinsAndPush() {
    for (size_t i = 0; i < size_; i++) {
        if (!pins_[i].CheckCurvature()) {
            continue;
        }
        std::cerr << "evaluator checked pin for curvature: " << pins_[i] << "\n";
        std::this_thread::sleep_for(std::chrono::milliseconds(2000));
        conveyer_->PushPin(pins_[i]);
    }

    conveyer_->Stop();
}
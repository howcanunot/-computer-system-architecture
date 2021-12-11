#include "grinder.h"

Grinder::Grinder(Conveyer* conveyer) {
    conveyer_ = conveyer;
    thread_ = std::thread(&Grinder::SharpenAndPush, this);
}

Grinder::~Grinder() {
    thread_.join();
}

void Grinder::SharpenAndPush() {
    while (conveyer_->IsWorking() || !conveyer_->IsEmpty()) {
        Pin pin = conveyer_->PopPin();
        pin.Sharpen();
        std::this_thread::sleep_for(std::chrono::milliseconds(5000));
        std::cerr << "Grinder grind pin: " << pin << "\n";
    }
}

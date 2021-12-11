#include "pin.h"
#include <algorithm>

Pin::Pin(double curvature, double sharpness) {
    curvature_ = curvature;
    sharpness_ = sharpness;
}

void Pin::Sharpen() {
    sharpness_ = std::min(10.0, sharpness_ * 1.5);
}

double Pin::GetQuality() const {
    return sharpness_ * curvature_;
}

bool Pin::CheckCurvature() {
    return curvature_ >= 0.3;
}

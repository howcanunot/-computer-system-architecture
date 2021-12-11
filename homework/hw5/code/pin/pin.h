#ifndef HW5_PIN_H
#define HW5_PIN_H

#include <iostream>

class Pin {
private:
    double curvature_;
    double sharpness_;

public:
    Pin() = default;

    Pin(double curvature, double sharpness);

    bool CheckCurvature();

    void Sharpen();

    double GetQuality() const;

    friend std::ostream& operator<<(std::ostream& os, const Pin& pin) {
        os << "[Pin]: curvature = " << pin.curvature_ << "; sharpness = " << pin.sharpness_;
        return os;
    }
};


#endif //HW5_PIN_H

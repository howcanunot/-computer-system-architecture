#ifndef HW5_PIN_H
#define HW5_PIN_H

#include <iostream>
#include <fstream>
#include <random>

class Pin {
private:
    size_t id_;
    double curvature_;
    double sharpness_;

public:
    Pin() = default;

    Pin(double, double, size_t);

    bool CheckCurvature() const;

    void Sharpen();

    double GetQuality() const;

    friend std::ostream& operator<<(std::ostream& os, const Pin& pin) {
        os << "[Pin]: curvature = " << pin.curvature_ << "; sharpness = " << pin.sharpness_;
        return os;
    }

    static Pin* GenerateRandomPins(size_t size) {
        Pin* pins = new Pin[size];

        for (size_t i = 0; i < size; i++) {
            double curvature = static_cast<double>(random()) / static_cast<double>(RAND_MAX);
            double sharpness = static_cast<double>(random() % 10);

            pins[i] = Pin(curvature, sharpness, i);
        }

        return pins;
    }

    static Pin* GeneratePinsFromFile(std::ifstream& in, size_t& size) {
        if (!in.is_open()) {
            std::cout << "Error";
            exit(1);
        }

        in >> size;

        Pin* pins = new Pin[size];

        for (size_t i = 0; i < size; i++) {
            double curvature, sharpness;
            in >> curvature >> sharpness;

            pins[i] = Pin(curvature, sharpness, i);
        }

        return pins;
    }
};


#endif //HW5_PIN_H

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

    std::string to_string() const;

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
            std::cout << "Input file not found";
            exit(1);
        }

        in >> size;

        Pin* pins = new Pin[size];

        size_t length = size;
        int id = 1;

        for (size_t i = 0; i < length; i++) {
            double curvature, sharpness;
            in >> curvature >> sharpness;
            if (!(curvature >= 0.0 && curvature <= 1.0) ||
                !(sharpness >= 0.0 && sharpness <= 10.0)) {
                std::cout << "Invalid properties for pin #" << i << "\n";
                size--;
                continue;
            }

            pins[i] = Pin(curvature, sharpness, id++);
        }

        return pins;
    }
};


#endif //HW5_PIN_H

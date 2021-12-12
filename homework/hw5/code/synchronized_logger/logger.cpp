#include "logger.h"

Logger::Logger(std::string& path) {
    out_ = std::ofstream(path);
}

void Logger::WriteLog(const std::string &log) {
    lock l(mutex_);
    if (out_.is_open()) {
        out_ << log << std::endl;
    } else {
        std::cout << log << std::endl;
    }
}

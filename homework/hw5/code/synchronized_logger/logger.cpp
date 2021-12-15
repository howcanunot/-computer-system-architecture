#include "logger.h"

std::mutex Logger::mutex_;

Logger::Logger(std::string& path) {
    out_ = std::ofstream(path);
}

Logger::~Logger() {
    out_.close();
}

void Logger::WriteLog(const std::string &log) {
    lock l(Logger::mutex_);
    if (out_.is_open()) {
        out_ << log << std::endl;
    } else {
        std::cout << log << std::endl;
    }
}

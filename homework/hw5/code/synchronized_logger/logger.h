#ifndef HW5_LOGGER_H
#define HW5_LOGGER_H

#include <iostream>
#include <mutex>
#include <iomanip>
#include <fstream>
class Logger {
private:
    static std::mutex mutex_;
    std::ofstream out_;

    typedef std::lock_guard<std::mutex> lock;

public:
    Logger() = default;

    Logger(std::string&);

    ~Logger();

    void WriteLog(const std::string&);
};


#endif //HW5_LOGGER_H

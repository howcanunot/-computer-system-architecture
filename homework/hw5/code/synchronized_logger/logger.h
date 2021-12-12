#ifndef HW5_LOGGER_H
#define HW5_LOGGER_H

#include <iostream>
#include <fstream>
#include <mutex>

class Logger {
private:
    std::mutex mutex_;
    std::ofstream out_;

    typedef std::lock_guard<std::mutex> lock;

public:
    Logger() = default;

    Logger(std::string&);

    void WriteLog(const std::string& log);
};


#endif //HW5_LOGGER_H

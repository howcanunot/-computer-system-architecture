#ifndef HW5_CONTROLLER_H
#define HW5_CONTROLLER_H

#include "../conveyer/conveyer.h"
#include <thread>

class Controller {
private:
    Conveyer* conveyer_;
    std::thread thread_;

public:
    Controller(Conveyer* conveyer);

    ~Controller();

    void CheckPinQuality();
};


#endif //HW5_CONTROLLER_H

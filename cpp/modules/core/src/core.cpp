#include "core.h"
#include "logger.h"

#define ___LOG_DEBUG
#define LOG_TAG "core"
#include "logger.h"
#include <iostream>

namespace my_main_project
{
    void test()
    {
        LOGD("TEST");
        std::cout << "HI" << std::endl;
    }
}   /* namespace my_main_project */

cmake_minimum_required(VERSION 3.20.2)
project(hw5)

set(CMAKE_CXX_STANDARD 17)
 set(CMAKE_CXX_FLAGS_ASAN "-g -fsanitize=address,undefined -fno-sanitize-recover=all"
        CACHE STRING "Compiler flags in asan build"
        FORCE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

add_executable(hw5 main.cpp pin/pin.cpp conveyer/conveyer.cpp people/evaluator.cpp people/grinder.cpp people/controller.cpp)
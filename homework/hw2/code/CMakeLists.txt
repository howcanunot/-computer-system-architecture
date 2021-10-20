cmake_minimum_required(VERSION 3.20.2)
project(hw2)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS_ASAN "-g -fsanitize=address,undefined -fno-sanitize-recover=all"
        CACHE STRING "Compiler flags in asan build"
        FORCE)

add_executable(hw2 main.cpp game_movie.cpp cartoon.cpp documentary.cpp movie.cpp container.cpp)
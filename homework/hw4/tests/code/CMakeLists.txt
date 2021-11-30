cmake_minimum_required(VERSION 3.20.2)
project(hw4)

set(CMAKE_C_STANDARD 99)

add_executable(hw4 main.c container/container.c movies/movie.c movies/game_movie.c movies/cartoon.c movies/documentary.c)
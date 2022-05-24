cmake_minimum_required(VERSION 3.12)

project(solver_lib)

set(CMAKE_CXX_STANDART 17)

add_library(${PROJECT_NAME} STATIC
                         solver.cpp)

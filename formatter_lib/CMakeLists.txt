cmake_minimum_required(VERSION 3.10)

project(formatter)

set(CMAKE_CXX_STANDART 17)

add_library(${PROJECT_NAME} STATIC
             formatter.cpp)

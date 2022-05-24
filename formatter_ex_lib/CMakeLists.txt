cmake_minimum_required(VERSION 3.12)

project(formatter_ex)

set(CMAKE_CXX_STANDART 17)

add_library(${PROJECT_NAME} STATIC
                  formatter_ex.cpp)

target_include_directories(${PROJECT_NAME}
                          PUBLIC
                              ../formatter_lib)

target_link_libraries(${PROJECT_NAME}
                        formatter)


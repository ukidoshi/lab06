cmake_minimum_required(VERSION 3.12)

project(solver)

set(CMAKE_CXX_STANDART 17)

add_executable(${PROJECT_NAME} equation.cpp)

target_include_directories(${PROJECT_NAME}
                               PUBLIC
                                  ../formatter_ex_lib
                                  ../solver_lib)

target_link_libraries(${PROJECT_NAME}
                                   formatter_ex
                                   solver_lib)

include(CPack.cmake)	

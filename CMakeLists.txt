cmake_minimum_required(VERSION 3.12)

project(main)

set(CMAKE_CXX_STANDART 17)

# Add sub directories
add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)
add_subdirectory(solver_lib)
add_subdirectory(solver_application)


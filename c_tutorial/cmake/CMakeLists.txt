cmake_minimum_required(VERSION 3.00)
project(C_Tutorial VERSION 1.0.0 DESCRIPTION "c language tutorial")
set(CMAKE_C_STANDARD 99)

include(GNUInstallDirs)

add_subdirectory(src/shlib)
# add_subdirectory(src/main)

# add_dependencies(src/main src/shlib) # main requires shlib

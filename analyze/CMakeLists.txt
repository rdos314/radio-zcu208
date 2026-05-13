cmake_minimum_required(VERSION 4.2)
project(analyze)

# Automatically load the local cross-compiler toolchain file if it exists
if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/toolchain-xilinx-linux.cmake")
    set(CMAKE_TOOLCHAIN_FILE "${CMAKE_CURRENT_SOURCE_DIR}/toolchain-xilinx-linux.cmake" CACHE STRING "Xilinx Toolchain" FORCE)
endif()

set(CMAKE_CXX_STANDARD 20)

add_executable(analyze analyse.cpp)

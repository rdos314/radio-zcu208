set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(SYSROOT "C:/radio-zcu208/sysroot/sysroots/cortexa72-cortexa53-amd-linux")

set(CMAKE_SYSROOT "${SYSROOT}")

set(CMAKE_C_COMPILER "C:/Xilinx/2025.1/gnu/aarch64/nt/aarch64-linux/bin/aarch64-linux-gnu-gcc.exe")
set(CMAKE_CXX_COMPILER "C:/Xilinx/2025.1/gnu/aarch64/nt/aarch64-linux/bin/aarch64-linux-gnu-g++.exe")

set(CMAKE_C_FLAGS_INIT "--sysroot=${SYSROOT} -isystem ${SYSROOT}/usr/include")
set(CMAKE_CXX_FLAGS_INIT "--sysroot=${SYSROOT} -isystem ${SYSROOT}/usr/include")

set(CMAKE_FIND_ROOT_PATH "${SYSROOT}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

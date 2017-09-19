
#
# CMake defines to cross-compile to ARM/Ultibo on BCM2708 using glibc.
#

include(CMakeForceCompiler)

SET(CMAKE_SYSTEM_NAME Generic)
SET(CMAKE_C_COMPILER aarch64-none-elf-gcc)
SET(CMAKE_CXX_COMPILER aarch64-none-elf-g++)
SET(CMAKE_ASM_COMPILER aarch64-none-elf-gcc)
SET(CMAKE_SYSTEM_PROCESSOR aarch64)

add_definitions("-march=armv8-a")

# avoids annoying and pointless warnings from gcc
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -U_FORTIFY_SOURCE")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -c")

set(TC_PATH "")

CMAKE_FORCE_C_COMPILER(${TC_PATH}aarch64-none-elf-gcc GNU)
CMAKE_FORCE_CXX_COMPILER(${TC_PATH}aarch64-none-elf-g++ GNU)

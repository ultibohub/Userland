
#
# CMake defines to cross-compile to ARM/Ultibo on BCM2708 using glibc.
#

include(CMakeForceCompiler)

SET(CMAKE_SYSTEM_NAME Generic)
SET(CMAKE_C_COMPILER arm-none-eabi-gcc)
SET(CMAKE_CXX_COMPILER arm-none-eabi-g++)
SET(CMAKE_ASM_COMPILER arm-none-eabi-gcc)
SET(CMAKE_SYSTEM_PROCESSOR arm)

add_definitions("-mabi=aapcs -marm -march=armv7-a -mfpu=vfpv3-d16 -mfloat-abi=hard")

# avoids annoying and pointless warnings from gcc
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -U_FORTIFY_SOURCE")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -c")

set(TC_PATH "")

CMAKE_FORCE_C_COMPILER(${TC_PATH}arm-none-eabi-gcc GNU)
CMAKE_FORCE_CXX_COMPILER(${TC_PATH}arm-none-eabi-g++ GNU)

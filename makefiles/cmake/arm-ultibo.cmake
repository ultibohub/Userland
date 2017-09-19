# setup environment for cross compile to arm-ultibo

if (DEFINED CMAKE_TOOLCHAIN_FILE)
else()
   message(WARNING
	"  *********************************************************\n"
   	"  *   CMAKE_TOOLCHAIN_FILE not defined                    *\n"
	"  *   This is correct for compiling on the Raspberry Pi   *\n"
	"  *                                                       *\n"
	"  *   If you are cross-compiling on some other machine    *\n"
	"  *   then DELETE the build directory and re-run with:    *\n"
	"  *   -DCMAKE_TOOLCHAIN_FILE=toolchain_file.cmake         *\n"
	"  *                                                       *\n"
   	"  *   Toolchain files are in makefiles/cmake/toolchains.  *\n"
	"  *********************************************************"
       )
endif()

SET(CMAKE_C_FLAGS_RELEASE "-O2 -DNDEBUG")
SET(CMAKE_CXX_FLAGS_RELEASE "-O2 -DNDEBUG")
SET(CMAKE_ASM_FLAGS_RELEASE "-O2 -DNDEBUG")

set(SHARED "STATIC")

# enable static VCSM
set(KHRONOS_HAVE_VCSM TRUE)

# define Ultibo as the platform
add_definitions(-DULTIBO)

# enable dynamic reent support in newlib
add_definitions(-D__DYNAMIC_REENT__)

# enable sbrk
add_definitions(-D_HAVE_SBRK)

# enable posix threads and timers
add_definitions(-D_POSIX_THREADS)
add_definitions(-D_POSIX_TIMERS)
add_definitions(-D_UNIX98_THREAD_MUTEX_ATTRIBUTES)

# stop format warnings from being fatal
add_definitions(-Wno-error=format)

# pull in declarations of lseek64 and friends
add_definitions(-D_LARGEFILE64_SOURCE)


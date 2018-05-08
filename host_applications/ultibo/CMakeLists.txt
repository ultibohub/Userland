# Ultibo apps
set(ALL_APPS TRUE)

add_subdirectory(libs/bcm_host)
#add_subdirectory(apps/gencmd)
add_subdirectory(apps/tvservice)
#add_subdirectory(apps/vcmailbox)
if(NOT ARM64)
   add_subdirectory(apps/raspicam)
   add_subdirectory(libs/sm)
   add_subdirectory(apps/smem)
endif()

if(ALL_APPS)
 add_subdirectory(apps/hello_pi)
endif()


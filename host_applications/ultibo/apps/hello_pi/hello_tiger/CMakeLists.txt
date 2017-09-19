set(EXEC hello_tiger)
set(SRCS main.c tiger.c)
add_definitions(-D__RASPBERRYPI__)

add_library(${EXEC} ${SRCS})
target_link_libraries(${EXEC} ${HELLO_PI_LIBS})

install(TARGETS ${EXEC} DESTINATION lib)

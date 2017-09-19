set(EXEC hello_teapot)
set(SRCS triangle.c video.c models.c)

add_library(${EXEC} ${SRCS})
target_link_libraries(${EXEC} ${HELLO_PI_LIBS})

install(TARGETS ${EXEC} DESTINATION lib)

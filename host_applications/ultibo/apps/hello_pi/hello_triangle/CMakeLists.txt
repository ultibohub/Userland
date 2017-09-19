set(EXEC hello_triangle)
set(SRCS triangle.c)

add_library(${EXEC} ${SRCS})
target_link_libraries(${EXEC} ${HELLO_PI_LIBS})

install(TARGETS ${EXEC} DESTINATION lib)

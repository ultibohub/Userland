set(EXEC hello_triangle2)
set(SRCS triangle2.c)

add_library(${EXEC} ${SRCS})
target_link_libraries(${EXEC} ${HELLO_PI_LIBS})

install(TARGETS ${EXEC} DESTINATION lib)

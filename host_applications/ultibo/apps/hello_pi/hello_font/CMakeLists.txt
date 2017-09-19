set(EXEC hello_font)
set(SRCS main.c)

add_library(${EXEC} ${SRCS})
target_link_libraries(${EXEC} ${HELLO_PI_LIBS})
target_link_libraries(${EXEC} vgfont freetype z)

install(TARGETS ${EXEC} DESTINATION lib)

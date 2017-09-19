set(EXEC hello_mmal_encode)
set(SRCS mmal_encode.c)

add_library(${EXEC} ${SRCS})
target_link_libraries(${EXEC} ${HELLO_PI_LIBS} mmal mmal_core mmal_components mmal_util mmal_vc_client)

install(TARGETS ${EXEC} DESTINATION lib)

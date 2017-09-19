# hello_fft

set(EXEC hello_fft)
set(SRCS hello_fft.c mailbox.c gpu_fft.c gpu_fft_base.c gpu_fft_twiddles.c gpu_fft_shaders.c)

add_library(${EXEC} ${SRCS})
target_link_libraries(${EXEC} ${HELLO_PI_LIBS})

install(TARGETS ${EXEC} DESTINATION lib)

# hello_fft_2d

set(EXEC2D hello_fft_2d)
set(SRCS2D hello_fft_2d.c gpu_fft_trans.c mailbox.c gpu_fft.c gpu_fft_base.c gpu_fft_twiddles.c gpu_fft_shaders.c)

add_library(${EXEC2D} ${SRCS2D})
target_link_libraries(${EXEC2D} ${HELLO_PI_LIBS})

install(TARGETS ${EXEC2D} DESTINATION lib)

add_library(tvservice tvservice.c)
target_link_libraries(tvservice vchostif)

install(TARGETS tvservice DESTINATION lib)

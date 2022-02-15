cmake_minimum_required(VERSION 3.10)

# set the project name
project(Program VERSION 1.0)

# add the executable and the appropriate (static or dynamic) block library
add_subdirectory(source)
if(USE_SHARED_LIB)
    add_executable(dynamic_block program.c)
    target_link_libraries(dynamic_block PUBLIC DynamicBlock)

else()
    add_executable(static_block program.c)
    target_link_libraries(static_block PUBLIC StaticBlock)
endif()

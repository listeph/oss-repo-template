# optional use of a dynamic library instead of static
option(USE_SHARED_LIB "Use shared library instead of static" OFF)

# build the appropriately typed (static / dynamic) library from source file block.c
# interface usage requirement: programs using the library need to include header source dir
if(USE_SHARED_LIB)
    add_library(DynamicBlock SHARED block.c)
    target_include_directories(DynamicBlock INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/../headers)
else()
    add_library(StaticBlock STATIC block.c)
    target_include_directories(StaticBlock INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/../headers)
endif()
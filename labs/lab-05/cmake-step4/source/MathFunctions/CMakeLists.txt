add_library(MathFunctions mysqrt.cxx)

# interface usage requirement: anybody linking to us needs to include the current source dir
# to find MathFunctions.h, while we don't
target_include_directories(MathFunctions INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

# MODIFICATION: for MathFunctions we want to install the library and header file
install(TARGETS MathFunctions DESTINATION lib)
install(FILES MathFunctions.h DESTINATION include)
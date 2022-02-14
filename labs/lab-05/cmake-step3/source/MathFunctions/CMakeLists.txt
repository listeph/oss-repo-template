add_library(MathFunctions mysqrt.cxx)

# MODIFICATION: state that anybody linking to us needs to include the current source dir
# to find MathFunctions.h, while we don't (a.k.a. interface usage requirement).
target_include_directories(MathFunctions INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

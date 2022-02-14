cmake_minimum_required(VERSION 3.10)

# set the project name
project(Tutorial VERSION 1.0)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# optional use of our own math functions
option(USE_MYMATH "Use tutorial provided math implementation" ON)

# configure a header to pass in version number / cmake settings to source code
configure_file(TutorialConfig.h.in TutorialConfig.h)

# add the MathFunctions library if enabled
if(USE_MYMATH)
  add_subdirectory(MathFunctions)
  list(APPEND EXTRA_LIBS MathFunctions)
  # MODIFICATION: no longer have to explicitly include MathFunction source directory
  # list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/MathFunctions")
endif()

# add the executable
add_executable(Tutorial tutorial.cxx)

target_link_libraries(Tutorial PUBLIC ${EXTRA_LIBS})

# add binary tree (where TutorialConfig.h is written to) to the search path
# for include files
target_include_directories(Tutorial PUBLIC "${PROJECT_BINARY_DIR}")
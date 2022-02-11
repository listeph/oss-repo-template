cmake_minimum_required(VERSION 3.10)

# set the project name
project(Tutorial VERSION 1.0)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# add the executable
add_executable(Tutorial tutorial.cxx)

# configure a header to pass in version number to source code
configure_file(TutorialConfig.h.in TutorialConfig.h)

# add binary directory (where configuration file is written to) to path
target_include_directories(Tutorial PUBLIC "${PROJECT_BINARY_DIR}")
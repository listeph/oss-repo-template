# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build

# Include any dependencies generated for this target.
include source/CMakeFiles/DynamicBlock.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include source/CMakeFiles/DynamicBlock.dir/compiler_depend.make

# Include the progress variables for this target.
include source/CMakeFiles/DynamicBlock.dir/progress.make

# Include the compile flags for this target's objects.
include source/CMakeFiles/DynamicBlock.dir/flags.make

source/CMakeFiles/DynamicBlock.dir/block.c.o: source/CMakeFiles/DynamicBlock.dir/flags.make
source/CMakeFiles/DynamicBlock.dir/block.c.o: ../source/block.c
source/CMakeFiles/DynamicBlock.dir/block.c.o: source/CMakeFiles/DynamicBlock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object source/CMakeFiles/DynamicBlock.dir/block.c.o"
	cd /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/source && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT source/CMakeFiles/DynamicBlock.dir/block.c.o -MF CMakeFiles/DynamicBlock.dir/block.c.o.d -o CMakeFiles/DynamicBlock.dir/block.c.o -c /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/source/block.c

source/CMakeFiles/DynamicBlock.dir/block.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/DynamicBlock.dir/block.c.i"
	cd /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/source && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/source/block.c > CMakeFiles/DynamicBlock.dir/block.c.i

source/CMakeFiles/DynamicBlock.dir/block.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/DynamicBlock.dir/block.c.s"
	cd /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/source && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/source/block.c -o CMakeFiles/DynamicBlock.dir/block.c.s

# Object files for target DynamicBlock
DynamicBlock_OBJECTS = \
"CMakeFiles/DynamicBlock.dir/block.c.o"

# External object files for target DynamicBlock
DynamicBlock_EXTERNAL_OBJECTS =

source/libDynamicBlock.dylib: source/CMakeFiles/DynamicBlock.dir/block.c.o
source/libDynamicBlock.dylib: source/CMakeFiles/DynamicBlock.dir/build.make
source/libDynamicBlock.dylib: source/CMakeFiles/DynamicBlock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libDynamicBlock.dylib"
	cd /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/source && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DynamicBlock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
source/CMakeFiles/DynamicBlock.dir/build: source/libDynamicBlock.dylib
.PHONY : source/CMakeFiles/DynamicBlock.dir/build

source/CMakeFiles/DynamicBlock.dir/clean:
	cd /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/source && $(CMAKE_COMMAND) -P CMakeFiles/DynamicBlock.dir/cmake_clean.cmake
.PHONY : source/CMakeFiles/DynamicBlock.dir/clean

source/CMakeFiles/DynamicBlock.dir/depend:
	cd /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/source /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/source /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/source/CMakeFiles/DynamicBlock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/CMakeFiles/DynamicBlock.dir/depend


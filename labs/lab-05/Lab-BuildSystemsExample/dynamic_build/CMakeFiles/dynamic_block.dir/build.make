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
include CMakeFiles/dynamic_block.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dynamic_block.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dynamic_block.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dynamic_block.dir/flags.make

CMakeFiles/dynamic_block.dir/program.c.o: CMakeFiles/dynamic_block.dir/flags.make
CMakeFiles/dynamic_block.dir/program.c.o: ../program.c
CMakeFiles/dynamic_block.dir/program.c.o: CMakeFiles/dynamic_block.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/dynamic_block.dir/program.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/dynamic_block.dir/program.c.o -MF CMakeFiles/dynamic_block.dir/program.c.o.d -o CMakeFiles/dynamic_block.dir/program.c.o -c /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/program.c

CMakeFiles/dynamic_block.dir/program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dynamic_block.dir/program.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/program.c > CMakeFiles/dynamic_block.dir/program.c.i

CMakeFiles/dynamic_block.dir/program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dynamic_block.dir/program.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/program.c -o CMakeFiles/dynamic_block.dir/program.c.s

# Object files for target dynamic_block
dynamic_block_OBJECTS = \
"CMakeFiles/dynamic_block.dir/program.c.o"

# External object files for target dynamic_block
dynamic_block_EXTERNAL_OBJECTS =

dynamic_block: CMakeFiles/dynamic_block.dir/program.c.o
dynamic_block: CMakeFiles/dynamic_block.dir/build.make
dynamic_block: source/libDynamicBlock.dylib
dynamic_block: CMakeFiles/dynamic_block.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable dynamic_block"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dynamic_block.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dynamic_block.dir/build: dynamic_block
.PHONY : CMakeFiles/dynamic_block.dir/build

CMakeFiles/dynamic_block.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dynamic_block.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dynamic_block.dir/clean

CMakeFiles/dynamic_block.dir/depend:
	cd /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build /Users/steph/Desktop/oss-repo-template/labs/lab-05/Lab-BuildSystemsExample/dynamic_build/CMakeFiles/dynamic_block.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dynamic_block.dir/depend


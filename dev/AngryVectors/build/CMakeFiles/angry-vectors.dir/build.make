# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/build

# Include any dependencies generated for this target.
include CMakeFiles/angry-vectors.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/angry-vectors.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/angry-vectors.dir/flags.make

CMakeFiles/angry-vectors.dir/angry_vectors.cc.o: CMakeFiles/angry-vectors.dir/flags.make
CMakeFiles/angry-vectors.dir/angry_vectors.cc.o: ../angry_vectors.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/angry-vectors.dir/angry_vectors.cc.o"
	/soft/gcc/7.1.0/Linux_x86_64/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/angry-vectors.dir/angry_vectors.cc.o -c /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/angry_vectors.cc

CMakeFiles/angry-vectors.dir/angry_vectors.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/angry-vectors.dir/angry_vectors.cc.i"
	/soft/gcc/7.1.0/Linux_x86_64/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/angry_vectors.cc > CMakeFiles/angry-vectors.dir/angry_vectors.cc.i

CMakeFiles/angry-vectors.dir/angry_vectors.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/angry-vectors.dir/angry_vectors.cc.s"
	/soft/gcc/7.1.0/Linux_x86_64/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/angry_vectors.cc -o CMakeFiles/angry-vectors.dir/angry_vectors.cc.s

CMakeFiles/angry-vectors.dir/main.cc.o: CMakeFiles/angry-vectors.dir/flags.make
CMakeFiles/angry-vectors.dir/main.cc.o: ../main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/angry-vectors.dir/main.cc.o"
	/soft/gcc/7.1.0/Linux_x86_64/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/angry-vectors.dir/main.cc.o -c /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/main.cc

CMakeFiles/angry-vectors.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/angry-vectors.dir/main.cc.i"
	/soft/gcc/7.1.0/Linux_x86_64/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/main.cc > CMakeFiles/angry-vectors.dir/main.cc.i

CMakeFiles/angry-vectors.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/angry-vectors.dir/main.cc.s"
	/soft/gcc/7.1.0/Linux_x86_64/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/main.cc -o CMakeFiles/angry-vectors.dir/main.cc.s

# Object files for target angry-vectors
angry__vectors_OBJECTS = \
"CMakeFiles/angry-vectors.dir/angry_vectors.cc.o" \
"CMakeFiles/angry-vectors.dir/main.cc.o"

# External object files for target angry-vectors
angry__vectors_EXTERNAL_OBJECTS =

angry-vectors: CMakeFiles/angry-vectors.dir/angry_vectors.cc.o
angry-vectors: CMakeFiles/angry-vectors.dir/main.cc.o
angry-vectors: CMakeFiles/angry-vectors.dir/build.make
angry-vectors: /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/lib/MinGfx-1.0/libMinGfx.a
angry-vectors: /usr/lib/x86_64-linux-gnu/libGL.so
angry-vectors: /usr/lib/x86_64-linux-gnu/libGLU.so
angry-vectors: /usr/lib/x86_64-linux-gnu/libGL.so
angry-vectors: /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/lib/libnanogui.so
angry-vectors: CMakeFiles/angry-vectors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable angry-vectors"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/angry-vectors.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/angry-vectors.dir/build: angry-vectors

.PHONY : CMakeFiles/angry-vectors.dir/build

CMakeFiles/angry-vectors.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/angry-vectors.dir/cmake_clean.cmake
.PHONY : CMakeFiles/angry-vectors.dir/clean

CMakeFiles/angry-vectors.dir/depend:
	cd /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/build /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/build /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/AngryVectors/build/CMakeFiles/angry-vectors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/angry-vectors.dir/depend


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
CMAKE_SOURCE_DIR = /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build

# Include any dependencies generated for this target.
include tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/depend.make

# Include the progress variables for this target.
include tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/progress.make

# Include the compile flags for this target's objects.
include tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/flags.make

tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/main.cc.o: tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/flags.make
tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/main.cc.o: ../tests/blank_window/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/main.cc.o"
	cd /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build/tests/blank_window && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mingfx-test-blank-window.dir/main.cc.o -c /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/tests/blank_window/main.cc

tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mingfx-test-blank-window.dir/main.cc.i"
	cd /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build/tests/blank_window && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/tests/blank_window/main.cc > CMakeFiles/mingfx-test-blank-window.dir/main.cc.i

tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mingfx-test-blank-window.dir/main.cc.s"
	cd /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build/tests/blank_window && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/tests/blank_window/main.cc -o CMakeFiles/mingfx-test-blank-window.dir/main.cc.s

# Object files for target mingfx-test-blank-window
mingfx__test__blank__window_OBJECTS = \
"CMakeFiles/mingfx-test-blank-window.dir/main.cc.o"

# External object files for target mingfx-test-blank-window
mingfx__test__blank__window_EXTERNAL_OBJECTS =

tests/blank_window/mingfx-test-blank-window: tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/main.cc.o
tests/blank_window/mingfx-test-blank-window: tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/build.make
tests/blank_window/mingfx-test-blank-window: libMinGfx.a
tests/blank_window/mingfx-test-blank-window: /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/lib/libnanogui.so
tests/blank_window/mingfx-test-blank-window: /usr/lib/x86_64-linux-gnu/libGLU.so
tests/blank_window/mingfx-test-blank-window: /usr/lib/x86_64-linux-gnu/libGL.so
tests/blank_window/mingfx-test-blank-window: tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mingfx-test-blank-window"
	cd /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build/tests/blank_window && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mingfx-test-blank-window.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/build: tests/blank_window/mingfx-test-blank-window

.PHONY : tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/build

tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/clean:
	cd /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build/tests/blank_window && $(CMAKE_COMMAND) -P CMakeFiles/mingfx-test-blank-window.dir/cmake_clean.cmake
.PHONY : tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/clean

tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/depend:
	cd /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/tests/blank_window /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build/tests/blank_window /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/build/tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/blank_window/CMakeFiles/mingfx-test-blank-window.dir/depend


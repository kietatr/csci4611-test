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
CMAKE_SOURCE_DIR = /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/build

# Include any dependencies generated for this target.
include CMakeFiles/a2-carsoccer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/a2-carsoccer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/a2-carsoccer.dir/flags.make

CMakeFiles/a2-carsoccer.dir/car_soccer.cc.o: CMakeFiles/a2-carsoccer.dir/flags.make
CMakeFiles/a2-carsoccer.dir/car_soccer.cc.o: ../car_soccer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/a2-carsoccer.dir/car_soccer.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2-carsoccer.dir/car_soccer.cc.o -c /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/car_soccer.cc

CMakeFiles/a2-carsoccer.dir/car_soccer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2-carsoccer.dir/car_soccer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/car_soccer.cc > CMakeFiles/a2-carsoccer.dir/car_soccer.cc.i

CMakeFiles/a2-carsoccer.dir/car_soccer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2-carsoccer.dir/car_soccer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/car_soccer.cc -o CMakeFiles/a2-carsoccer.dir/car_soccer.cc.s

CMakeFiles/a2-carsoccer.dir/main.cc.o: CMakeFiles/a2-carsoccer.dir/flags.make
CMakeFiles/a2-carsoccer.dir/main.cc.o: ../main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/a2-carsoccer.dir/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2-carsoccer.dir/main.cc.o -c /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/main.cc

CMakeFiles/a2-carsoccer.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2-carsoccer.dir/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/main.cc > CMakeFiles/a2-carsoccer.dir/main.cc.i

CMakeFiles/a2-carsoccer.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2-carsoccer.dir/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/main.cc -o CMakeFiles/a2-carsoccer.dir/main.cc.s

# Object files for target a2-carsoccer
a2__carsoccer_OBJECTS = \
"CMakeFiles/a2-carsoccer.dir/car_soccer.cc.o" \
"CMakeFiles/a2-carsoccer.dir/main.cc.o"

# External object files for target a2-carsoccer
a2__carsoccer_EXTERNAL_OBJECTS =

a2-carsoccer: CMakeFiles/a2-carsoccer.dir/car_soccer.cc.o
a2-carsoccer: CMakeFiles/a2-carsoccer.dir/main.cc.o
a2-carsoccer: CMakeFiles/a2-carsoccer.dir/build.make
a2-carsoccer: /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/lib/MinGfx-1.0/libMinGfx.a
a2-carsoccer: /usr/lib/x86_64-linux-gnu/libGL.so
a2-carsoccer: /usr/lib/x86_64-linux-gnu/libGLU.so
a2-carsoccer: /usr/lib/x86_64-linux-gnu/libGL.so
a2-carsoccer: /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/lib/libnanogui.so
a2-carsoccer: CMakeFiles/a2-carsoccer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable a2-carsoccer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/a2-carsoccer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/a2-carsoccer.dir/build: a2-carsoccer

.PHONY : CMakeFiles/a2-carsoccer.dir/build

CMakeFiles/a2-carsoccer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/a2-carsoccer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/a2-carsoccer.dir/clean

CMakeFiles/a2-carsoccer.dir/depend:
	cd /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/build /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/build /home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/a2-carsoccer/build/CMakeFiles/a2-carsoccer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/a2-carsoccer.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /opt/clion-2017.3.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2017.3.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/CLionProjects/socketNote

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/CLionProjects/socketNote/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/socketServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/socketServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/socketServer.dir/flags.make

CMakeFiles/socketServer.dir/socketServer.cpp.o: CMakeFiles/socketServer.dir/flags.make
CMakeFiles/socketServer.dir/socketServer.cpp.o: ../socketServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/CLionProjects/socketNote/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/socketServer.dir/socketServer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socketServer.dir/socketServer.cpp.o -c /root/CLionProjects/socketNote/socketServer.cpp

CMakeFiles/socketServer.dir/socketServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socketServer.dir/socketServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/CLionProjects/socketNote/socketServer.cpp > CMakeFiles/socketServer.dir/socketServer.cpp.i

CMakeFiles/socketServer.dir/socketServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socketServer.dir/socketServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/CLionProjects/socketNote/socketServer.cpp -o CMakeFiles/socketServer.dir/socketServer.cpp.s

CMakeFiles/socketServer.dir/socketServer.cpp.o.requires:

.PHONY : CMakeFiles/socketServer.dir/socketServer.cpp.o.requires

CMakeFiles/socketServer.dir/socketServer.cpp.o.provides: CMakeFiles/socketServer.dir/socketServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/socketServer.dir/build.make CMakeFiles/socketServer.dir/socketServer.cpp.o.provides.build
.PHONY : CMakeFiles/socketServer.dir/socketServer.cpp.o.provides

CMakeFiles/socketServer.dir/socketServer.cpp.o.provides.build: CMakeFiles/socketServer.dir/socketServer.cpp.o


# Object files for target socketServer
socketServer_OBJECTS = \
"CMakeFiles/socketServer.dir/socketServer.cpp.o"

# External object files for target socketServer
socketServer_EXTERNAL_OBJECTS =

socketServer: CMakeFiles/socketServer.dir/socketServer.cpp.o
socketServer: CMakeFiles/socketServer.dir/build.make
socketServer: CMakeFiles/socketServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/CLionProjects/socketNote/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable socketServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socketServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/socketServer.dir/build: socketServer

.PHONY : CMakeFiles/socketServer.dir/build

CMakeFiles/socketServer.dir/requires: CMakeFiles/socketServer.dir/socketServer.cpp.o.requires

.PHONY : CMakeFiles/socketServer.dir/requires

CMakeFiles/socketServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/socketServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/socketServer.dir/clean

CMakeFiles/socketServer.dir/depend:
	cd /root/CLionProjects/socketNote/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/CLionProjects/socketNote /root/CLionProjects/socketNote /root/CLionProjects/socketNote/cmake-build-debug /root/CLionProjects/socketNote/cmake-build-debug /root/CLionProjects/socketNote/cmake-build-debug/CMakeFiles/socketServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/socketServer.dir/depend

# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lubo/Documents/dev/Planet

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lubo/Documents/dev/Planet

# Include any dependencies generated for this target.
include CMakeFiles/planets.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/planets.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/planets.dir/flags.make

CMakeFiles/planets.dir/src/Planet.cpp.o: CMakeFiles/planets.dir/flags.make
CMakeFiles/planets.dir/src/Planet.cpp.o: src/Planet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lubo/Documents/dev/Planet/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/planets.dir/src/Planet.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/planets.dir/src/Planet.cpp.o -c /Users/lubo/Documents/dev/Planet/src/Planet.cpp

CMakeFiles/planets.dir/src/Planet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/planets.dir/src/Planet.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lubo/Documents/dev/Planet/src/Planet.cpp > CMakeFiles/planets.dir/src/Planet.cpp.i

CMakeFiles/planets.dir/src/Planet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/planets.dir/src/Planet.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lubo/Documents/dev/Planet/src/Planet.cpp -o CMakeFiles/planets.dir/src/Planet.cpp.s

# Object files for target planets
planets_OBJECTS = \
"CMakeFiles/planets.dir/src/Planet.cpp.o"

# External object files for target planets
planets_EXTERNAL_OBJECTS =

bin/libplanets.a: CMakeFiles/planets.dir/src/Planet.cpp.o
bin/libplanets.a: CMakeFiles/planets.dir/build.make
bin/libplanets.a: CMakeFiles/planets.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lubo/Documents/dev/Planet/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library bin/libplanets.a"
	$(CMAKE_COMMAND) -P CMakeFiles/planets.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/planets.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/planets.dir/build: bin/libplanets.a

.PHONY : CMakeFiles/planets.dir/build

CMakeFiles/planets.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/planets.dir/cmake_clean.cmake
.PHONY : CMakeFiles/planets.dir/clean

CMakeFiles/planets.dir/depend:
	cd /Users/lubo/Documents/dev/Planet && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lubo/Documents/dev/Planet /Users/lubo/Documents/dev/Planet /Users/lubo/Documents/dev/Planet /Users/lubo/Documents/dev/Planet /Users/lubo/Documents/dev/Planet/CMakeFiles/planets.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/planets.dir/depend

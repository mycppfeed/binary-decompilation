# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.5.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.5.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sdasgup3/Github/binary-decompilation/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sdasgup3/Github/binary-decompilation/source/build

# Include any dependencies generated for this target.
include max_stack_height/CMakeFiles/max_stack_height.dir/depend.make

# Include the progress variables for this target.
include max_stack_height/CMakeFiles/max_stack_height.dir/progress.make

# Include the compile flags for this target's objects.
include max_stack_height/CMakeFiles/max_stack_height.dir/flags.make

max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o: max_stack_height/CMakeFiles/max_stack_height.dir/flags.make
max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o: ../max_stack_height/max_stack_height.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sdasgup3/Github/binary-decompilation/source/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o"
	cd /Users/sdasgup3/Github/binary-decompilation/source/build/max_stack_height && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o -c /Users/sdasgup3/Github/binary-decompilation/source/max_stack_height/max_stack_height.cpp

max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/max_stack_height.dir/max_stack_height.cpp.i"
	cd /Users/sdasgup3/Github/binary-decompilation/source/build/max_stack_height && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sdasgup3/Github/binary-decompilation/source/max_stack_height/max_stack_height.cpp > CMakeFiles/max_stack_height.dir/max_stack_height.cpp.i

max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/max_stack_height.dir/max_stack_height.cpp.s"
	cd /Users/sdasgup3/Github/binary-decompilation/source/build/max_stack_height && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sdasgup3/Github/binary-decompilation/source/max_stack_height/max_stack_height.cpp -o CMakeFiles/max_stack_height.dir/max_stack_height.cpp.s

max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o.requires:

.PHONY : max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o.requires

max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o.provides: max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o.requires
	$(MAKE) -f max_stack_height/CMakeFiles/max_stack_height.dir/build.make max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o.provides.build
.PHONY : max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o.provides

max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o.provides.build: max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o


# Object files for target max_stack_height
max_stack_height_OBJECTS = \
"CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o"

# External object files for target max_stack_height
max_stack_height_EXTERNAL_OBJECTS =

max_stack_height/libmax_stack_height.a: max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o
max_stack_height/libmax_stack_height.a: max_stack_height/CMakeFiles/max_stack_height.dir/build.make
max_stack_height/libmax_stack_height.a: max_stack_height/CMakeFiles/max_stack_height.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sdasgup3/Github/binary-decompilation/source/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmax_stack_height.a"
	cd /Users/sdasgup3/Github/binary-decompilation/source/build/max_stack_height && $(CMAKE_COMMAND) -P CMakeFiles/max_stack_height.dir/cmake_clean_target.cmake
	cd /Users/sdasgup3/Github/binary-decompilation/source/build/max_stack_height && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/max_stack_height.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
max_stack_height/CMakeFiles/max_stack_height.dir/build: max_stack_height/libmax_stack_height.a

.PHONY : max_stack_height/CMakeFiles/max_stack_height.dir/build

max_stack_height/CMakeFiles/max_stack_height.dir/requires: max_stack_height/CMakeFiles/max_stack_height.dir/max_stack_height.cpp.o.requires

.PHONY : max_stack_height/CMakeFiles/max_stack_height.dir/requires

max_stack_height/CMakeFiles/max_stack_height.dir/clean:
	cd /Users/sdasgup3/Github/binary-decompilation/source/build/max_stack_height && $(CMAKE_COMMAND) -P CMakeFiles/max_stack_height.dir/cmake_clean.cmake
.PHONY : max_stack_height/CMakeFiles/max_stack_height.dir/clean

max_stack_height/CMakeFiles/max_stack_height.dir/depend:
	cd /Users/sdasgup3/Github/binary-decompilation/source/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sdasgup3/Github/binary-decompilation/source /Users/sdasgup3/Github/binary-decompilation/source/max_stack_height /Users/sdasgup3/Github/binary-decompilation/source/build /Users/sdasgup3/Github/binary-decompilation/source/build/max_stack_height /Users/sdasgup3/Github/binary-decompilation/source/build/max_stack_height/CMakeFiles/max_stack_height.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : max_stack_height/CMakeFiles/max_stack_height.dir/depend

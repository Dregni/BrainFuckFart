# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dregni/Documents/Prog/CPP/brainfuckfart

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dregni/Documents/Prog/CPP/brainfuckfart/build

# Include any dependencies generated for this target.
include CMakeFiles/bff.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bff.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bff.dir/flags.make

CMakeFiles/bff.dir/main.cpp.o: CMakeFiles/bff.dir/flags.make
CMakeFiles/bff.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dregni/Documents/Prog/CPP/brainfuckfart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bff.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bff.dir/main.cpp.o -c /home/dregni/Documents/Prog/CPP/brainfuckfart/main.cpp

CMakeFiles/bff.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bff.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dregni/Documents/Prog/CPP/brainfuckfart/main.cpp > CMakeFiles/bff.dir/main.cpp.i

CMakeFiles/bff.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bff.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dregni/Documents/Prog/CPP/brainfuckfart/main.cpp -o CMakeFiles/bff.dir/main.cpp.s

CMakeFiles/bff.dir/sources/Interpreter.cpp.o: CMakeFiles/bff.dir/flags.make
CMakeFiles/bff.dir/sources/Interpreter.cpp.o: ../sources/Interpreter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dregni/Documents/Prog/CPP/brainfuckfart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/bff.dir/sources/Interpreter.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bff.dir/sources/Interpreter.cpp.o -c /home/dregni/Documents/Prog/CPP/brainfuckfart/sources/Interpreter.cpp

CMakeFiles/bff.dir/sources/Interpreter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bff.dir/sources/Interpreter.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dregni/Documents/Prog/CPP/brainfuckfart/sources/Interpreter.cpp > CMakeFiles/bff.dir/sources/Interpreter.cpp.i

CMakeFiles/bff.dir/sources/Interpreter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bff.dir/sources/Interpreter.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dregni/Documents/Prog/CPP/brainfuckfart/sources/Interpreter.cpp -o CMakeFiles/bff.dir/sources/Interpreter.cpp.s

# Object files for target bff
bff_OBJECTS = \
"CMakeFiles/bff.dir/main.cpp.o" \
"CMakeFiles/bff.dir/sources/Interpreter.cpp.o"

# External object files for target bff
bff_EXTERNAL_OBJECTS =

bff: CMakeFiles/bff.dir/main.cpp.o
bff: CMakeFiles/bff.dir/sources/Interpreter.cpp.o
bff: CMakeFiles/bff.dir/build.make
bff: CMakeFiles/bff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dregni/Documents/Prog/CPP/brainfuckfart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable bff"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bff.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bff.dir/build: bff

.PHONY : CMakeFiles/bff.dir/build

CMakeFiles/bff.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bff.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bff.dir/clean

CMakeFiles/bff.dir/depend:
	cd /home/dregni/Documents/Prog/CPP/brainfuckfart/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dregni/Documents/Prog/CPP/brainfuckfart /home/dregni/Documents/Prog/CPP/brainfuckfart /home/dregni/Documents/Prog/CPP/brainfuckfart/build /home/dregni/Documents/Prog/CPP/brainfuckfart/build /home/dregni/Documents/Prog/CPP/brainfuckfart/build/CMakeFiles/bff.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bff.dir/depend

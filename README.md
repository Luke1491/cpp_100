# cpp_100

C++ 100 exercises

# Using the Makefile

## Compiling the Program

To compile the program, follow these steps:

1. Make sure you have `g++` installed on your system. If not, install it using your package manager.
2. Place your C++ source files in the `src` directory.
3. Open a terminal and navigate to the directory containing the Makefile and your source files.
4. Run the command `make SRCDIR=path/to/files` to compile the program. This will generate an executable named `program`.

example (compile program form exercise #1):

> make SRCDIR=1

## Cleaning Up

To clean up generated files, run the command `make clean` in the terminal. This will remove all object files and the executable.

# Makefile for C++ program

# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++20 -Wall

# Default folder containing source files
SRCDIR = src

# Source files (with path)
SRCS = $(wildcard $(SRCDIR)/*.cpp)

# Object files (with path)
OBJS = $(SRCS:$(SRCDIR)/%.cpp=target/%.o)

# Executable name
EXEC = target/program

# Default target
all: $(EXEC)

# Compile source files into object files
target/%.o: $(SRCDIR)/%.cpp | target
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Link object files into executable
$(EXEC): $(OBJS) | target
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(EXEC)

# Create target directory if it doesn't exist
target:
	mkdir -p target

# Clean generated files
clean:
	rm -rf target

.PHONY: all clean

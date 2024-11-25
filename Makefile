# Variables
BUILD_DIR = build
SRC_DIR = src
TARGET = disasm
CMAKE_FLAGS = -DCMAKE_BUILD_TYPE=Release

# Default target
.PHONY: all
all: configure build

# Create build directory and configure project
.PHONY: configure
configure:
	@echo "Configuring project..."
	@mkdir -p $(BUILD_DIR)
	@cmake -S . -B $(BUILD_DIR) $(CMAKE_FLAGS)

# Build the project
.PHONY: build
build:
	@echo "Building project..."
	@cmake --build $(BUILD_DIR)

# Run tests (if defined in your project)
.PHONY: test
test:
	@echo "Running tests..."
	@cd $(BUILD_DIR) && ctest

# Clean build directory
.PHONY: clean
clean:
	@echo "Cleaning build directory..."
	@rm -rf $(BUILD_DIR)

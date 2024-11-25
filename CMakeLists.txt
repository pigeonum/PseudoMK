cmake_minimum_required(VERSION 3.28)
project(pseudoMK C)

set(CMAKE_C_STANDARD 17)

add_executable(disasm
        src/disasm.c)

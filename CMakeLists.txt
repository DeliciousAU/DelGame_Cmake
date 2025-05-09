cmake_minimum_required(VERSION 3.5)
project(DelGame_Cmake)

set(CMAKE_CXX_STANDARD 11)

# Output the final .exe to /build/bin
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Add Raylib from the embedded source
add_subdirectory(external/raylib)

# Include Raylib headers
include_directories(external/raylib/src)

# Your main source file
add_executable(${PROJECT_NAME} src/main.cpp)

# Link Raylib + system dependencies
target_link_libraries(${PROJECT_NAME} raylib winmm gdi32 opengl32 shell32)

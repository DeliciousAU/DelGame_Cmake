cmake_minimum_required(VERSION 3.5)
project(DelGame_Cmake)

# Use C++11
set(CMAKE_CXX_STANDARD 11)

# Output .exe to build/bin
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Collect all Raylib .c files from embedded copy
file(GLOB RAYLIB_SOURCES "external/raylib/src/*.c")

# Include Raylib headers
include_directories(external/raylib/src)

# Your game's source files
add_executable(${PROJECT_NAME}
  src/main.cpp
  ${RAYLIB_SOURCES}
)

# Link with required Windows system libraries
target_link_libraries(${PROJECT_NAME}
  winmm
  gdi32
  opengl32
  shell32
)

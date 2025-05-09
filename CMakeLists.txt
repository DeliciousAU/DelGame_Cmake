cmake_minimum_required(VERSION 3.10)
project(DelGame_Cmake C)

# Use Release build by default
set(CMAKE_BUILD_TYPE Release)

# Set C standard
set(CMAKE_C_STANDARD 99)

# Add Raylib
add_subdirectory(external/raylib)

# Add your source files
file(GLOB_RECURSE SOURCES
    src/*.c
    src/*.cpp
)

# Create executable
add_executable(DelGame_Cmake ${SOURCES})

# Link Raylib and required system libraries
target_link_libraries(DelGame_Cmake raylib)

# Optional: Link Windows multimedia and OpenGL libs (required for Raylib on Windows)
if (WIN32)
    target_link_libraries(DelGame_Cmake winmm gdi32 opengl32)
endif()

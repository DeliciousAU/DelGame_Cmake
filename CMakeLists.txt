cmake_minimum_required(VERSION 3.5)
project(DelGame_Cmake)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)

# Output .exe to /bin
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Manually specify Raylib core sources
set(RAYLIB_SRC
    external/raylib/src/rcore.c
    external/raylib/src/rshapes.c
    external/raylib/src/rtextures.c
    external/raylib/src/rtext.c
    external/raylib/src/rmodels.c
    external/raylib/src/utils.c
    external/raylib/src/raudio.c
)

# Add required platform source for Windows (GLFW backend)
set(RAYLIB_PLATFORM_SRC
    external/raylib/src/rglfw.c
    external/raylib/src/rlgl.c
)

# Include Raylib headers
include_directories(external/raylib/src)

# Add your game source files
add_executable(${PROJECT_NAME}
    src/main.cpp
    ${RAYLIB_SRC}
    ${RAYLIB_PLATFORM_SRC}
)

# Link with required Windows system libraries
target_link_libraries(${PROJECT_NAME}
    winmm
    gdi32
    opengl32
    shell32
)

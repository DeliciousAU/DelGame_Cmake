cmake_minimum_required(VERSION 3.5)
project(DelGame_Cmake)

set(CMAKE_CXX_STANDARD 11)

# 🟦 Update this path if your raylib is elsewhere
include_directories(C:/raylib/raylib/src)
link_directories(C:/raylib/raylib/build/raylib/Release)


# Optional: put the .exe in build/bin
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR}/bin)


# Your source file(s)
add_executable(${PROJECT_NAME} src/main.cpp)

# Link Raylib + system libs
target_link_libraries(${PROJECT_NAME}
    raylib
    winmm
    gdi32
    opengl32
    shell32
)

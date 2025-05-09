#include "raylib.h"

int main() {
    InitWindow(800, 450, "DelGame_Cmake");
    SetTargetFPS(60);
    while (WindowShouldClose() == false) {
        BeginDrawing();
        ClearBackground(RAYWHITE);
        DrawText("CMake build running", 10, 10, 20, DARKGRAY);
        EndDrawing();
    }

    CloseWindow();
    return 0;
}

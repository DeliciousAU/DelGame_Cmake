#include "raylib.h"

int main() {
    // basic Raylib test
    InitWindow(800, 600, "DelGame_Cmake Test");
    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(RAYWHITE);
        DrawText("Hello from DelGame_Cmake!", 190, 200, 20, LIGHTGRAY);
        EndDrawing();
    }
    CloseWindow();
    return 0;
}

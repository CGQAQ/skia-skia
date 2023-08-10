@echo off
REM Build the project
echo "Building the project..."

cd ./skia-cmake
cmake -S . -B ../build -DCMAKE_BUILD_TYPE=Release
cmake --build ../build --config Release
#/usr/bin/env sh

# Build the project
echo "Building the project..."
pushd ./skia-cmake
cmake -S . -B ../build -DCMAKE_BUILD_TYPE=Release
cmake --build ../build --config Release
popd
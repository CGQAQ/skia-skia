cmake_minimum_required(VERSION 3.21)

project (
    skia-cmake 
    LANGUAGES CXX
    VERSION 0.0.1)


set(CMAKE_CXX_STANDARD 20)


set(SKIA_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../skia)
set(SKIA_BUILD_DIR ${CMAKE_CURRENT_BINARY_DIR}../build)
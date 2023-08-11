# bazel //src/android
set(SKIA_ANDROID_ROOT "${SKIA_ROOT_SRC_DIR}/android")

set(
        SKIA_SRC_ANDROID_SRCS
        "${SKIA_ANDROID_ROOT}/SkAndroidFrameworkUtils.cpp"
        "${SKIA_ANDROID_ROOT}/SkAnimatedImage.cpp"
)

message(STATUS "SKIA_SRC_ANDROID_SRCS=${SKIA_SRC_ANDROID_SRCS}")
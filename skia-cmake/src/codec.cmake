# bazel //src/codec
set(SKIA_CODEC_ROOT "${SKIA_ROOT_SRC_DIR}/codec")


# CORE_FILES
split_srcs_and_hdrs_relative(
        SKIA_CODEC_CORE
        "${SKIA_CODEC_ROOT}"
        "SkCodec.cpp"
        "SkCodecImageGenerator.cpp"
        "SkCodecImageGenerator.h"
        "SkCodecPriv.h"
        "SkColorPalette.cpp"
        "SkColorPalette.h"
        "SkFrameHolder.h"
        "SkMaskSwizzler.cpp"
        "SkMaskSwizzler.h"
        "SkMasks.cpp"
        "SkMasks.h"
        "SkPixmapUtils.cpp"
        "SkPixmapUtilsPriv.h"
        "SkSampler.cpp"
        "SkSampler.h"
        "SkSwizzler.cpp"
        "SkSwizzler.h"
)

# DECODE_ANDROID_FILES
split_srcs_and_hdrs_relative(
        SKIA_CODEC_DECODE_ANDROID
        "${SKIA_CODEC_ROOT}"
        "SkAndroidCodec.cpp"
        "SkAndroidCodecAdapter.cpp"
        "SkAndroidCodecAdapter.h"
        "SkSampledCodec.cpp"
        "SkSampledCodec.h"
)

# DECODE_BMP_FILES
split_srcs_and_hdrs_relative(
        SKIA_CODEC_DECODE_BMP
        "${SKIA_CODEC_ROOT}"
        "SkBmpBaseCodec.cpp"
        "SkBmpBaseCodec.h"
        "SkBmpCodec.cpp"
        "SkBmpCodec.h"
        "SkBmpMaskCodec.cpp"
        "SkBmpMaskCodec.h"
        "SkBmpRLECodec.cpp"
        "SkBmpRLECodec.h"
        "SkBmpStandardCodec.cpp"
        "SkBmpStandardCodec.h"
        "SkWbmpCodec.cpp"
        "SkWbmpCodec.h"
)

# DECODE_GIF_FILES
split_srcs_and_hdrs_relative(
        SKIA_CODEC_DECODE_GIF
        "${SKIA_CODEC_ROOT}"
        "SkScalingCodec.h"
        "SkWuffsCodec.cpp"
)

# DECODE_JPEG_FILES
split_srcs_and_hdrs_relative(
        SKIA_CODEC_DECODE_JPEG
        "${SKIA_CODEC_ROOT}"
        "SkEncodedInfo.cpp"
        "SkJpegCodec.cpp"
        "SkJpegCodec.h"
        "SkJpegConstants.h"
        "SkJpegDecoderMgr.cpp"
        "SkJpegDecoderMgr.h"
        "SkJpegSourceMgr.cpp"
        "SkJpegSourceMgr.h"
        "SkJpegUtility.cpp"
        "SkJpegUtility.h"
        "SkParseEncodedOrigin.cpp"
        "SkParseEncodedOrigin.h"
)

# DECODE_XMP_FILES
set(
        SKIA_CODEC_XMP_SRCS_FILES
        "SkXmp.cpp"
)
foreach (SKIA_CODEC_XMP_SRCS_FILE ${SKIA_CODEC_XMP_SRCS_FILES})
    list(APPEND SKIA_CODEC_XMP_SRCS "${SKIA_CODEC_ROOT}/${SKIA_CODEC_XMP_SRCS_FILE}")
endforeach ()
unset(SKIA_CODEC_XMP_SRCS_FILES)
message(STATUS "SKIA_CODEC_XMP_SRCS: ${SKIA_CODEC_XMP_SRCS}")

# DECODE_PNG_FILES
split_srcs_and_hdrs_relative(
        SKIA_CODEC_DECODE_PNG
        "${SKIA_CODEC_ROOT}"
        "SkEncodedInfo.cpp"
        "SkIcoCodec.cpp"
        "SkIcoCodec.h"
        "SkPngCodec.cpp"
        "SkPngCodec.h"
)

# DECODE_RAW_FILES
split_srcs_and_hdrs_relative(
        SKIA_CODEC_DECODE_RAW
        "${SKIA_CODEC_ROOT}"
        "SkRawCodec.cpp"
        "SkRawCodec.h"
)

# DECODE_WEBP_FILES
split_srcs_and_hdrs_relative(
        SKIA_CODEC_DECODE_WEBP
        "${SKIA_CODEC_ROOT}"
        "SkEncodedInfo.cpp"
        "SkParseEncodedOrigin.cpp"
        "SkParseEncodedOrigin.h"
        "SkScalingCodec.h"
        "SkWebpCodec.cpp"
        "SkWebpCodec.h"
)

# DECODE_AVIF_FILES
split_srcs_and_hdrs_relative(
        SKIA_CODEC_DECODE_AVIF
        "${SKIA_CODEC_ROOT}"
        "SkAvifCodec.cpp"
        "SkAvifCodec.h"
        "SkScalingCodec.h"
)

# DECODE_JXL_FILES
split_srcs_and_hdrs_relative(
        SKIA_CODEC_DECODE_JXL
        "${SKIA_CODEC_ROOT}"
        "SkJpegxlCodec.cpp"
        "SkJpegxlCodec.h"
        "SkScalingCodec.h"
)

# TODO: Compiler flags
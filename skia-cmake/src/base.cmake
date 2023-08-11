include(common.cmake)


# bazel //src/base
set(SKIA_BASE_ROOT "${SKIA_ROOT_SRC_DIR}/base")


# IWYU_HDRS  --  SKIA_BASE_IWYU_HDRS
set(
        SKIA_BASE_IWYU_HDRS_FILES
        "SkASAN.h"
        "SkArenaAllocList.h"
        "SkBitmaskEnum.h"
        "SkEndian.h"
        "SkEnumBitMask.h"
        "SkLeanWindows.h"
        "SkMSAN.h"
        "SkNoDestructor.h"
        "SkRandom.h"
        "SkRectMemcpy.h"
        "SkScopeExit.h"
        "SkStringView.h"
        "SkTBlockList.h"
        "SkTDPQueue.h"
        "SkTInternalLList.h"
        "SkTLazy.h"
        "SkTSort.h"
        "SkZip.h"
)
foreach (FILE ${SKIA_BASE_IWYU_HDRS_FILES})
    list(APPEND SKIA_BASE_IWYU_HDRS "${SKIA_BASE_ROOT}/${FILE}")
endforeach ()

message(STATUS "SKIA_BASE_IWYU_HDRS=${SKIA_BASE_IWYU_HDRS}")


# private_hdrs  --  SKIA_BASE_PRIVATE_HDRS
set(
        SKIA_BASE_PRIVATE_HDRS_FILES
        "SkArenaAlloc.h"
        "SkAutoMalloc.h"
        "SkBezierCurves.h"
        "SkBlockAllocator.h"
        "SkBuffer.h"
        "SkCubics.h"
        "SkHalf.h"
        "SkMathPriv.h"
        "SkQuads.h"
        "SkSafeMath.h"
        "SkSharedMutex.h"
        "SkSpinlock.h"
        "SkTSearch.h"
        "SkUTF.h"
        "SkUtils.h"
        "SkVx.h"  # Causes IWYU to crash when compiling.
)

list(APPEND SKIA_BASE_PRIVATE_HDRS "${SKIA_BASE_IWYU_HDRS}")
foreach (FILE ${SKIA_BASE_PRIVATE_HDRS_FILES})
    list(APPEND SKIA_BASE_PRIVATE_HDRS "${SKIA_BASE_ROOT}/${FILE}")
endforeach ()
message(STATUS "SKIA_BASE_PRIVATE_HDRS=${SKIA_BASE_PRIVATE_HDRS}")

# generated_base_header_cpps
generate_cpp_files_for_header_list(SKIA_BASE_GENERATED_CPP "${SKIA_BASE_IWYU_HDRS}")
message(STATUS "SKIA_BASE_GENERATED_CPP=${SKIA_BASE_GENERATED_CPP}")

# skslc_srcs  -- SKIA_BASE_SKSLC_SRCS
# In a separate file group because these files are exported to sksl.gni:skslc_deps.
set(
        SKIA_BASE_SKSLC_SRCS_FILES
        "SkArenaAlloc.cpp"
        "SkBlockAllocator.cpp"
        "SkContainers.cpp"
        "SkHalf.cpp"
        "SkMalloc.cpp"
        "SkMathPriv.cpp"
        "SkSafeMath.cpp"
        "SkSemaphore.cpp"
        "SkThreadID.cpp"
        "SkUTF.cpp"
        "SkUtils.cpp"
)
foreach (FILE ${SKIA_BASE_SKSLC_SRCS_FILES})
    list(APPEND SKIA_BASE_SKSLC_SRCS "${SKIA_BASE_ROOT}/${FILE}")
endforeach ()
message(STATUS "SKIA_BASE_SKSLC_SRCS=${SKIA_BASE_SKSLC_SRCS}")

# srcs  -  SKIA_BASE_SRCS
set(
        SKIA_BASE_SRCS_FILES
        "SkBezierCurves.cpp"
        "SkBuffer.cpp"
        "SkCubics.cpp"
        "SkDeque.cpp"
        "SkFloatingPoint.cpp"
        "SkQuads.cpp"
        "SkSharedMutex.cpp"
        "SkSpinlock.cpp"
        "SkTDArray.cpp"
        "SkTSearch.cpp"
        ":skslc_srcs"
)
foreach (FILE ${SKIA_BASE_SRCS_FILES})
    list(APPEND SKIA_BASE_SRCS "${SKIA_BASE_ROOT}/${FILE}")
endforeach ()

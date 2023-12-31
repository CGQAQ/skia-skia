# bazel //src/core
set(SKIA_CORE_ROOT "${SKIA_ROOT_SRC_DIR}/core")


include(common.cmake)

# CORE_SKSLC_FILES
split_srcs_and_hdrs_relative(
        SKIA_CORE_CORE_SKSLC
        "${SKIA_CORE_ROOT}"
        "SkChecksum.cpp"
        "SkChecksum.h"
        "SkCpu.cpp"
        "SkCpu.h"
        "SkData.cpp"
        "SkMatrixInvert.cpp"
        "SkMatrixInvert.h"
        "SkStream.cpp"
        "SkString.cpp"
        "SkStringUtils.cpp"
        "SkStringUtils.h"
)

# CORE_FILES
split_srcs_and_hdrs_relative(
        SKIA_CORE_CORE
        "${SKIA_CORE_ROOT}"
        "Sk4px.h"
        "SkAAClip.cpp"
        "SkAAClip.h"
        "SkATrace.cpp"
        "SkATrace.h"
        "SkAdvancedTypefaceMetrics.h"
        "SkAlphaRuns.cpp"
        "SkAlphaRuns.h"
        "SkAnalyticEdge.cpp"
        "SkAnalyticEdge.h"
        "SkAnnotation.cpp"
        "SkAnnotationKeys.h"
        "SkAutoBlitterChoose.h"
        "SkAutoPixmapStorage.cpp"
        "SkAutoPixmapStorage.h"
        "SkBBHFactory.cpp"
        "SkBitmap.cpp"
        "SkBitmapCache.cpp"
        "SkBitmapCache.h"
        "SkBitmapDevice.cpp"
        "SkBitmapDevice.h"
        "SkBitmapProcState.cpp"
        "SkBitmapProcState.h"
        "SkBitmapProcState_matrixProcs.cpp"
        "SkBitmapProcState_opts.cpp"
        "SkBitmapProcState_opts_hsw.cpp"
        "SkBitmapProcState_opts_ssse3.cpp"
        "SkBlendMode.cpp"
        "SkBlendModeBlender.cpp"
        "SkBlendModeBlender.h"
        "SkBlendModePriv.h"
        "SkBlenderBase.h"
        "SkBlitBWMaskTemplate.h"  # TODO(kjlubick) should this be a textual header?
        "SkBlitMask.h"
        "SkBlitMask_opts.cpp"
        "SkBlitMask_opts_ssse3.cpp"
        "SkBlitRow.h"
        "SkBlitRow_D32.cpp"
        "SkBlitter.cpp"
        "SkBlitter.h"
        "SkBlitter_A8.cpp"
        "SkBlitter_A8.h"
        "SkBlitter_ARGB32.cpp"
        "SkBlitter_Sprite.cpp"
        "SkBlurMask.cpp"
        "SkBlurMask.h"
        "SkBlurMaskFilterImpl.cpp"
        "SkBlurMaskFilterImpl.h"
        "SkCachedData.cpp"
        "SkCachedData.h"
        "SkCanvas.cpp"
        "SkCanvasPriv.cpp"
        "SkCanvasPriv.h"
        "SkCanvas_Raster.cpp"
        "SkCapabilities.cpp"
        "SkClipStack.cpp"
        "SkClipStack.h"
        "SkClipStackDevice.cpp"
        "SkClipStackDevice.h"
        "SkColor.cpp"
        "SkColorFilter.cpp"
        "SkColorFilterPriv.h"
        "SkColorSpace.cpp"
        "SkColorSpacePriv.h"
        "SkColorSpaceXformSteps.cpp"
        "SkColorSpaceXformSteps.h"
        "SkColorTable.cpp"
        "SkCompressedDataUtils.cpp"
        "SkCompressedDataUtils.h"
        "SkContourMeasure.cpp"
        "SkConvertPixels.cpp"
        "SkConvertPixels.h"
        "SkCoreBlitters.h"
        "SkCubicClipper.cpp"
        "SkCubicClipper.h"
        "SkCubicMap.cpp"
        "SkDataTable.cpp"
        "SkDebug.cpp"
        "SkDebugUtils.h"
        "SkDescriptor.cpp"
        "SkDescriptor.h"
        "SkDevice.cpp"
        "SkDevice.h"
        "SkDistanceFieldGen.cpp"
        "SkDistanceFieldGen.h"
        "SkDocument.cpp"
        "SkDraw.cpp"
        "SkDraw.h"
        "SkDrawBase.cpp"
        "SkDrawBase.h"
        "SkDrawProcs.h"
        "SkDrawShadowInfo.cpp"
        "SkDrawShadowInfo.h"
        "SkDraw_atlas.cpp"
        "SkDraw_text.cpp"
        "SkDraw_vertices.cpp"
        "SkDrawable.cpp"
        "SkEdge.cpp"
        "SkEdge.h"
        "SkEdgeBuilder.cpp"
        "SkEdgeBuilder.h"
        "SkEdgeClipper.cpp"
        "SkEdgeClipper.h"
        "SkEffectPriv.h"
        "SkEnumerate.h"
        "SkExecutor.cpp"
        "SkFDot6.h"
        "SkFlattenable.cpp"
        "SkFont.cpp"
        "SkFontDescriptor.cpp"
        "SkFontDescriptor.h"
        "SkFontMetricsPriv.cpp"
        "SkFontMetricsPriv.h"
        "SkFontMgr.cpp"
        "SkFontMgrPriv.h"
        "SkFontPriv.h"
        "SkFontStream.cpp"
        "SkFontStream.h"
        "SkFont_serial.cpp"
        "SkFuzzLogging.h"
        "SkGaussFilter.cpp"
        "SkGaussFilter.h"
        "SkGeometry.cpp"
        "SkGeometry.h"
        "SkGlobalInitialization_core.cpp"
        "SkGlyph.cpp"
        "SkGlyph.h"
        "SkGlyphRunPainter.cpp"
        "SkGlyphRunPainter.h"
        "SkGraphics.cpp"
        "SkIDChangeListener.cpp"
        "SkIPoint16.h"
        "SkImageFilter.cpp"
        "SkImageFilterCache.cpp"
        "SkImageFilterCache.h"
        "SkImageFilterTypes.cpp"
        "SkImageFilterTypes.h"
        "SkImageFilter_Base.h"
        "SkImageGenerator.cpp"
        "SkImageInfo.cpp"
        "SkImageInfoPriv.h"
        "SkImagePriv.h"
        "SkLRUCache.h"
        "SkLatticeIter.cpp"
        "SkLatticeIter.h"
        "SkLineClipper.cpp"
        "SkLineClipper.h"
        "SkLocalMatrixImageFilter.cpp"
        "SkLocalMatrixImageFilter.h"
        "SkM44.cpp"
        "SkMD5.cpp"
        "SkMD5.h"
        "SkMallocPixelRef.cpp"
        "SkMask.cpp"
        "SkMask.h"
        "SkMaskBlurFilter.cpp"
        "SkMaskBlurFilter.h"
        "SkMaskCache.cpp"
        "SkMaskCache.h"
        "SkMaskFilter.cpp"
        "SkMaskFilterBase.h"
        "SkMaskGamma.cpp"
        "SkMaskGamma.h"
        "SkMatrix.cpp"
        "SkMatrixPriv.h"
        "SkMatrixUtils.h"
        "SkMessageBus.h"
        "SkMipmap.cpp"
        "SkMipmap.h"
        "SkMipmapAccessor.cpp"
        "SkMipmapAccessor.h"
        "SkMipmapBuilder.cpp"
        "SkMipmapBuilder.h"
        "SkNextID.h"
        "SkOSFile.h"
        "SkOpts.cpp"
        "SkOpts.h"
        "SkOpts_erms.cpp"
        "SkOverdrawCanvas.cpp"
        "SkPaint.cpp"
        "SkPaintDefaults.h"
        "SkPaintPriv.cpp"
        "SkPaintPriv.h"
        "SkPath.cpp"
        "SkPathBuilder.cpp"
        "SkPathEffect.cpp"
        "SkPathEffectBase.h"
        "SkPathEnums.h"
        "SkPathMakers.h"
        "SkPathMeasure.cpp"
        "SkPathMeasurePriv.h"
        "SkPathPriv.h"
        "SkPathRef.cpp"
        "SkPathUtils.cpp"
        "SkPath_serial.cpp"
        "SkPicturePriv.h"
        "SkPixelRef.cpp"
        "SkPixelRefPriv.h"
        "SkPixmap.cpp"
        "SkPixmapDraw.cpp"
        "SkPoint.cpp"
        "SkPoint3.cpp"
        "SkPointPriv.h"
        "SkPtrRecorder.cpp"
        "SkPtrRecorder.h"
        "SkQuadClipper.cpp"
        "SkQuadClipper.h"
        "SkRRect.cpp"
        "SkRRectPriv.h"
        "SkRSXform.cpp"
        "SkRTree.cpp"
        "SkRTree.h"
        "SkRasterClip.cpp"
        "SkRasterClip.h"
        "SkRasterClipStack.h"
        "SkRasterPipeline.cpp"
        "SkRasterPipeline.h"
        "SkRasterPipelineBlitter.cpp"
        "SkRasterPipelineContextUtils.h"
        "SkRasterPipelineOpContexts.h"
        "SkRasterPipelineOpList.h"
        "SkReadBuffer.cpp"
        "SkReadBuffer.h"
        "SkReadPixelsRec.cpp"
        "SkReadPixelsRec.h"
        "SkRecord.cpp"
        "SkRecord.h"
        "SkRecordDraw.cpp"
        "SkRecordDraw.h"
        "SkRecordOpts.cpp"
        "SkRecordOpts.h"
        "SkRecordPattern.h"
        "SkRecords.cpp"
        "SkRecords.h"
        "SkRect.cpp"
        "SkRectPriv.h"
        "SkRegion.cpp"
        "SkRegionPriv.h"
        "SkRegion_path.cpp"
        "SkResourceCache.cpp"
        "SkResourceCache.h"
        "SkSafeRange.h"
        "SkSamplingPriv.h"
        "SkScalar.cpp"
        "SkScaleToSides.h"
        "SkScalerContext.cpp"
        "SkScalerContext.h"
        "SkScan.cpp"
        "SkScan.h"
        "SkScanPriv.h"
        "SkScan_AAAPath.cpp"
        "SkScan_AntiPath.cpp"
        "SkScan_Antihair.cpp"
        "SkScan_Hairline.cpp"
        "SkScan_Path.cpp"
        "SkScan_SAAPath.cpp"
        "SkSpecialImage.cpp"
        "SkSpecialImage.h"
        "SkSpecialSurface.cpp"
        "SkSpecialSurface.h"
        "SkSpriteBlitter.h"
        "SkSpriteBlitter_ARGB32.cpp"
        "SkStreamPriv.h"
        "SkStrike.cpp"
        "SkStrike.h"
        "SkStrikeCache.cpp"
        "SkStrikeCache.h"
        "SkStrikeSpec.cpp"
        "SkStrikeSpec.h"
        "SkStroke.cpp"
        "SkStroke.h"
        "SkStrokeRec.cpp"
        "SkStrokerPriv.cpp"
        "SkStrokerPriv.h"
        "SkSurfacePriv.h"
        "SkSwizzle.cpp"
        "SkSwizzlePriv.h"
        "SkTDynamicHash.h"
        "SkTHash.h"
        "SkTMultiMap.h"
        "SkTaskGroup.cpp"
        "SkTaskGroup.h"
        "SkTextBlob.cpp"
        "SkTextBlobPriv.h"
        "SkTextBlobTrace.cpp"
        "SkTextBlobTrace.h"
        "SkTextFormatParams.h"
        "SkTime.cpp"
        "SkTraceEvent.h"
        "SkTraceEventCommon.h"
        "SkTypeface.cpp"
        "SkTypefaceCache.cpp"
        "SkTypefaceCache.h"
        "SkTypeface_remote.cpp"
        "SkTypeface_remote.h"
        "SkUnPreMultiply.cpp"
        "SkValidationUtils.h"
        "SkVertState.cpp"
        "SkVertState.h"
        "SkVertices.cpp"
        "SkVerticesPriv.h"
        "SkWriteBuffer.cpp"
        "SkWriteBuffer.h"
        "SkWritePixelsRec.cpp"
        "SkWritePixelsRec.h"
        "SkWriter32.cpp"
        "SkWriter32.h"
        "SkYUVAInfo.cpp"
        "SkYUVAInfoLocation.h"
        "SkYUVAPixmaps.cpp"
        "SkYUVMath.cpp"
        "SkYUVMath.h"
        "SkYUVPlanesCache.cpp"
        "SkYUVPlanesCache.h"
)

# These files are only needed if SkSL is enabled (GPU backend or SkRP).
# SKSL_FILES
split_srcs_and_hdrs_relative(
        SKIA_CORE_SKSL
        "${SKIA_CORE_ROOT}"
        "SkMesh.cpp"
        "SkMeshPriv.h"
        "SkRuntimeBlender.cpp"
        "SkRuntimeBlender.h"
        "SkRuntimeEffect.cpp"
        "SkRuntimeEffectPriv.h"
        "SkSLTypeShared.cpp"
        "SkSLTypeShared.h"
)

# legacy_draw_looper
set(
        SKIA_CORE_LEGACY_DRAW_LOOPER
        ${SKIA_CORE_ROOT}/"SkDrawLooper.cpp"
)

# SkPicture files are maintained as a separate skia_filegroups for backward compatability
# with GNI files. This allows the generation of skia_skpicture_sources GNI file list.
split_srcs_and_hdrs_relative(
        SKIA_CORE_SKPICTURE
        "${SKIA_CORE_ROOT}"
        "SkBigPicture.cpp"
        "SkBigPicture.h"
        "SkPicture.cpp"
        "SkPictureData.cpp"
        "SkPictureData.h"
        "SkPictureFlat.cpp"
        "SkPictureFlat.h"
        "SkPicturePlayback.cpp"
        "SkPicturePlayback.h"
        "SkPictureRecord.cpp"
        "SkPictureRecord.h"
        "SkPictureRecorder.cpp"
        "SkRecordedDrawable.cpp"
        "SkRecordedDrawable.h"
        "SkRecorder.cpp"
        "SkRecorder.h"
)

# TODO complier flags
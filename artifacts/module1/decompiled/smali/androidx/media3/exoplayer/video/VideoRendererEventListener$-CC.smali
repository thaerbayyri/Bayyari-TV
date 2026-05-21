.class public final synthetic Landroidx/media3/exoplayer/video/VideoRendererEventListener$-CC;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# direct methods
.method public static $default$onDroppedFrames(Landroidx/media3/exoplayer/video/VideoRendererEventListener;IJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J

    .line 89
    return-void
.end method

.method public static $default$onRenderedFirstFrame(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Ljava/lang/Object;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J

    .line 127
    return-void
.end method

.method public static $default$onVideoCodecError(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "videoCodecError"    # Ljava/lang/Exception;

    .line 156
    return-void
.end method

.method public static $default$onVideoDecoderInitialized(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 60
    return-void
.end method

.method public static $default$onVideoDecoderReleased(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Ljava/lang/String;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static $default$onVideoDisabled(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 141
    return-void
.end method

.method public static $default$onVideoEnabled(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 49
    return-void
.end method

.method public static $default$onVideoFrameProcessingOffset(Landroidx/media3/exoplayer/video/VideoRendererEventListener;JI)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I

    .line 109
    return-void
.end method

.method public static $default$onVideoInputFormatChanged(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/common/Format;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    return-void
.end method

.method public static $default$onVideoInputFormatChanged(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 77
    return-void
.end method

.method public static $default$onVideoSizeChanged(Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/common/VideoSize;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 117
    return-void
.end method

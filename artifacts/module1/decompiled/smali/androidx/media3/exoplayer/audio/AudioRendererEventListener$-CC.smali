.class public final synthetic Landroidx/media3/exoplayer/audio/AudioRendererEventListener$-CC;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# direct methods
.method public static $default$onAudioCodecError(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "audioCodecError"    # Ljava/lang/Exception;

    .line 132
    return-void
.end method

.method public static $default$onAudioDecoderInitialized(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 60
    return-void
.end method

.method public static $default$onAudioDecoderReleased(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Ljava/lang/String;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 103
    return-void
.end method

.method public static $default$onAudioDisabled(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 110
    return-void
.end method

.method public static $default$onAudioEnabled(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 49
    return-void
.end method

.method public static $default$onAudioInputFormatChanged(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/common/Format;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    return-void
.end method

.method public static $default$onAudioInputFormatChanged(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 77
    return-void
.end method

.method public static $default$onAudioPositionAdvancing(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 86
    return-void
.end method

.method public static $default$onAudioSinkError(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 151
    return-void
.end method

.method public static $default$onAudioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 159
    return-void
.end method

.method public static $default$onAudioTrackReleased(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 167
    return-void
.end method

.method public static $default$onAudioUnderrun(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;IJJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 96
    return-void
.end method

.method public static $default$onSkipSilenceEnabledChanged(Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p1, "skipSilenceEnabled"    # Z

    .line 117
    return-void
.end method

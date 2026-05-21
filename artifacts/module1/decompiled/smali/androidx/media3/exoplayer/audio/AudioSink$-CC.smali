.class public final synthetic Landroidx/media3/exoplayer/audio/AudioSink$-CC;
.super Ljava/lang/Object;
.source "AudioSink.java"


# direct methods
.method public static $default$getFormatOffloadSupport(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioSink;
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 442
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object v0
.end method

.method public static $default$release(Landroidx/media3/exoplayer/audio/AudioSink;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioSink;

    .line 624
    return-void
.end method

.method public static $default$setClock(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/common/util/Clock;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioSink;
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 416
    return-void
.end method

.method public static $default$setOffloadDelayPadding(Landroidx/media3/exoplayer/audio/AudioSink;II)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioSink;
    .param p1, "delayInFrames"    # I
    .param p2, "paddingInFrames"    # I

    .line 601
    return-void
.end method

.method public static $default$setOffloadMode(Landroidx/media3/exoplayer/audio/AudioSink;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioSink;
    .param p1, "offloadMode"    # I

    .line 593
    return-void
.end method

.method public static $default$setOutputStreamOffsetUs(Landroidx/media3/exoplayer/audio/AudioSink;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioSink;
    .param p1, "outputStreamOffsetUs"    # J

    .line 571
    return-void
.end method

.method public static $default$setPlayerId(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioSink;
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 409
    return-void
.end method

.method public static $default$setPreferredDevice(Landroidx/media3/exoplayer/audio/AudioSink;Landroid/media/AudioDeviceInfo;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/audio/AudioSink;
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 563
    return-void
.end method

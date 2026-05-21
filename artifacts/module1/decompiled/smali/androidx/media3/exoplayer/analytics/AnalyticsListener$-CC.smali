.class public final synthetic Landroidx/media3/exoplayer/analytics/AnalyticsListener$-CC;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# direct methods
.method public static $default$onAudioAttributesChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1079
    return-void
.end method

.method public static $default$onAudioCodecError(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioCodecError"    # Ljava/lang/Exception;

    .line 1123
    return-void
.end method

.method public static $default$onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializationDurationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 997
    return-void
.end method

.method public static $default$onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializedTimestampMs"    # J
    .param p5, "initializationDurationMs"    # J

    .line 989
    return-void
.end method

.method public static $default$onAudioDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;

    .line 1052
    return-void
.end method

.method public static $default$onAudioDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 1061
    return-void
.end method

.method public static $default$onAudioEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 973
    return-void
.end method

.method public static $default$onAudioInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1004
    return-void
.end method

.method public static $default$onAudioInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p3, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 1019
    return-void
.end method

.method public static $default$onAudioPositionAdvancing(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playoutStartSystemTimeMs"    # J

    .line 1030
    return-void
.end method

.method public static $default$onAudioSessionIdChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioSessionId"    # I

    .line 1070
    return-void
.end method

.method public static $default$onAudioSinkError(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioSinkError"    # Ljava/lang/Exception;

    .line 1106
    return-void
.end method

.method public static $default$onAudioTrackInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 1134
    return-void
.end method

.method public static $default$onAudioTrackReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 1145
    return-void
.end method

.method public static $default$onAudioUnderrun(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "bufferSize"    # I
    .param p3, "bufferSizeMs"    # J
    .param p5, "elapsedSinceLastFeedMs"    # J

    .line 1043
    return-void
.end method

.method public static $default$onAvailableCommandsChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "availableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 775
    return-void
.end method

.method public static $default$onBandwidthEstimate(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "totalLoadTimeMs"    # I
    .param p3, "totalBytesLoaded"    # J
    .param p5, "bitrateEstimate"    # J

    .line 928
    return-void
.end method

.method public static $default$onCues(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "cueGroup"    # Landroidx/media3/common/text/CueGroup;

    .line 963
    return-void
.end method

.method public static $default$onCues(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 951
    .local p2, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    return-void
.end method

.method public static $default$onDeviceInfoChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;

    .line 1163
    return-void
.end method

.method public static $default$onDeviceVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "volume"    # I
    .param p3, "muted"    # Z

    .line 1173
    return-void
.end method

.method public static $default$onDownstreamFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 906
    return-void
.end method

.method public static $default$onDrmKeysLoaded(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 1365
    return-void
.end method

.method public static $default$onDrmKeysRemoved(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 1397
    return-void
.end method

.method public static $default$onDrmKeysRestored(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 1389
    return-void
.end method

.method public static $default$onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1348
    return-void
.end method

.method public static $default$onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "state"    # I

    .line 1357
    return-void
.end method

.method public static $default$onDrmSessionManagerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Ljava/lang/Exception;

    .line 1381
    return-void
.end method

.method public static $default$onDrmSessionReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 1405
    return-void
.end method

.method public static $default$onDroppedVideoFrames(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "droppedFrames"    # I
    .param p3, "elapsedMs"    # J

    .line 1241
    return-void
.end method

.method public static $default$onEvents(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;

    .line 1443
    return-void
.end method

.method public static $default$onIsLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "isLoading"    # Z

    .line 759
    return-void
.end method

.method public static $default$onIsPlayingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "isPlaying"    # Z

    .line 639
    return-void
.end method

.method public static $default$onLoadCanceled(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 873
    return-void
.end method

.method public static $default$onLoadCompleted(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 862
    return-void
.end method

.method public static $default$onLoadError(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 897
    return-void
.end method

.method public static $default$onLoadStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 851
    return-void
.end method

.method public static $default$onLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "isLoading"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    return-void
.end method

.method public static $default$onMaxSeekToPreviousPositionChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "maxSeekToPreviousPositionMs"    # J

    .line 732
    return-void
.end method

.method public static $default$onMediaItemTransition(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "reason"    # I

    .line 661
    return-void
.end method

.method public static $default$onMediaMetadataChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 831
    return-void
.end method

.method public static $default$onMetadata(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "metadata"    # Landroidx/media3/common/Metadata;

    .line 937
    return-void
.end method

.method public static $default$onPlayWhenReadyChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playWhenReady"    # Z
    .param p3, "reason"    # I

    .line 620
    return-void
.end method

.method public static $default$onPlaybackParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 703
    return-void
.end method

.method public static $default$onPlaybackStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "state"    # I

    .line 609
    return-void
.end method

.method public static $default$onPlaybackSuppressionReasonChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackSuppressionReason"    # I

    .line 630
    return-void
.end method

.method public static $default$onPlayerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Landroidx/media3/common/PlaybackException;

    .line 787
    return-void
.end method

.method public static $default$onPlayerErrorChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Landroidx/media3/common/PlaybackException;

    .line 799
    return-void
.end method

.method public static $default$onPlayerReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 1413
    return-void
.end method

.method public static $default$onPlayerStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playWhenReady"    # Z
    .param p3, "playbackState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    return-void
.end method

.method public static $default$onPlaylistMetadataChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 840
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p4, "reason"    # I

    .line 684
    return-void
.end method

.method public static $default$onRenderedFirstFrame(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "output"    # Ljava/lang/Object;
    .param p3, "renderTimeMs"    # J

    .line 1307
    return-void
.end method

.method public static $default$onRepeatModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "repeatMode"    # I

    .line 741
    return-void
.end method

.method public static $default$onSeekBackIncrementChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "seekBackIncrementMs"    # J

    .line 712
    return-void
.end method

.method public static $default$onSeekForwardIncrementChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "seekForwardIncrementMs"    # J

    .line 721
    return-void
.end method

.method public static $default$onSeekStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 693
    return-void
.end method

.method public static $default$onShuffleModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "shuffleModeEnabled"    # Z

    .line 750
    return-void
.end method

.method public static $default$onSkipSilenceEnabledChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "skipSilenceEnabled"    # Z

    .line 1088
    return-void
.end method

.method public static $default$onSurfaceSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1341
    return-void
.end method

.method public static $default$onTimelineChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I

    .line 648
    return-void
.end method

.method public static $default$onTrackSelectionParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 818
    return-void
.end method

.method public static $default$onTracksChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "tracks"    # Landroidx/media3/common/Tracks;

    .line 808
    return-void
.end method

.method public static $default$onUpstreamDiscarded(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 916
    return-void
.end method

.method public static $default$onVideoCodecError(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "videoCodecError"    # Ljava/lang/Exception;

    .line 1295
    return-void
.end method

.method public static $default$onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializationDurationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1207
    return-void
.end method

.method public static $default$onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializedTimestampMs"    # J
    .param p5, "initializationDurationMs"    # J

    .line 1199
    return-void
.end method

.method public static $default$onVideoDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;

    .line 1250
    return-void
.end method

.method public static $default$onVideoDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 1259
    return-void
.end method

.method public static $default$onVideoEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 1183
    return-void
.end method

.method public static $default$onVideoFrameProcessingOffset(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "totalProcessingOffsetUs"    # J
    .param p4, "frameCount"    # I

    .line 1278
    return-void
.end method

.method public static $default$onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1214
    return-void
.end method

.method public static $default$onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p3, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 1229
    return-void
.end method

.method public static $default$onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "unappliedRotationDegrees"    # I
    .param p5, "pixelWidthHeightRatio"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1329
    return-void
.end method

.method public static $default$onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 1317
    return-void
.end method

.method public static $default$onVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "volume"    # F

    .line 1154
    return-void
.end method

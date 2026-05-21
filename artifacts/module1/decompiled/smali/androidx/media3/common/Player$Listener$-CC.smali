.class public final synthetic Landroidx/media3/common/Player$Listener$-CC;
.super Ljava/lang/Object;
.source "Player.java"


# direct methods
.method public static $default$onAudioAttributesChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/AudioAttributes;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1117
    return-void
.end method

.method public static $default$onAudioSessionIdChanged(Landroidx/media3/common/Player$Listener;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "audioSessionId"    # I

    .line 1107
    return-void
.end method

.method public static $default$onAvailableCommandsChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "availableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 919
    return-void
.end method

.method public static $default$onCues(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/text/CueGroup;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "cueGroup"    # Landroidx/media3/common/text/CueGroup;

    .line 1217
    return-void
.end method

.method public static $default$onCues(Landroidx/media3/common/Player$Listener;Ljava/util/List;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1206
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    return-void
.end method

.method public static $default$onDeviceInfoChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/DeviceInfo;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;

    .line 1147
    return-void
.end method

.method public static $default$onDeviceVolumeChanged(Landroidx/media3/common/Player$Listener;IZ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "volume"    # I
    .param p2, "muted"    # Z

    .line 1158
    return-void
.end method

.method public static $default$onEvents(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/common/Player$Events;

    .line 829
    return-void
.end method

.method public static $default$onIsLoadingChanged(Landroidx/media3/common/Player$Listener;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "isLoading"    # Z

    .line 901
    return-void
.end method

.method public static $default$onIsPlayingChanged(Landroidx/media3/common/Player$Listener;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "isPlaying"    # Z

    .line 980
    return-void
.end method

.method public static $default$onLoadingChanged(Landroidx/media3/common/Player$Listener;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "isLoading"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 908
    return-void
.end method

.method public static $default$onMaxSeekToPreviousPositionChanged(Landroidx/media3/common/Player$Listener;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 1096
    return-void
.end method

.method public static $default$onMediaItemTransition(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaItem;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "reason"    # I

    .line 861
    return-void
.end method

.method public static $default$onMediaMetadataChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 883
    return-void
.end method

.method public static $default$onMetadata(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Metadata;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 1228
    return-void
.end method

.method public static $default$onPlayWhenReadyChanged(Landroidx/media3/common/Player$Listener;ZI)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 959
    return-void
.end method

.method public static $default$onPlaybackParametersChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackParameters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 1065
    return-void
.end method

.method public static $default$onPlaybackStateChanged(Landroidx/media3/common/Player$Listener;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "playbackState"    # I

    .line 947
    return-void
.end method

.method public static $default$onPlaybackSuppressionReasonChanged(Landroidx/media3/common/Player$Listener;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "playbackSuppressionReason"    # I

    .line 970
    return-void
.end method

.method public static $default$onPlayerError(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    .line 1015
    return-void
.end method

.method public static $default$onPlayerErrorChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    .line 1028
    return-void
.end method

.method public static $default$onPlayerStateChanged(Landroidx/media3/common/Player$Listener;ZI)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 937
    return-void
.end method

.method public static $default$onPlaylistMetadataChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 891
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Landroidx/media3/common/Player$Listener;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1035
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 1052
    return-void
.end method

.method public static $default$onRenderedFirstFrame(Landroidx/media3/common/Player$Listener;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;

    .line 1191
    return-void
.end method

.method public static $default$onRepeatModeChanged(Landroidx/media3/common/Player$Listener;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "repeatMode"    # I

    .line 990
    return-void
.end method

.method public static $default$onSeekBackIncrementChanged(Landroidx/media3/common/Player$Listener;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "seekBackIncrementMs"    # J

    .line 1075
    return-void
.end method

.method public static $default$onSeekForwardIncrementChanged(Landroidx/media3/common/Player$Listener;J)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "seekForwardIncrementMs"    # J

    .line 1085
    return-void
.end method

.method public static $default$onShuffleModeEnabledChanged(Landroidx/media3/common/Player$Listener;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "shuffleModeEnabled"    # Z

    .line 1000
    return-void
.end method

.method public static $default$onSkipSilenceEnabledChanged(Landroidx/media3/common/Player$Listener;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "skipSilenceEnabled"    # Z

    .line 1137
    return-void
.end method

.method public static $default$onSurfaceSizeChanged(Landroidx/media3/common/Player$Listener;II)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1182
    return-void
.end method

.method public static $default$onTimelineChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Timeline;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "reason"    # I

    .line 845
    return-void
.end method

.method public static $default$onTrackSelectionParametersChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 929
    return-void
.end method

.method public static $default$onTracksChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Tracks;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "tracks"    # Landroidx/media3/common/Tracks;

    .line 871
    return-void
.end method

.method public static $default$onVideoSizeChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/VideoSize;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 1168
    return-void
.end method

.method public static $default$onVolumeChanged(Landroidx/media3/common/Player$Listener;F)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/common/Player$Listener;
    .param p1, "volume"    # F

    .line 1127
    return-void
.end method

.class public final synthetic Landroidx/media3/session/MediaSession$ControllerCb$-CC;
.super Ljava/lang/Object;
.source "MediaSession.java"


# direct methods
.method public static $default$onAudioAttributesChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/AudioAttributes;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1879
    return-void
.end method

.method public static $default$onAvailableCommandsChangedFromPlayer(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "availableCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1805
    return-void
.end method

.method public static $default$onAvailableCommandsChangedFromSession(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p3, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1802
    return-void
.end method

.method public static $default$onChildrenChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1811
    return-void
.end method

.method public static $default$onDeviceInfoChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/DeviceInfo;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1881
    return-void
.end method

.method public static $default$onDeviceVolumeChanged(Landroidx/media3/session/MediaSession$ControllerCb;IIZ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "volume"    # I
    .param p3, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1883
    return-void
.end method

.method public static $default$onDisconnected(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1788
    return-void
.end method

.method public static $default$onIsLoadingChanged(Landroidx/media3/session/MediaSession$ControllerCb;IZ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "isLoading"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1835
    return-void
.end method

.method public static $default$onIsPlayingChanged(Landroidx/media3/session/MediaSession$ControllerCb;IZ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "isPlaying"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1833
    return-void
.end method

.method public static $default$onLibraryResult(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/LibraryResult;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1763
    .local p2, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    return-void
.end method

.method public static $default$onMediaItemTransition(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/MediaItem;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1854
    return-void
.end method

.method public static $default$onMediaMetadataChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1886
    return-void
.end method

.method public static $default$onPeriodicSessionPositionInfoChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/SessionPositionInfo;ZZI)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;
    .param p3, "canAccessCurrentMediaItem"    # Z
    .param p4, "canAccessTimeline"    # Z
    .param p5, "controllerInterfaceVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1784
    return-void
.end method

.method public static $default$onPlayWhenReadyChanged(Landroidx/media3/session/MediaSession$ControllerCb;IZI)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "playWhenReady"    # Z
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    return-void
.end method

.method public static $default$onPlaybackParametersChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/PlaybackParameters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1843
    return-void
.end method

.method public static $default$onPlaybackStateChanged(Landroidx/media3/session/MediaSession$ControllerCb;IILandroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "state"    # I
    .param p3, "playerError"    # Landroidx/media3/common/PlaybackException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1831
    return-void
.end method

.method public static $default$onPlaybackSuppressionReasonChanged(Landroidx/media3/session/MediaSession$ControllerCb;II)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1827
    return-void
.end method

.method public static $default$onPlayerChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "oldPlayerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "newPlayerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1767
    return-void
.end method

.method public static $default$onPlayerError(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "playerError"    # Landroidx/media3/common/PlaybackException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1820
    return-void
.end method

.method public static $default$onPlayerInfoChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Commands;ZZI)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p3, "availableCommands"    # Landroidx/media3/common/Player$Commands;
    .param p4, "excludeTimeline"    # Z
    .param p5, "excludeTracks"    # Z
    .param p6, "controllerInterfaceVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1776
    return-void
.end method

.method public static $default$onPlaylistMetadataChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "metadata"    # Landroidx/media3/common/MediaMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1861
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1850
    return-void
.end method

.method public static $default$onRenderedFirstFrame(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1888
    return-void
.end method

.method public static $default$onRepeatModeChanged(Landroidx/media3/session/MediaSession$ControllerCb;II)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1866
    return-void
.end method

.method public static $default$onSearchResultChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1815
    return-void
.end method

.method public static $default$onSeekBackIncrementChanged(Landroidx/media3/session/MediaSession$ControllerCb;IJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "seekBackIncrementMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1869
    return-void
.end method

.method public static $default$onSeekForwardIncrementChanged(Landroidx/media3/session/MediaSession$ControllerCb;IJ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "seekForwardIncrementMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1872
    return-void
.end method

.method public static $default$onSessionActivityChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "sessionActivity"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1793
    return-void
.end method

.method public static $default$onSessionExtrasChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "sessionExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1795
    return-void
.end method

.method public static $default$onSessionResult(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/SessionResult;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media3/session/SessionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1761
    return-void
.end method

.method public static $default$onShuffleModeEnabledChanged(Landroidx/media3/session/MediaSession$ControllerCb;IZ)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "shuffleModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1864
    return-void
.end method

.method public static $default$onTimelineChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/Timeline;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1858
    return-void
.end method

.method public static $default$onTrackSelectionParametersChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/TrackSelectionParameters;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1840
    return-void
.end method

.method public static $default$onTracksChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/Tracks;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "tracks"    # Landroidx/media3/common/Tracks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1837
    return-void
.end method

.method public static $default$onVideoSizeChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/VideoSize;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "videoSize"    # Landroidx/media3/common/VideoSize;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1874
    return-void
.end method

.method public static $default$onVolumeChanged(Landroidx/media3/session/MediaSession$ControllerCb;IF)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1876
    return-void
.end method

.method public static $default$sendCustomCommand(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1798
    return-void
.end method

.method public static $default$setCustomLayout(Landroidx/media3/session/MediaSession$ControllerCb;ILjava/util/List;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1790
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    return-void
.end method

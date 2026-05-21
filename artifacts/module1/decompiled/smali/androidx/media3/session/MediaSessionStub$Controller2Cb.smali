.class final Landroidx/media3/session/MediaSessionStub$Controller2Cb;
.super Ljava/lang/Object;
.source "MediaSessionStub.java"

# interfaces
.implements Landroidx/media3/session/MediaSession$ControllerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Controller2Cb"
.end annotation


# instance fields
.field private final iController:Landroidx/media3/session/IMediaController;


# direct methods
.method public constructor <init>(Landroidx/media3/session/IMediaController;)V
    .locals 0
    .param p1, "callback"    # Landroidx/media3/session/IMediaController;

    .line 1999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2000
    iput-object p1, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2001
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2147
    if-ne p0, p1, :cond_0

    .line 2148
    const/4 v0, 0x1

    return v0

    .line 2150
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2153
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    .line 2154
    .local v0, "other":Landroidx/media3/session/MediaSessionStub$Controller2Cb;
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2151
    .end local v0    # "other":Landroidx/media3/session/MediaSessionStub$Controller2Cb;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    .line 2004
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-interface {v0}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 2142
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic onAudioAttributesChanged(ILandroidx/media3/common/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onAudioAttributesChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method public onAvailableCommandsChangedFromPlayer(ILandroidx/media3/common/Player$Commands;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "availableCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2081
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2082
    invoke-virtual {p2}, Landroidx/media3/common/Player$Commands;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 2081
    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onAvailableCommandsChangedFromPlayer(ILandroid/os/Bundle;)V

    .line 2083
    return-void
.end method

.method public onAvailableCommandsChangedFromSession(ILandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 3
    .param p1, "sequenceNumber"    # I
    .param p2, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p3, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2074
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2075
    invoke-virtual {p2}, Landroidx/media3/session/SessionCommands;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p3}, Landroidx/media3/common/Player$Commands;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 2074
    invoke-interface {v0, p1, v1, v2}, Landroidx/media3/session/IMediaController;->onAvailableCommandsChangedFromSession(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2076
    return-void
.end method

.method public onChildrenChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2096
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2097
    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 2096
    :goto_0
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/media3/session/IMediaController;->onChildrenChanged(ILjava/lang/String;ILandroid/os/Bundle;)V

    .line 2098
    return-void
.end method

.method public synthetic onDeviceInfoChanged(ILandroidx/media3/common/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onDeviceInfoChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onDeviceVolumeChanged(Landroidx/media3/session/MediaSession$ControllerCb;IIZ)V

    return-void
.end method

.method public onDisconnected(I)V
    .locals 1
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2111
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-interface {v0, p1}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V

    .line 2112
    return-void
.end method

.method public synthetic onIsLoadingChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onIsLoadingChanged(Landroidx/media3/session/MediaSession$ControllerCb;IZ)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onIsPlayingChanged(Landroidx/media3/session/MediaSession$ControllerCb;IZ)V

    return-void
.end method

.method public onLibraryResult(ILandroidx/media3/session/LibraryResult;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/session/LibraryResult<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2015
    .local p2, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-virtual {p2}, Landroidx/media3/session/LibraryResult;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onLibraryResult(ILandroid/os/Bundle;)V

    .line 2016
    return-void
.end method

.method public synthetic onMediaItemTransition(ILandroidx/media3/common/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onMediaItemTransition(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onMediaMetadataChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public onPeriodicSessionPositionInfoChanged(ILandroidx/media3/session/SessionPositionInfo;ZZI)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;
    .param p3, "canAccessCurrentMediaItem"    # Z
    .param p4, "canAccessTimeline"    # Z
    .param p5, "controllerInterfaceVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2122
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2125
    invoke-virtual {p2, p3, p4}, Landroidx/media3/session/SessionPositionInfo;->filterByAvailableCommands(ZZ)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v1

    .line 2126
    invoke-virtual {v1, p5}, Landroidx/media3/session/SessionPositionInfo;->toBundle(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2122
    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onPeriodicSessionPositionInfoChanged(ILandroid/os/Bundle;)V

    .line 2127
    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(IZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onPlayWhenReadyChanged(Landroidx/media3/session/MediaSession$ControllerCb;IZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(ILandroidx/media3/common/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onPlaybackParametersChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(IILandroidx/media3/common/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onPlaybackStateChanged(Landroidx/media3/session/MediaSession$ControllerCb;IILandroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onPlaybackSuppressionReasonChanged(Landroidx/media3/session/MediaSession$ControllerCb;II)V

    return-void
.end method

.method public synthetic onPlayerChanged(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onPlayerChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public synthetic onPlayerError(ILandroidx/media3/common/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onPlayerError(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public onPlayerInfoChanged(ILandroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Commands;ZZI)V
    .locals 6
    .param p1, "sequenceNumber"    # I
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

    .line 2027
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p6, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 2029
    if-nez p4, :cond_2

    .line 2030
    const/16 v2, 0x11

    invoke-virtual {p3, v2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    .line 2031
    .local v2, "bundlingExclusionsTimeline":Z
    :goto_2
    if-nez p5, :cond_3

    .line 2032
    const/16 v3, 0x1e

    invoke-virtual {p3, v3}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v0, v1

    .line 2033
    .local v0, "bundlingExclusionsTracks":Z
    :cond_4
    const/4 v3, 0x2

    if-lt p6, v3, :cond_6

    .line 2034
    nop

    .line 2035
    invoke-virtual {p2, p3, p4, p5}, Landroidx/media3/session/PlayerInfo;->filterByAvailableCommands(Landroidx/media3/common/Player$Commands;ZZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 2037
    .local v1, "filteredPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    instance-of v3, v3, Landroidx/media3/session/MediaControllerStub;

    if-eqz v3, :cond_5

    .line 2038
    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo;->toBundleInProcess()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_3

    .line 2039
    :cond_5
    invoke-virtual {v1, p6}, Landroidx/media3/session/PlayerInfo;->toBundleForRemoteProcess(I)Landroid/os/Bundle;

    move-result-object v3

    :goto_3
    nop

    .line 2040
    .local v3, "playerInfoBundle":Landroid/os/Bundle;
    iget-object v4, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    new-instance v5, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    invoke-direct {v5, v2, v0}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    .line 2044
    invoke-virtual {v5}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 2040
    invoke-interface {v4, p1, v3, v5}, Landroidx/media3/session/IMediaController;->onPlayerInfoChangedWithExclusions(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2045
    .end local v1    # "filteredPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v3    # "playerInfoBundle":Landroid/os/Bundle;
    goto :goto_4

    .line 2046
    :cond_6
    nop

    .line 2047
    invoke-virtual {p2, p3, p4, v1}, Landroidx/media3/session/PlayerInfo;->filterByAvailableCommands(Landroidx/media3/common/Player$Commands;ZZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 2050
    .restart local v1    # "filteredPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2052
    invoke-virtual {v1, p6}, Landroidx/media3/session/PlayerInfo;->toBundleForRemoteProcess(I)Landroid/os/Bundle;

    move-result-object v4

    .line 2050
    invoke-interface {v3, p1, v4, v2}, Landroidx/media3/session/IMediaController;->onPlayerInfoChanged(ILandroid/os/Bundle;Z)V

    .line 2055
    .end local v1    # "filteredPlayerInfo":Landroidx/media3/session/PlayerInfo;
    :goto_4
    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onPlaylistMetadataChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onPositionDiscontinuity(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method public onRenderedFirstFrame(I)V
    .locals 1
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2131
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-interface {v0, p1}, Landroidx/media3/session/IMediaController;->onRenderedFirstFrame(I)V

    .line 2132
    return-void
.end method

.method public synthetic onRepeatModeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onRepeatModeChanged(Landroidx/media3/session/MediaSession$ControllerCb;II)V

    return-void
.end method

.method public onSearchResultChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2105
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2106
    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 2105
    :goto_0
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/media3/session/IMediaController;->onSearchResultChanged(ILjava/lang/String;ILandroid/os/Bundle;)V

    .line 2107
    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onSeekBackIncrementChanged(Landroidx/media3/session/MediaSession$ControllerCb;IJ)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onSeekForwardIncrementChanged(Landroidx/media3/session/MediaSession$ControllerCb;IJ)V

    return-void
.end method

.method public onSessionActivityChanged(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "sequenceNumber"    # I
    .param p2, "sessionActivity"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2067
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/IMediaController;->onSessionActivityChanged(ILandroid/app/PendingIntent;)V

    .line 2068
    return-void
.end method

.method public onSessionExtrasChanged(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "sequenceNumber"    # I
    .param p2, "sessionExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2137
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/IMediaController;->onExtrasChanged(ILandroid/os/Bundle;)V

    .line 2138
    return-void
.end method

.method public onSessionResult(ILandroidx/media3/session/SessionResult;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "result"    # Landroidx/media3/session/SessionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2009
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-virtual {p2}, Landroidx/media3/session/SessionResult;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onSessionResult(ILandroid/os/Bundle;)V

    .line 2010
    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onShuffleModeEnabledChanged(Landroidx/media3/session/MediaSession$ControllerCb;IZ)V

    return-void
.end method

.method public synthetic onTimelineChanged(ILandroidx/media3/common/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onTimelineChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/Timeline;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(ILandroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onTrackSelectionParametersChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(ILandroidx/media3/common/Tracks;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onTracksChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/Tracks;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(ILandroidx/media3/common/VideoSize;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onVideoSizeChanged(Landroidx/media3/session/MediaSession$ControllerCb;ILandroidx/media3/common/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(IF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb$-CC;->$default$onVolumeChanged(Landroidx/media3/session/MediaSession$ControllerCb;IF)V

    return-void
.end method

.method public sendCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2088
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-virtual {p2}, Landroidx/media3/session/SessionCommand;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Landroidx/media3/session/IMediaController;->onCustomCommand(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2089
    return-void
.end method

.method public setCustomLayout(ILjava/util/List;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2060
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    new-instance v1, Landroidx/media3/session/MediaSessionStub$Controller2Cb$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/session/MediaSessionStub$Controller2Cb$$ExternalSyntheticLambda0;-><init>()V

    .line 2061
    invoke-static {p2, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 2060
    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onSetCustomLayout(ILjava/util/List;)V

    .line 2062
    return-void
.end method

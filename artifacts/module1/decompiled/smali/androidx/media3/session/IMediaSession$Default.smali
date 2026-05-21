.class public Landroidx/media3/session/IMediaSession$Default;
.super Ljava/lang/Object;
.source "IMediaSession.java"

# interfaces
.implements Landroidx/media3/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I
    .param p4, "mediaItemBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    return-void
.end method

.method public addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItems"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I
    .param p4, "mediaItems"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearMediaItems(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "connectionRequest"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public flushCommandQueue(Landroidx/media3/session/IMediaController;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    return-void
.end method

.method public getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "libraryParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    return-void
.end method

.method public getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    return-void
.end method

.method public getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "libraryParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    return-void
.end method

.method public getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "libraryParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public moveMediaItem(Landroidx/media3/session/IMediaController;III)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "currentIndex"    # I
    .param p4, "newIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .param p5, "newIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "controllerResult"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "sessionCommand"    # Landroid/os/Bundle;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public pause(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public play(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public prepare(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public release(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public removeMediaItem(Landroidx/media3/session/IMediaController;II)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public removeMediaItems(Landroidx/media3/session/IMediaController;III)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    return-void
.end method

.method public replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I
    .param p4, "mediaItemBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .param p5, "mediaItems"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "libraryParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    return-void
.end method

.method public seekBack(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    return-void
.end method

.method public seekForward(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    return-void
.end method

.method public seekTo(Landroidx/media3/session/IMediaController;IJ)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "positionMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    return-void
.end method

.method public seekToNext(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    return-void
.end method

.method public seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    return-void
.end method

.method public seekToPrevious(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    return-void
.end method

.method public seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemIndex"    # I
    .param p4, "positionMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "audioAttributes"    # Landroid/os/Bundle;
    .param p4, "handleAudioFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "muted"    # Z
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public setDeviceVolume(Landroidx/media3/session/IMediaController;II)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "volume"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .param p4, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .param p4, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItems"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItems"    # Landroid/os/IBinder;
    .param p4, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItems"    # Landroid/os/IBinder;
    .param p4, "startIndex"    # I
    .param p5, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "playbackParametersBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "speed"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "playlistMetadata"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    return-void
.end method

.method public setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "rating"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    return-void
.end method

.method public setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "rating"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    return-void
.end method

.method public setRepeatMode(Landroidx/media3/session/IMediaController;II)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "shuffleModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "trackSelectionParametersBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    return-void
.end method

.method public setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    return-void
.end method

.method public setVolume(Landroidx/media3/session/IMediaController;IF)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public stop(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "libraryParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    return-void
.end method

.method public unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 0
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    return-void
.end method

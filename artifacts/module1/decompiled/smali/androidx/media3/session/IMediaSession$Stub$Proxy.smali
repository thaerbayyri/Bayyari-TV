.class Landroidx/media3/session/IMediaSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaSession.java"

# interfaces
.implements Landroidx/media3/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/IMediaSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroidx/media3/session/IMediaSession;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    iput-object p1, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1153
    return-void
.end method


# virtual methods
.method public addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1850
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1851
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1852
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1853
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1854
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1858
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1860
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1861
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1862
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1863
    return-void

    .line 1867
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1868
    nop

    .line 1869
    return-void

    .line 1867
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1868
    throw v1
.end method

.method public addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I
    .param p4, "mediaItemBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1874
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1875
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1876
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1877
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 1879
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1883
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1886
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1887
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1888
    return-void

    .line 1892
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1893
    nop

    .line 1894
    return-void

    .line 1892
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1893
    throw v1
.end method

.method public addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItems"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1899
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1900
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1901
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1903
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1904
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1905
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1906
    return-void

    .line 1910
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1911
    nop

    .line 1912
    return-void

    .line 1910
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1911
    throw v1
.end method

.method public addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I
    .param p4, "mediaItems"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1917
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1918
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1919
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1920
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1921
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1922
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1923
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1924
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1925
    return-void

    .line 1929
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
    nop

    .line 1931
    return-void

    .line 1929
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1156
    iget-object v0, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearMediaItems(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1656
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1657
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1658
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbcd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1660
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1661
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->clearMediaItems(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1662
    return-void

    .line 1666
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1667
    nop

    .line 1668
    return-void

    .line 1666
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1667
    throw v1
.end method

.method public connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "connectionRequest"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1528
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1529
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1530
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1532
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1536
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1539
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1540
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1541
    return-void

    .line 1545
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1546
    nop

    .line 1547
    return-void

    .line 1545
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1546
    throw v1
.end method

.method public decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1258
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1259
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbbd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1262
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1263
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1264
    return-void

    .line 1268
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1269
    nop

    .line 1270
    return-void

    .line 1268
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1269
    throw v1
.end method

.method public decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1275
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1276
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbed

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1280
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1281
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1282
    return-void

    .line 1286
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1287
    nop

    .line 1288
    return-void

    .line 1286
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1287
    throw v1
.end method

.method public flushCommandQueue(Landroidx/media3/session/IMediaController;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2158
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2159
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2160
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2161
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2162
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1}, Landroidx/media3/session/IMediaSession;->flushCommandQueue(Landroidx/media3/session/IMediaController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2163
    return-void

    .line 2167
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2168
    nop

    .line 2169
    return-void

    .line 2167
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2168
    throw v1
.end method

.method public getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 9
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

    .line 2323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 2325
    .local v7, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2326
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2327
    invoke-virtual {v7, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    invoke-virtual {v7, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2329
    invoke-virtual {v7, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2330
    invoke-virtual {v7, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2331
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p6, :cond_1

    .line 2332
    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    invoke-virtual {p6, v7, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2336
    :cond_1
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    :goto_1
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa3

    invoke-interface {v2, v3, v7, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    move v8, v0

    .line 2339
    .local v8, "_status":Z
    if-nez v8, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2340
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/IMediaSession;->getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2345
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 2341
    return-void

    .line 2345
    .end local v8    # "_status":Z
    :cond_2
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 2346
    nop

    .line 2347
    return-void

    .line 2345
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 2346
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1160
    const-string v0, "androidx.media3.session.IMediaSession"

    return-object v0
.end method

.method public getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2307
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2308
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2311
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2312
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2313
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2314
    return-void

    .line 2318
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2319
    nop

    .line 2320
    return-void

    .line 2318
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2319
    throw v1
.end method

.method public getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "libraryParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2283
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2284
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2285
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2286
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 2287
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2288
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2291
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2293
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2294
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2295
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2296
    return-void

    .line 2300
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2301
    nop

    .line 2302
    return-void

    .line 2300
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2301
    throw v1
.end method

.method public getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 9
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

    .line 2375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 2377
    .local v7, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2378
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2379
    invoke-virtual {v7, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2380
    invoke-virtual {v7, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2381
    invoke-virtual {v7, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2382
    invoke-virtual {v7, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2383
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p6, :cond_1

    .line 2384
    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2385
    invoke-virtual {p6, v7, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2388
    :cond_1
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2390
    :goto_1
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa5

    invoke-interface {v2, v3, v7, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    move v8, v0

    .line 2391
    .local v8, "_status":Z
    if-nez v8, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2392
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/IMediaSession;->getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2397
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 2393
    return-void

    .line 2397
    .end local v8    # "_status":Z
    :cond_2
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 2398
    nop

    .line 2399
    return-void

    .line 2397
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 2398
    throw v0
.end method

.method public increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1223
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1224
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1225
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbbc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1227
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1228
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1229
    return-void

    .line 1233
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1234
    nop

    .line 1235
    return-void

    .line 1233
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1234
    throw v1
.end method

.method public increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1240
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1241
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbec

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1245
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1246
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    return-void

    .line 1251
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1252
    nop

    .line 1253
    return-void

    .line 1251
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1252
    throw v1
.end method

.method public moveMediaItem(Landroidx/media3/session/IMediaController;III)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "currentIndex"    # I
    .param p4, "newIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1673
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1674
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1675
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1678
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbce

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1679
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1680
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->moveMediaItem(Landroidx/media3/session/IMediaController;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1681
    return-void

    .line 1685
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1686
    nop

    .line 1687
    return-void

    .line 1685
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1686
    throw v1
.end method

.method public moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V
    .locals 9
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

    .line 1690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1692
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1693
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1705
    :catchall_0
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    goto :goto_1

    .line 1693
    :cond_0
    move-object v2, v0

    :goto_0
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1694
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1697
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbcf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1699
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1700
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "fromIndex":I
    .end local p4    # "toIndex":I
    .end local p5    # "newIndex":I
    .local v4, "caller":Landroidx/media3/session/IMediaController;
    .local v5, "seq":I
    .local v6, "fromIndex":I
    .local v7, "toIndex":I
    .local v8, "newIndex":I
    :try_start_3
    invoke-interface/range {v3 .. v8}, Landroidx/media3/session/IMediaSession;->moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1701
    return-void

    .line 1705
    .end local v0    # "_status":Z
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 1699
    .end local v4    # "caller":Landroidx/media3/session/IMediaController;
    .end local v5    # "seq":I
    .end local v6    # "fromIndex":I
    .end local v7    # "toIndex":I
    .end local v8    # "newIndex":I
    .restart local v0    # "_status":Z
    .restart local p1    # "caller":Landroidx/media3/session/IMediaController;
    .restart local p2    # "seq":I
    .restart local p3    # "fromIndex":I
    .restart local p4    # "toIndex":I
    .restart local p5    # "newIndex":I
    :cond_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 1705
    .end local v0    # "_status":Z
    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "fromIndex":I
    .end local p4    # "toIndex":I
    .end local p5    # "newIndex":I
    .restart local v4    # "caller":Landroidx/media3/session/IMediaController;
    .restart local v5    # "seq":I
    .restart local v6    # "fromIndex":I
    .restart local v7    # "toIndex":I
    .restart local v8    # "newIndex":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1706
    nop

    .line 1707
    return-void

    .line 1705
    .end local v4    # "caller":Landroidx/media3/session/IMediaController;
    .end local v5    # "seq":I
    .end local v6    # "fromIndex":I
    .end local v7    # "toIndex":I
    .end local v8    # "newIndex":I
    .restart local p1    # "caller":Landroidx/media3/session/IMediaController;
    .restart local p2    # "seq":I
    .restart local p3    # "fromIndex":I
    .restart local p4    # "toIndex":I
    .restart local p5    # "newIndex":I
    :catchall_2
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "fromIndex":I
    .end local p4    # "toIndex":I
    .end local p5    # "newIndex":I
    .restart local v4    # "caller":Landroidx/media3/session/IMediaController;
    .restart local v5    # "seq":I
    .restart local v6    # "fromIndex":I
    .restart local v7    # "toIndex":I
    .restart local v8    # "newIndex":I
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1706
    throw v0
.end method

.method public onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "controllerResult"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1504
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1505
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1506
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1508
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1512
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1515
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1516
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1517
    return-void

    .line 1521
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1522
    nop

    .line 1523
    return-void

    .line 1521
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1522
    throw v1
.end method

.method public onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "sessionCommand"    # Landroid/os/Bundle;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1552
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1553
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1555
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1556
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1557
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1560
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    :goto_1
    if-eqz p4, :cond_2

    .line 1563
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1564
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 1567
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1569
    :goto_2
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1570
    .local v1, "_status":Z
    if-nez v1, :cond_3

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1571
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1572
    return-void

    .line 1576
    .end local v1    # "_status":Z
    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1577
    nop

    .line 1578
    return-void

    .line 1576
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1577
    throw v1
.end method

.method public pause(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1774
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1775
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1776
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1777
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1778
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1779
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->pause(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1780
    return-void

    .line 1784
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1785
    nop

    .line 1786
    return-void

    .line 1784
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1785
    throw v1
.end method

.method public play(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1757
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1758
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1759
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1761
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1762
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->play(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1763
    return-void

    .line 1767
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    nop

    .line 1769
    return-void

    .line 1767
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    throw v1
.end method

.method public prepare(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1791
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1792
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1793
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1794
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1795
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1796
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->prepare(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1797
    return-void

    .line 1801
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1802
    nop

    .line 1803
    return-void

    .line 1801
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1802
    throw v1
.end method

.method public release(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1977
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1978
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1979
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1980
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbdb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1981
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1982
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->release(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1983
    return-void

    .line 1987
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1988
    nop

    .line 1989
    return-void

    .line 1987
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1988
    throw v1
.end method

.method public removeMediaItem(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1619
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1620
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1621
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbcb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1624
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1625
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->removeMediaItem(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1626
    return-void

    .line 1630
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1631
    nop

    .line 1632
    return-void

    .line 1630
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1631
    throw v1
.end method

.method public removeMediaItems(Landroidx/media3/session/IMediaController;III)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1637
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1638
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1639
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1641
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbcc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1643
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1644
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->removeMediaItems(Landroidx/media3/session/IMediaController;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1645
    return-void

    .line 1649
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1650
    nop

    .line 1651
    return-void

    .line 1649
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1650
    throw v1
.end method

.method public replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I
    .param p4, "mediaItemBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1712
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1713
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1714
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1715
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1716
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 1717
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1718
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1721
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbef

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1724
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1725
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1726
    return-void

    .line 1730
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    nop

    .line 1732
    return-void

    .line 1730
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    throw v1
.end method

.method public replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V
    .locals 9
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

    .line 1735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1737
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1738
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1750
    :catchall_0
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    goto :goto_1

    .line 1738
    :cond_0
    move-object v2, v0

    :goto_0
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1739
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1741
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1742
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1743
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbf0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1744
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1745
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "fromIndex":I
    .end local p4    # "toIndex":I
    .end local p5    # "mediaItems":Landroid/os/IBinder;
    .local v4, "caller":Landroidx/media3/session/IMediaController;
    .local v5, "seq":I
    .local v6, "fromIndex":I
    .local v7, "toIndex":I
    .local v8, "mediaItems":Landroid/os/IBinder;
    :try_start_3
    invoke-interface/range {v3 .. v8}, Landroidx/media3/session/IMediaSession;->replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    return-void

    .line 1750
    .end local v0    # "_status":Z
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 1744
    .end local v4    # "caller":Landroidx/media3/session/IMediaController;
    .end local v5    # "seq":I
    .end local v6    # "fromIndex":I
    .end local v7    # "toIndex":I
    .end local v8    # "mediaItems":Landroid/os/IBinder;
    .restart local v0    # "_status":Z
    .restart local p1    # "caller":Landroidx/media3/session/IMediaController;
    .restart local p2    # "seq":I
    .restart local p3    # "fromIndex":I
    .restart local p4    # "toIndex":I
    .restart local p5    # "mediaItems":Landroid/os/IBinder;
    :cond_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .line 1750
    .end local v0    # "_status":Z
    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "fromIndex":I
    .end local p4    # "toIndex":I
    .end local p5    # "mediaItems":Landroid/os/IBinder;
    .restart local v4    # "caller":Landroidx/media3/session/IMediaController;
    .restart local v5    # "seq":I
    .restart local v6    # "fromIndex":I
    .restart local v7    # "toIndex":I
    .restart local v8    # "mediaItems":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    nop

    .line 1752
    return-void

    .line 1750
    .end local v4    # "caller":Landroidx/media3/session/IMediaController;
    .end local v5    # "seq":I
    .end local v6    # "fromIndex":I
    .end local v7    # "toIndex":I
    .end local v8    # "mediaItems":Landroid/os/IBinder;
    .restart local p1    # "caller":Landroidx/media3/session/IMediaController;
    .restart local p2    # "seq":I
    .restart local p3    # "fromIndex":I
    .restart local p4    # "toIndex":I
    .restart local p5    # "mediaItems":Landroid/os/IBinder;
    :catchall_2
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "fromIndex":I
    .end local p4    # "toIndex":I
    .end local p5    # "mediaItems":Landroid/os/IBinder;
    .restart local v4    # "caller":Landroidx/media3/session/IMediaController;
    .restart local v5    # "seq":I
    .restart local v6    # "fromIndex":I
    .restart local v7    # "toIndex":I
    .restart local v8    # "mediaItems":Landroid/os/IBinder;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    throw v0
.end method

.method public search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "libraryParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2352
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2353
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2354
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2355
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2356
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 2357
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2358
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2361
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2363
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2364
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2365
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2366
    return-void

    .line 2370
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2371
    nop

    .line 2372
    return-void

    .line 2370
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2371
    throw v1
.end method

.method public seekBack(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2066
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2067
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2068
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2069
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2070
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2071
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->seekBack(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    return-void

    .line 2076
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2077
    nop

    .line 2078
    return-void

    .line 2076
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2077
    throw v1
.end method

.method public seekForward(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2083
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2084
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2085
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2086
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2087
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2088
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->seekForward(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2089
    return-void

    .line 2093
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2094
    nop

    .line 2095
    return-void

    .line 2093
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2094
    throw v1
.end method

.method public seekTo(Landroidx/media3/session/IMediaController;IJ)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "positionMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2029
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2030
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2031
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2032
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2033
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbde

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2034
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2035
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->seekTo(Landroidx/media3/session/IMediaController;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2036
    return-void

    .line 2040
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2041
    nop

    .line 2042
    return-void

    .line 2040
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2041
    throw v1
.end method

.method public seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1994
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1995
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1996
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1997
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbdc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1998
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1999
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2000
    return-void

    .line 2004
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2005
    nop

    .line 2006
    return-void

    .line 2004
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2005
    throw v1
.end method

.method public seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2011
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2012
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2013
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2014
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2015
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbdd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2016
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2017
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2018
    return-void

    .line 2022
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    nop

    .line 2024
    return-void

    .line 2022
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    throw v1
.end method

.method public seekToNext(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2191
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2192
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2193
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2194
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2195
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2196
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->seekToNext(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2197
    return-void

    .line 2201
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2202
    nop

    .line 2203
    return-void

    .line 2201
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2202
    throw v1
.end method

.method public seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2117
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2118
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2120
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2121
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2122
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2123
    return-void

    .line 2127
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
    nop

    .line 2129
    return-void

    .line 2127
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
    throw v1
.end method

.method public seekToPrevious(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2174
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2175
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2178
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2179
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->seekToPrevious(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2180
    return-void

    .line 2184
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2185
    nop

    .line 2186
    return-void

    .line 2184
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2185
    throw v1
.end method

.method public seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2100
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2101
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2102
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2104
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2105
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2106
    return-void

    .line 2110
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2111
    nop

    .line 2112
    return-void

    .line 2110
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2111
    throw v1
.end method

.method public seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V
    .locals 9
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemIndex"    # I
    .param p4, "positionMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2047
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2048
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2059
    :catchall_0
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    goto :goto_1

    .line 2048
    :cond_0
    move-object v2, v0

    :goto_0
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2049
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2050
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2051
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2052
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbdf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2053
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2054
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "mediaItemIndex":I
    .end local p4    # "positionMs":J
    .local v4, "caller":Landroidx/media3/session/IMediaController;
    .local v5, "seq":I
    .local v6, "mediaItemIndex":I
    .local v7, "positionMs":J
    :try_start_3
    invoke-interface/range {v3 .. v8}, Landroidx/media3/session/IMediaSession;->seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2059
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2055
    return-void

    .line 2059
    .end local v0    # "_status":Z
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 2053
    .end local v4    # "caller":Landroidx/media3/session/IMediaController;
    .end local v5    # "seq":I
    .end local v6    # "mediaItemIndex":I
    .end local v7    # "positionMs":J
    .restart local v0    # "_status":Z
    .restart local p1    # "caller":Landroidx/media3/session/IMediaController;
    .restart local p2    # "seq":I
    .restart local p3    # "mediaItemIndex":I
    .restart local p4    # "positionMs":J
    :cond_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    .line 2059
    .end local v0    # "_status":Z
    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "mediaItemIndex":I
    .end local p4    # "positionMs":J
    .restart local v4    # "caller":Landroidx/media3/session/IMediaController;
    .restart local v5    # "seq":I
    .restart local v6    # "mediaItemIndex":I
    .restart local v7    # "positionMs":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2060
    nop

    .line 2061
    return-void

    .line 2059
    .end local v4    # "caller":Landroidx/media3/session/IMediaController;
    .end local v5    # "seq":I
    .end local v6    # "mediaItemIndex":I
    .end local v7    # "positionMs":J
    .restart local p1    # "caller":Landroidx/media3/session/IMediaController;
    .restart local p2    # "seq":I
    .restart local p3    # "mediaItemIndex":I
    .restart local p4    # "positionMs":J
    :catchall_2
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "mediaItemIndex":I
    .end local p4    # "positionMs":J
    .restart local v4    # "caller":Landroidx/media3/session/IMediaController;
    .restart local v5    # "seq":I
    .restart local v6    # "mediaItemIndex":I
    .restart local v7    # "positionMs":J
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2060
    throw v0
.end method

.method public setAudioAttributes(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "audioAttributes"    # Landroid/os/Bundle;
    .param p4, "handleAudioFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1330
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1331
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1332
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1334
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1338
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1340
    :goto_1
    if-eqz p4, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbf1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1342
    .local v1, "_status":Z
    if-nez v1, :cond_3

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1343
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setAudioAttributes(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1344
    return-void

    .line 1348
    .end local v1    # "_status":Z
    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1349
    nop

    .line 1350
    return-void

    .line 1348
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1349
    throw v1
.end method

.method public setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1293
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1294
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    const/4 v2, 0x1

    if-eqz p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbbe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1298
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1299
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1300
    return-void

    .line 1304
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1305
    nop

    .line 1306
    return-void

    .line 1304
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1305
    throw v1
.end method

.method public setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "muted"    # Z
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1311
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1312
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1313
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    const/4 v2, 0x1

    if-eqz p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbee

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1317
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1318
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1319
    return-void

    .line 1323
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1324
    nop

    .line 1325
    return-void

    .line 1323
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1324
    throw v1
.end method

.method public setDeviceVolume(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1186
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1187
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1188
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbbb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1191
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1192
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setDeviceVolume(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1193
    return-void

    .line 1197
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1198
    nop

    .line 1199
    return-void

    .line 1197
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1198
    throw v1
.end method

.method public setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "volume"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1204
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1205
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1206
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1208
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbeb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1210
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1211
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1212
    return-void

    .line 1216
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1217
    nop

    .line 1218
    return-void

    .line 1216
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1217
    throw v1
.end method

.method public setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1355
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1356
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1357
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1359
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1363
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1365
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbbf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1366
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1367
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1368
    return-void

    .line 1372
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1373
    nop

    .line 1374
    return-void

    .line 1372
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1373
    throw v1
.end method

.method public setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .param p4, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1404
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1405
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1406
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1408
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1409
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1412
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    :goto_1
    if-eqz p4, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1416
    .local v1, "_status":Z
    if-nez v1, :cond_3

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1417
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1418
    return-void

    .line 1422
    .end local v1    # "_status":Z
    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1423
    nop

    .line 1424
    return-void

    .line 1422
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1423
    throw v1
.end method

.method public setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V
    .locals 9
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .param p4, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1379
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1380
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1397
    :catchall_0
    move-exception v0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    goto :goto_2

    .line 1380
    :cond_0
    move-object v2, v0

    :goto_0
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1381
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1382
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1383
    :try_start_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1387
    :cond_1
    :try_start_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    :goto_1
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1390
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc0

    invoke-interface {v3, v4, v1, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1391
    .local v0, "_status":Z
    if-nez v0, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1392
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "mediaItemBundle":Landroid/os/Bundle;
    .end local p4    # "startPositionMs":J
    .local v4, "caller":Landroidx/media3/session/IMediaController;
    .local v5, "seq":I
    .local v6, "mediaItemBundle":Landroid/os/Bundle;
    .local v7, "startPositionMs":J
    :try_start_5
    invoke-interface/range {v3 .. v8}, Landroidx/media3/session/IMediaSession;->setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1393
    return-void

    .line 1397
    .end local v0    # "_status":Z
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1391
    .end local v4    # "caller":Landroidx/media3/session/IMediaController;
    .end local v5    # "seq":I
    .end local v6    # "mediaItemBundle":Landroid/os/Bundle;
    .end local v7    # "startPositionMs":J
    .restart local v0    # "_status":Z
    .restart local p1    # "caller":Landroidx/media3/session/IMediaController;
    .restart local p2    # "seq":I
    .restart local p3    # "mediaItemBundle":Landroid/os/Bundle;
    .restart local p4    # "startPositionMs":J
    :cond_2
    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 1397
    .end local v0    # "_status":Z
    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "mediaItemBundle":Landroid/os/Bundle;
    .end local p4    # "startPositionMs":J
    .restart local v4    # "caller":Landroidx/media3/session/IMediaController;
    .restart local v5    # "seq":I
    .restart local v6    # "mediaItemBundle":Landroid/os/Bundle;
    .restart local v7    # "startPositionMs":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    nop

    .line 1399
    return-void

    .line 1397
    .end local v4    # "caller":Landroidx/media3/session/IMediaController;
    .end local v5    # "seq":I
    .end local v6    # "mediaItemBundle":Landroid/os/Bundle;
    .end local v7    # "startPositionMs":J
    .restart local p1    # "caller":Landroidx/media3/session/IMediaController;
    .restart local p2    # "seq":I
    .restart local p3    # "mediaItemBundle":Landroid/os/Bundle;
    .restart local p4    # "startPositionMs":J
    :catchall_2
    move-exception v0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "seq":I
    .end local p3    # "mediaItemBundle":Landroid/os/Bundle;
    .end local p4    # "startPositionMs":J
    .restart local v4    # "caller":Landroidx/media3/session/IMediaController;
    .restart local v5    # "seq":I
    .restart local v6    # "mediaItemBundle":Landroid/os/Bundle;
    .restart local v7    # "startPositionMs":J
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    throw v0
.end method

.method public setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItems"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1429
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1430
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1431
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1433
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1434
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1435
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1436
    return-void

    .line 1440
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1441
    nop

    .line 1442
    return-void

    .line 1440
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1441
    throw v1
.end method

.method public setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaItems"    # Landroid/os/IBinder;
    .param p4, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1447
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1448
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1449
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1451
    const/4 v2, 0x1

    if-eqz p4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1453
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1454
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1455
    return-void

    .line 1459
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1460
    nop

    .line 1461
    return-void

    .line 1459
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1460
    throw v1
.end method

.method public setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V
    .locals 10
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

    .line 1464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1466
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1467
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1468
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1470
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    move-wide v8, p5

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1472
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1473
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1474
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v3 .. v9}, Landroidx/media3/session/IMediaSession;->setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1475
    return-void

    .line 1479
    .end local v0    # "_status":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    nop

    .line 1481
    return-void

    .line 1479
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    throw v0
.end method

.method public setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1486
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1487
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1488
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    const/4 v2, 0x1

    if-eqz p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1491
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1492
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1493
    return-void

    .line 1497
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    nop

    .line 1499
    return-void

    .line 1497
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    throw v1
.end method

.method public setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "playbackParametersBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1808
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1809
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1810
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1811
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1812
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1816
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1818
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1819
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1820
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1821
    return-void

    .line 1825
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    nop

    .line 1827
    return-void

    .line 1825
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    throw v1
.end method

.method public setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "speed"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1832
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1833
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1834
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1835
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1836
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1837
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1838
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1839
    return-void

    .line 1843
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    nop

    .line 1845
    return-void

    .line 1843
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    throw v1
.end method

.method public setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "playlistMetadata"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1936
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1937
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1938
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1940
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1944
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1946
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1947
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1948
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1949
    return-void

    .line 1953
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1954
    nop

    .line 1955
    return-void

    .line 1953
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1954
    throw v1
.end method

.method public setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "rating"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2257
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2258
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2259
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2260
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 2261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2262
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2265
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2267
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbea

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2268
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2269
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2270
    return-void

    .line 2274
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2275
    nop

    .line 2276
    return-void

    .line 2274
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2275
    throw v1
.end method

.method public setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "rating"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2232
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2233
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2234
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2235
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2236
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 2237
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2241
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2243
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbe9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2244
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2245
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2246
    return-void

    .line 2250
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2251
    nop

    .line 2252
    return-void

    .line 2250
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2251
    throw v1
.end method

.method public setRepeatMode(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1583
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1584
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1585
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1586
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1587
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1588
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1589
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setRepeatMode(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1590
    return-void

    .line 1594
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1595
    nop

    .line 1596
    return-void

    .line 1594
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1595
    throw v1
.end method

.method public setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "shuffleModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1601
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1602
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1603
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    const/4 v2, 0x1

    if-eqz p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1605
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbca

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1606
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1607
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1608
    return-void

    .line 1612
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1613
    nop

    .line 1614
    return-void

    .line 1612
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1613
    throw v1
.end method

.method public setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "trackSelectionParametersBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2208
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2209
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 2212
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2213
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2216
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2218
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbe8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2219
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2220
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2221
    return-void

    .line 2225
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2226
    nop

    .line 2227
    return-void

    .line 2225
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2226
    throw v1
.end method

.method public setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2134
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2135
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2136
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2137
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 2138
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2139
    invoke-virtual {p3, v0, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2142
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbe4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2145
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2146
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2147
    return-void

    .line 2151
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2152
    nop

    .line 2153
    return-void

    .line 2151
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2152
    throw v1
.end method

.method public setVolume(Landroidx/media3/session/IMediaController;IF)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1168
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1169
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1170
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1172
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbba

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1173
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1174
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setVolume(Landroidx/media3/session/IMediaController;IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1175
    return-void

    .line 1179
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1180
    nop

    .line 1181
    return-void

    .line 1179
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1180
    throw v1
.end method

.method public stop(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1960
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1961
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1962
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1963
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbda

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1964
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1965
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/IMediaSession;->stop(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1966
    return-void

    .line 1970
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1971
    nop

    .line 1972
    return-void

    .line 1970
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1971
    throw v1
.end method

.method public subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "libraryParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2404
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2405
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2406
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2407
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2408
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 2409
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2410
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2413
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2415
    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2416
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2417
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2418
    return-void

    .line 2422
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2423
    nop

    .line 2424
    return-void

    .line 2422
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2423
    throw v1
.end method

.method public unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2429
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2430
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2431
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2432
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2433
    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2434
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2435
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2436
    return-void

    .line 2440
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2441
    nop

    .line 2442
    return-void

    .line 2440
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2441
    throw v1
.end method

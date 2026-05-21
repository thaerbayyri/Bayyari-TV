.class final Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;,
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;,
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;,
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;,
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$SampleStreamImpl;,
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$ExtractorOutputImpl;
    }
.end annotation


# static fields
.field private static final PORT_BINDING_MAX_RETRY_COUNT:I = 0x3


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field private final handler:Landroid/os/Handler;

.field private final internalListener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;

.field private isUsingRtpTcp:Z

.field private final listener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;

.field private loadingFinished:Z

.field private notifyDiscontinuity:Z

.field private pendingSeekPositionUs:J

.field private pendingSeekPositionUsForTcpRetry:J

.field private playbackException:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

.field private portBindingRetryCount:I

.field private preparationError:Ljava/io/IOException;

.field private prepared:Z

.field private released:Z

.field private requestedSeekPositionUs:J

.field private final rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

.field private final rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

.field private final rtspLoaderWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedLoadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private trackSelected:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;Landroid/net/Uri;Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V
    .locals 9
    .param p1, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p2, "rtpDataChannelFactory"    # Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "listener"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;
    .param p5, "userAgent"    # Ljava/lang/String;
    .param p6, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p7, "debugLoggingEnabled"    # Z

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 127
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    .line 128
    iput-object p4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->listener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;

    .line 130
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->handler:Landroid/os/Handler;

    .line 131
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$1;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->internalListener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;

    .line 132
    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspClient;

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->internalListener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;

    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->internalListener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;

    move-object v6, p3

    move-object v5, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/rtsp/RtspClient;-><init>(Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;Z)V

    iput-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    .line 143
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    .line 144
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    .line 145
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    .line 146
    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->prepared:Z

    return v0
.end method

.method static synthetic access$1102(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
    .param p1, "x1"    # Ljava/io/IOException;

    .line 67
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->preparationError:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$1208(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)I
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->portBindingRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->portBindingRetryCount:I

    return v0
.end method

.method static synthetic access$1300(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->playbackException:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    return-object v0
.end method

.method static synthetic access$1302(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
    .param p1, "x1"    # Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 67
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->playbackException:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    return-object p1
.end method

.method static synthetic access$1400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    return-wide v0
.end method

.method static synthetic access$1402(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
    .param p1, "x1"    # J

    .line 67
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    return-wide p1
.end method

.method static synthetic access$1500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    return-wide v0
.end method

.method static synthetic access$1502(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
    .param p1, "x1"    # J

    .line 67
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    return-wide p1
.end method

.method static synthetic access$1600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->listener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;

    return-object v0
.end method

.method static synthetic access$1800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isSeekPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    return p1
.end method

.method static synthetic access$2000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    return-wide v0
.end method

.method static synthetic access$2002(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
    .param p1, "x1"    # J

    .line 67
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    return-wide p1
.end method

.method static synthetic access$2100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 67
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->getLoadableByTrackUri(Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    return-object v0
.end method

.method static synthetic access$2300(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/upstream/Allocator;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    return-object v0
.end method

.method static synthetic access$2400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->internalListener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;

    return-object v0
.end method

.method static synthetic access$2500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->updateLoadingFinished()V

    return-void
.end method

.method static synthetic access$2700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->maybeSetupTracks()V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    return v0
.end method

.method static synthetic access$602(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    return p1
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->retryWithRtpTcp()V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspClient;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    return-object v0
.end method

.method private static buildTrackGroups(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/TrackGroup;",
            ">;"
        }
    .end annotation

    .line 494
    .local p0, "rtspLoaderWrappers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 496
    .local v0, "listBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/TrackGroup;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 497
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v2

    .line 498
    .local v2, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    new-instance v3, Landroidx/media3/common/TrackGroup;

    .line 500
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Landroidx/media3/common/Format;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/Format;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 498
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v1    # "i":I
    .end local v2    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method private getLoadableByTrackUri(Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    .locals 3
    .param p1, "trackUri"    # Landroid/net/Uri;

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 427
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v1, v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    .line 429
    .local v1, "loadInfo":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;
    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->access$300(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-result-object v2

    return-object v2

    .line 426
    .end local v1    # "loadInfo":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isSeekPending()Z
    .locals 4

    .line 438
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeFinishPrepare()V
    .locals 2

    .line 442
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->released:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 447
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 448
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v1

    if-nez v1, :cond_1

    .line 449
    return-void

    .line 447
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->prepared:Z

    .line 454
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->buildTrackGroups(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    .line 455
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 456
    return-void

    .line 443
    :cond_3
    :goto_1
    return-void
.end method

.method private maybeSetupTracks()V
    .locals 3

    .line 475
    const/4 v0, 0x1

    .line 476
    .local v0, "transportReady":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 477
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->isTransportReady()Z

    move-result v2

    and-int/2addr v0, v2

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackSelected:Z

    if-eqz v1, :cond_1

    .line 481
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->setupSelectedTracks(Ljava/util/List;)V

    .line 483
    :cond_1
    return-void
.end method

.method private retryWithRtpTcp()V
    .locals 8

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    .line 707
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->retryWithRtpTcp()V

    .line 710
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    .line 711
    invoke-interface {v0}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;->createFallbackDataChannelFactory()Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    move-result-object v0

    .line 712
    .local v0, "fallbackRtpDataChannelFactory":Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;
    if-nez v0, :cond_0

    .line 713
    new-instance v1, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    const-string v2, "No fallback data channel factory for TCP retry"

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->playbackException:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 715
    return-void

    .line 718
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 719
    .local v1, "newLoaderWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 722
    .local v2, "newSelectedLoadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 740
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    .line 722
    if-ge v3, v4, :cond_3

    .line 723
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    .line 725
    .local v4, "loaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    invoke-static {v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 726
    new-instance v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v6, v4, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->mediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    invoke-direct {v5, p0, v6, v3, v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;ILandroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)V

    .line 729
    .local v5, "newLoaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-virtual {v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->startLoading()V

    .line 731
    iget-object v6, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    iget-object v7, v4, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 732
    iget-object v6, v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .end local v5    # "newLoaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    :cond_1
    goto :goto_1

    .line 735
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    .end local v4    # "loaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 740
    .end local v3    # "i":I
    :cond_3
    nop

    .line 741
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 742
    .local v3, "oldRtspLoaderWrappers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;>;"
    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 743
    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 744
    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 745
    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 749
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 750
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->cancelLoad()V

    .line 749
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 752
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 4
    .param p1, "positionUs"    # J

    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 466
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v1

    .line 467
    .local v1, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    return v2

    .line 465
    .end local v1    # "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private suppressRead()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    return v0
.end method

.method private updateLoadingFinished()V
    .locals 3

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 488
    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 1
    .param p1, "loadingInfo"    # Landroidx/media3/exoplayer/LoadingInfo;

    .line 378
    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isLoading()Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .locals 4
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 246
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isSeekPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 251
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    .line 252
    .local v1, "loaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, p3, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->discardTo(JZZ)V

    .line 250
    .end local v1    # "loaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;

    .line 343
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 9

    .line 348
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 352
    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 353
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    return-wide v0

    .line 356
    :cond_1
    const/4 v0, 0x1

    .line 357
    .local v0, "allLoaderWrappersAreCanceled":Z
    const-wide v3, 0x7fffffffffffffffL

    .line 358
    .local v3, "bufferedPositionUs":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 359
    iget-object v6, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    .line 360
    .local v6, "loaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    invoke-static {v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 361
    invoke-virtual {v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->getBufferedPositionUs()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 362
    const/4 v0, 0x0

    .line 358
    .end local v6    # "loaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 366
    .end local v5    # "i":I
    :cond_3
    if-nez v0, :cond_5

    cmp-long v1, v3, v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 368
    :cond_4
    move-wide v1, v3

    goto :goto_2

    .line 367
    :cond_5
    :goto_1
    const-wide/16 v1, 0x0

    .line 366
    :goto_2
    return-wide v1

    .line 349
    .end local v0    # "allLoaderWrappersAreCanceled":Z
    .end local v3    # "bufferedPositionUs":J
    :cond_6
    :goto_3
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 373
    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation

    .line 184
    .local p1, "trackSelections":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->getStreamKeys(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 3

    .line 178
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->prepared:Z

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 179
    new-instance v0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media3/common/TrackGroup;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    return-object v0
.end method

.method public isLoading()Z
    .locals 3

    .line 383
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 384
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 385
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->getState()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 383
    :goto_0
    return v2
.end method

.method isReady(I)Z
    .locals 1
    .param p1, "trackGroupIndex"    # I

    .line 396
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->isSampleQueueReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->preparationError:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 174
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->preparationError:Ljava/io/IOException;

    throw v0
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 2
    .param p1, "callback"    # Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 159
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 162
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->preparationError:Ljava/io/IOException;

    .line 165
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method readData(ILandroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 1
    .param p1, "sampleQueueIndex"    # I
    .param p2, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .param p3, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .param p4, "readFlags"    # I

    .line 405
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, -0x3

    return v0

    .line 408
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v0, p2, p3, p4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v0

    return v0
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 264
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    .line 266
    const-wide/16 v0, 0x0

    return-wide v0

    .line 268
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0
    .param p1, "positionUs"    # J

    .line 391
    return-void
.end method

.method public release()V
    .locals 2

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->release()V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->released:Z

    .line 155
    return-void
.end method

.method public seekToUs(J)J
    .locals 4
    .param p1, "positionUs"    # J

    .line 285
    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    if-nez v0, :cond_0

    .line 287
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    .line 288
    return-wide p1

    .line 291
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->discardBuffer(JZ)V

    .line 292
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    .line 294
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isSeekPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 303
    :pswitch_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    .line 304
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    iget-wide v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->seekToUs(J)V

    .line 305
    return-wide p1

    .line 299
    :pswitch_1
    return-wide p1

    .line 314
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->seekInsideBufferUs(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    return-wide p1

    .line 318
    :cond_2
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    .line 320
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_5

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 322
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->resumeLoad()V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "i":I
    :cond_3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    .line 328
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 325
    if-eqz v0, :cond_4

    .line 326
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/rtsp/RtspClient;->startPlayback(J)V

    goto :goto_1

    .line 328
    :cond_4
    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->seekToUs(J)V

    goto :goto_1

    .line 332
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->seekToUs(J)V

    .line 335
    :goto_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 336
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->seekTo(J)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 338
    .end local v0    # "i":I
    :cond_6
    return-wide p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 7
    .param p1, "selections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media3/exoplayer/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 198
    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 199
    :cond_0
    const/4 v1, 0x0

    aput-object v1, p3, v0

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_5

    .line 206
    aget-object v1, p1, v0

    .line 207
    .local v1, "selection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    if-nez v1, :cond_3

    .line 208
    goto :goto_2

    .line 211
    :cond_3
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v3

    .line 212
    .local v3, "trackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 213
    .local v4, "trackGroupIndex":I
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    iget-object v6, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v6, v6, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 217
    aget-object v5, p3, v0

    if-nez v5, :cond_4

    .line 218
    new-instance v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$SampleStreamImpl;

    invoke-direct {v5, p0, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;I)V

    aput-object v5, p3, v0

    .line 220
    aput-boolean v2, p4, v0

    .line 205
    .end local v1    # "selection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    .end local v3    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v4    # "trackGroupIndex":I
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 227
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    .line 228
    .local v1, "loadControl":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    iget-object v4, v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 229
    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->cancelLoad()V

    .line 226
    .end local v1    # "loadControl":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 233
    .end local v0    # "i":I
    :cond_7
    iput-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackSelected:Z

    .line 234
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_8

    .line 236
    iput-wide p5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    .line 237
    iput-wide p5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    .line 238
    iput-wide p5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    .line 240
    :cond_8
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->maybeSetupTracks()V

    .line 241
    return-wide p5
.end method

.method skipData(IJ)I
    .locals 1
    .param p1, "sampleQueueIndex"    # I
    .param p2, "positionUs"    # J

    .line 412
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, -0x3

    return v0

    .line 415
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v0, p2, p3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->skipData(J)I

    move-result v0

    return v0
.end method

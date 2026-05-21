.class final Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;
.implements Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;
.implements Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;
.implements Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;",
        ">;",
        "Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;",
        "Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;",
        "Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0

    .line 530
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
    .param p2, "x1"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$1;

    .line 530
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    return-void
.end method

.method static synthetic lambda$onUpstreamFormatChanged$0(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0
    .param p0, "rec$"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 599
    invoke-static {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJZ)V
    .locals 0
    .param p1, "loadable"    # Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .line 565
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 530
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->onLoadCanceled(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJ)V
    .locals 4
    .param p1, "loadable"    # Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 541
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    .line 548
    :cond_0
    return-void

    .line 552
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 553
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    .line 554
    .local v1, "loaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    iget-object v2, v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->access$300(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 555
    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->cancelLoad()V

    .line 556
    goto :goto_1

    .line 552
    .end local v1    # "loaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    .end local v0    # "i":I
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$900(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspClient;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->signalPlaybackEnded()V

    .line 561
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 530
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->onLoadCompleted(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 3
    .param p1, "loadable"    # Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 574
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0, p6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1102(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {p6}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/BindException;

    .line 587
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 577
    if-eqz v0, :cond_1

    .line 583
    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1208(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 584
    sget-object v0, Landroidx/media3/exoplayer/upstream/Loader;->RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object v0

    .line 587
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    iget-object v2, p1, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->rtspMediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    iget-object v2, v2, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->uri:Landroid/net/Uri;

    .line 589
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p6}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 587
    invoke-static {v1, v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1302(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 592
    :cond_2
    :goto_0
    sget-object v0, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object v0
.end method

.method public bridge synthetic onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 8

    .line 530
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->onLoadError(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onPlaybackError(Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V
    .locals 1
    .param p1, "error"    # Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 674
    instance-of v0, p1, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspUdpUnsupportedTransportException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    goto :goto_0

    .line 679
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1302(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 681
    :goto_0
    return-void
.end method

.method public onPlaybackStarted(JLcom/google/common/collect/ImmutableList;)V
    .locals 10
    .param p1, "startPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;",
            ">;)V"
        }
    .end annotation

    .line 621
    .local p3, "trackTimingList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 622
    .local v0, "trackUrisWithTiming":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 623
    invoke-virtual {p3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;

    iget-object v2, v2, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v1, v2, :cond_2

    .line 626
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    .line 627
    .local v2, "loadInfo":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;
    invoke-virtual {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 628
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;

    move-result-object v5

    invoke-interface {v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;->onSeekingUnsupported()V

    .line 629
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 630
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1902(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Z)Z

    .line 631
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v5, v3, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1402(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    .line 632
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v5, v3, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2002(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    .line 633
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v5, v3, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1502(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    .line 625
    .end local v2    # "loadInfo":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 638
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 639
    invoke-virtual {p3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;

    .line 640
    .local v2, "trackTiming":Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    iget-object v6, v2, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->uri:Landroid/net/Uri;

    invoke-static {v5, v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-result-object v5

    .line 641
    .local v5, "dataLoadable":Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    if-nez v5, :cond_3

    .line 642
    goto :goto_3

    .line 645
    :cond_3
    iget-wide v6, v2, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->rtpTimestamp:J

    invoke-virtual {v5, v6, v7}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->setTimestamp(J)V

    .line 646
    iget v6, v2, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->sequenceNumber:I

    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->setSequenceNumber(I)V

    .line 648
    iget-object v6, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v6

    iget-object v8, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v8}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 652
    iget-wide v6, v2, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->rtpTimestamp:J

    invoke-virtual {v5, p1, p2, v6, v7}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->seekToUs(JJ)V

    .line 638
    .end local v2    # "trackTiming":Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;
    .end local v5    # "dataLoadable":Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 656
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result v1

    .line 666
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 656
    if-eqz v1, :cond_7

    .line 657
    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v1

    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v5

    cmp-long v1, v1, v5

    .line 663
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 657
    if-nez v1, :cond_6

    .line 659
    invoke-static {v2, v3, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1402(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    .line 660
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v1, v3, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2002(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    goto :goto_4

    .line 663
    :cond_6
    invoke-static {v2, v3, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1402(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    .line 664
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->seekToUs(J)J

    goto :goto_4

    .line 666
    :cond_7
    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 667
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->seekToUs(J)J

    .line 668
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v1, v3, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1502(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    .line 670
    :cond_8
    :goto_4
    return-void
.end method

.method public onRtspSetupCompleted()V
    .locals 6

    .line 606
    const-wide/16 v0, 0x0

    .line 607
    .local v0, "offsetMs":J
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    .line 609
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 607
    if-eqz v2, :cond_0

    .line 608
    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    goto :goto_0

    .line 609
    :cond_0
    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 610
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    .line 612
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$900(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspClient;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->startPlayback(J)V

    .line 613
    return-void
.end method

.method public onSessionTimelineRequestFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 699
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    new-instance v1, Ljava/io/IOException;

    if-nez p2, :cond_0

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1102(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Ljava/io/IOException;)Ljava/io/IOException;

    .line 700
    return-void
.end method

.method public onSessionTimelineUpdated(Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;Lcom/google/common/collect/ImmutableList;)V
    .locals 5
    .param p1, "timing"    # Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;",
            ">;)V"
        }
    .end annotation

    .line 686
    .local p2, "tracks":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 687
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    .line 688
    .local v1, "rtspMediaTrack":Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;
    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 689
    invoke-static {v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;ILandroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)V

    .line 690
    .local v2, "loaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-virtual {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->startLoading()V

    .line 686
    .end local v1    # "rtspMediaTrack":Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;
    .end local v2    # "loaderWrapper":Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;->onSourceInfoRefreshed(Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;)V

    .line 695
    return-void
.end method

.method public onUpstreamFormatChanged(Landroidx/media3/common/Format;)V
    .locals 3
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 599
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    return-void
.end method

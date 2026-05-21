.class final Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;
.super Ljava/lang/Object;
.source "RtspMessageChannel.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoaderCallbackImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;)V
    .locals 0

    .line 319
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;
    .param p2, "x1"    # Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$1;

    .line 319
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;)V

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;JJZ)V
    .locals 0
    .param p1, "loadable"    # Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .line 325
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 319
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;->onLoadCanceled(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;JJ)V
    .locals 0
    .param p1, "loadable"    # Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 321
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 319
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;->onLoadCompleted(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 1
    .param p1, "loadable"    # Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 334
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->access$200(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;)Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;

    move-result-object v0

    invoke-interface {v0, p6}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;->onReceivingFailed(Ljava/lang/Exception;)V

    .line 337
    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object v0
.end method

.method public bridge synthetic onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 8

    .line 319
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;->onLoadError(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

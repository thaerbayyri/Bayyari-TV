.class Landroidx/media3/exoplayer/rtsp/RtspMediaSource$1;
.super Ljava/lang/Object;
.source "RtspMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/rtsp/RtspMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaSource;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMediaSource;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    .line 284
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$1;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekingUnsupported()V
    .locals 2

    .line 296
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$1;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource;->access$102(Landroidx/media3/exoplayer/rtsp/RtspMediaSource;Z)Z

    .line 297
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$1;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource;->access$400(Landroidx/media3/exoplayer/rtsp/RtspMediaSource;)V

    .line 298
    return-void
.end method

.method public onSourceInfoRefreshed(Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;)V
    .locals 3
    .param p1, "timing"    # Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;

    .line 287
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$1;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;->getDurationMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource;->access$002(Landroidx/media3/exoplayer/rtsp/RtspMediaSource;J)J

    .line 288
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$1;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;->isLive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource;->access$102(Landroidx/media3/exoplayer/rtsp/RtspMediaSource;Z)Z

    .line 289
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$1;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;->isLive()Z

    move-result v1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource;->access$202(Landroidx/media3/exoplayer/rtsp/RtspMediaSource;Z)Z

    .line 290
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$1;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource;->access$302(Landroidx/media3/exoplayer/rtsp/RtspMediaSource;Z)Z

    .line 291
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$1;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource;->access$400(Landroidx/media3/exoplayer/rtsp/RtspMediaSource;)V

    .line 292
    return-void
.end method

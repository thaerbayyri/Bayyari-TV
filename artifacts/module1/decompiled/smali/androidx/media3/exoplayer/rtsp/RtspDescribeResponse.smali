.class final Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;
.super Ljava/lang/Object;
.source "RtspDescribeResponse.java"


# instance fields
.field public final headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

.field public final sessionDescription:Landroidx/media3/exoplayer/rtsp/SessionDescription;

.field public final status:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspHeaders;ILandroidx/media3/exoplayer/rtsp/SessionDescription;)V
    .locals 0
    .param p1, "headers"    # Landroidx/media3/exoplayer/rtsp/RtspHeaders;
    .param p2, "status"    # I
    .param p3, "sessionDescription"    # Landroidx/media3/exoplayer/rtsp/SessionDescription;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;->headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

    .line 42
    iput p2, p0, Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;->status:I

    .line 43
    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;->sessionDescription:Landroidx/media3/exoplayer/rtsp/SessionDescription;

    .line 44
    return-void
.end method

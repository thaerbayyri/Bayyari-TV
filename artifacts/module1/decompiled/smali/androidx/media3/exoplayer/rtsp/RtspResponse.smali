.class final Landroidx/media3/exoplayer/rtsp/RtspResponse;
.super Ljava/lang/Object;
.source "RtspResponse.java"


# instance fields
.field public final headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

.field public final messageBody:Ljava/lang/String;

.field public final status:I


# direct methods
.method public constructor <init>(ILandroidx/media3/exoplayer/rtsp/RtspHeaders;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "headers"    # Landroidx/media3/exoplayer/rtsp/RtspHeaders;

    .line 54
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/rtsp/RtspResponse;-><init>(ILandroidx/media3/exoplayer/rtsp/RtspHeaders;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(ILandroidx/media3/exoplayer/rtsp/RtspHeaders;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "headers"    # Landroidx/media3/exoplayer/rtsp/RtspHeaders;
    .param p3, "messageBody"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtspResponse;->status:I

    .line 43
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspResponse;->headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

    .line 44
    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtspResponse;->messageBody:Ljava/lang/String;

    .line 45
    return-void
.end method

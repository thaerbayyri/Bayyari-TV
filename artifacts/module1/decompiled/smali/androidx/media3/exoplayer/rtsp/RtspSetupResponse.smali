.class final Landroidx/media3/exoplayer/rtsp/RtspSetupResponse;
.super Ljava/lang/Object;
.source "RtspSetupResponse.java"


# instance fields
.field public final sessionHeader:Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspSessionHeader;

.field public final status:I

.field public final transport:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspSessionHeader;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "sessionHeader"    # Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspSessionHeader;
    .param p3, "transport"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtspSetupResponse;->status:I

    .line 43
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspSetupResponse;->sessionHeader:Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspSessionHeader;

    .line 44
    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtspSetupResponse;->transport:Ljava/lang/String;

    .line 45
    return-void
.end method

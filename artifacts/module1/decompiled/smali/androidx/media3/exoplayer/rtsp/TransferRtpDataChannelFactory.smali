.class final Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannelFactory;
.super Ljava/lang/Object;
.source "TransferRtpDataChannelFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;


# static fields
.field private static final INTERLEAVED_CHANNELS_PER_TRACK:I = 0x2


# instance fields
.field private final timeoutMs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "timeoutMs"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannelFactory;->timeoutMs:J

    .line 36
    return-void
.end method


# virtual methods
.method public createAndOpenDataChannel(I)Landroidx/media3/exoplayer/rtsp/RtpDataChannel;
    .locals 3
    .param p1, "trackId"    # I

    .line 40
    new-instance v0, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannel;

    iget-wide v1, p0, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannelFactory;->timeoutMs:J

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannel;-><init>(J)V

    .line 41
    .local v0, "dataChannel":Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannel;
    mul-int/lit8 v1, p1, 0x2

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtpUtils;->getIncomingRtpDataSpec(I)Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannel;->open(Landroidx/media3/datasource/DataSpec;)J

    .line 42
    return-object v0
.end method

.method public synthetic createFallbackDataChannelFactory()Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;
    .locals 1

    invoke-static {p0}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory$-CC;->$default$createFallbackDataChannelFactory(Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    move-result-object v0

    return-object v0
.end method

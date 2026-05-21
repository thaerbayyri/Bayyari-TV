.class public final Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
.super Ljava/lang/Object;
.source "RtpPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/RtpPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private csrc:[B

.field private marker:Z

.field private padding:Z

.field private payloadData:[B

.field private payloadType:B

.field private sequenceNumber:I

.field private ssrc:I

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->access$000()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->csrc:[B

    .line 72
    invoke-static {}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->access$000()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->payloadData:[B

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    .line 64
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->padding:Z

    return v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    .line 64
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->marker:Z

    return v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)B
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    .line 64
    iget-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->payloadType:B

    return v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    .line 64
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->sequenceNumber:I

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    .line 64
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    .line 64
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->ssrc:I

    return v0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)[B
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    .line 64
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->csrc:[B

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)[B
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    .line 64
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->payloadData:[B

    return-object v0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/rtsp/RtpPacket;
    .locals 2

    .line 135
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtpPacket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/rtsp/RtpPacket;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;Landroidx/media3/exoplayer/rtsp/RtpPacket$1;)V

    return-object v0
.end method

.method public setCsrc([B)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    .locals 0
    .param p1, "csrc"    # [B

    .line 120
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->csrc:[B

    .line 122
    return-object p0
.end method

.method public setMarker(Z)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    .locals 0
    .param p1, "marker"    # Z

    .line 84
    iput-boolean p1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->marker:Z

    .line 85
    return-object p0
.end method

.method public setPadding(Z)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    .locals 0
    .param p1, "padding"    # Z

    .line 77
    iput-boolean p1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->padding:Z

    .line 78
    return-object p0
.end method

.method public setPayloadData([B)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    .locals 0
    .param p1, "payloadData"    # [B

    .line 128
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->payloadData:[B

    .line 130
    return-object p0
.end method

.method public setPayloadType(B)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    .locals 0
    .param p1, "payloadType"    # B

    .line 91
    iput-byte p1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->payloadType:B

    .line 92
    return-object p0
.end method

.method public setSequenceNumber(I)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    .locals 2
    .param p1, "sequenceNumber"    # I

    .line 98
    const v0, 0xffff

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 99
    and-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->sequenceNumber:I

    .line 100
    return-object p0
.end method

.method public setSsrc(I)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    .locals 0
    .param p1, "ssrc"    # I

    .line 113
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->ssrc:I

    .line 114
    return-object p0
.end method

.method public setTimestamp(J)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    .locals 0
    .param p1, "timestamp"    # J

    .line 106
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->timestamp:J

    .line 107
    return-object p0
.end method

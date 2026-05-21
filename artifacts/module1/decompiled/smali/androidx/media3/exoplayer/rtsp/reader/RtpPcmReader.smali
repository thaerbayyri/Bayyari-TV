.class public final Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;
.super Ljava/lang/Object;
.source "RtpPcmReader.java"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final TAG:Ljava/lang/String; = "RtpPcmReader"


# instance fields
.field private firstReceivedTimestamp:J

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V
    .locals 2
    .param p1, "payloadFormat"    # Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 49
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->firstReceivedTimestamp:J

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->startTimeOffsetUs:J

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->previousSequenceNumber:I

    .line 53
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .locals 19
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "timestamp"    # J
    .param p4, "sequenceNumber"    # I
    .param p5, "rtpMarker"    # Z

    .line 69
    move-object/from16 v0, p0

    move/from16 v1, p4

    iget-object v2, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget v2, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->previousSequenceNumber:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 71
    iget v2, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->previousSequenceNumber:I

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v2

    .line 72
    .local v2, "expectedSequenceNumber":I
    if-eq v1, v2, :cond_0

    .line 73
    nop

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    .line 75
    const-string v3, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d."

    invoke-static {v3, v5}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 73
    const-string v4, "RtpPcmReader"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v2    # "expectedSequenceNumber":I
    :cond_0
    iget-wide v5, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->startTimeOffsetUs:J

    iget-wide v9, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->firstReceivedTimestamp:J

    iget-object v2, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget v11, v2, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->clockRate:I

    .line 82
    move-wide/from16 v7, p2

    invoke-static/range {v5 .. v11}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    move-result-wide v13

    .line 84
    .local v13, "sampleTimeUs":J
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 85
    .local v2, "size":I
    iget-object v3, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    move-object/from16 v4, p1

    invoke-interface {v3, v4, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 86
    iget-object v12, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x1

    move/from16 v16, v2

    .end local v2    # "size":I
    .local v16, "size":I
    invoke-interface/range {v12 .. v18}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 89
    iput v1, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->previousSequenceNumber:I

    .line 90
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p2, "trackId"    # I

    .line 57
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v1, v1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 59
    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "sequenceNumber"    # I

    .line 63
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->firstReceivedTimestamp:J

    .line 64
    return-void
.end method

.method public seek(JJ)V
    .locals 0
    .param p1, "nextRtpTimestamp"    # J
    .param p3, "timeUs"    # J

    .line 95
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->firstReceivedTimestamp:J

    .line 96
    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;->startTimeOffsetUs:J

    .line 97
    return-void
.end method

.class final Landroidx/media3/exoplayer/rtsp/RtpExtractor;
.super Ljava/lang/Object;
.source "RtpExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field private firstPacketRead:Z

.field private volatile firstSequenceNumber:I

.field private volatile firstTimestamp:J

.field private isSeekPending:Z

.field private final lock:Ljava/lang/Object;

.field private nextRtpTimestamp:J

.field private output:Landroidx/media3/extractor/ExtractorOutput;

.field private final payloadReader:Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;

.field private playbackStartTimeUs:J

.field private final reorderingQueue:Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;

.field private final rtpPacketDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final rtpPacketScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final trackId:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;I)V
    .locals 3
    .param p1, "payloadFormat"    # Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;
    .param p2, "trackId"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->trackId:I

    .line 63
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/DefaultRtpPayloadReaderFactory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/rtsp/reader/DefaultRtpPayloadReaderFactory;-><init>()V

    .line 64
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/DefaultRtpPayloadReaderFactory;->createPayloadReader(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->payloadReader:Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;

    .line 65
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const v1, 0xffe3

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->rtpPacketScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 66
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->rtpPacketDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->lock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;

    invoke-direct {v0}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->reorderingQueue:Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;

    .line 69
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstTimestamp:J

    .line 70
    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstSequenceNumber:I

    .line 71
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->nextRtpTimestamp:J

    .line 72
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->playbackStartTimeUs:J

    .line 73
    return-void
.end method

.method private static getCutoffTimeMs(J)J
    .locals 2
    .param p0, "packetArrivalTimeMs"    # J

    .line 214
    const-wide/16 v0, 0x1e

    sub-long v0, p0, v0

    return-wide v0
.end method


# virtual methods
.method public synthetic getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;
    .locals 1

    invoke-static {p0}, Landroidx/media3/extractor/Extractor$-CC;->$default$getUnderlyingImplementation(Landroidx/media3/extractor/Extractor;)Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public hasReadFirstRtpPacket()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstPacketRead:Z

    return v0
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 115
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->payloadReader:Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;

    iget v1, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->trackId:I

    invoke-interface {v0, p1, v1}, Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V

    .line 116
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 118
    new-instance v0, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 119
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 120
    return-void
.end method

.method public preSeek()V
    .locals 2

    .line 102
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->isSeekPending:Z

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 19
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->rtpPacketScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const v2, 0xffe3

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-interface {v4, v0, v3, v2}, Landroidx/media3/extractor/ExtractorInput;->read([BII)I

    move-result v2

    .line 128
    .local v2, "bytesRead":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 129
    return v0

    .line 130
    :cond_0
    if-nez v2, :cond_1

    .line 131
    return v3

    .line 134
    :cond_1
    iget-object v5, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->rtpPacketScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 135
    iget-object v5, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->rtpPacketScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 136
    iget-object v5, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->rtpPacketScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v5}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/rtsp/RtpPacket;

    move-result-object v5

    .line 137
    .local v5, "packet":Landroidx/media3/exoplayer/rtsp/RtpPacket;
    if-nez v5, :cond_2

    .line 138
    return v3

    .line 141
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 142
    .local v6, "packetArrivalTimeMs":J
    invoke-static {v6, v7}, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->getCutoffTimeMs(J)J

    move-result-wide v8

    .line 143
    .local v8, "packetCutoffTimeMs":J
    iget-object v10, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->reorderingQueue:Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;

    invoke-virtual {v10, v5, v6, v7}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->offer(Landroidx/media3/exoplayer/rtsp/RtpPacket;J)Z

    .line 144
    iget-object v10, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->reorderingQueue:Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;

    invoke-virtual {v10, v8, v9}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->poll(J)Landroidx/media3/exoplayer/rtsp/RtpPacket;

    move-result-object v10

    .line 145
    .local v10, "dequeuedPacket":Landroidx/media3/exoplayer/rtsp/RtpPacket;
    if-nez v10, :cond_3

    .line 147
    return v3

    .line 149
    :cond_3
    move-object v5, v10

    .line 151
    iget-boolean v11, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstPacketRead:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v11, :cond_6

    .line 154
    iget-wide v14, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstTimestamp:J

    cmp-long v11, v14, v12

    if-nez v11, :cond_4

    .line 155
    iget-wide v14, v5, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    iput-wide v14, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstTimestamp:J

    .line 157
    :cond_4
    iget v11, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstSequenceNumber:I

    if-ne v11, v0, :cond_5

    .line 158
    iget v0, v5, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    iput v0, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstSequenceNumber:I

    .line 160
    :cond_5
    iget-object v0, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->payloadReader:Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;

    iget-wide v14, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstTimestamp:J

    iget v11, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstSequenceNumber:I

    invoke-interface {v0, v14, v15, v11}, Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;->onReceivingFirstPacket(JI)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstPacketRead:Z

    .line 164
    :cond_6
    iget-object v11, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 166
    :try_start_0
    iget-boolean v0, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->isSeekPending:Z

    if-eqz v0, :cond_8

    .line 167
    iget-wide v14, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->nextRtpTimestamp:J

    cmp-long v0, v14, v12

    if-eqz v0, :cond_7

    iget-wide v14, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->playbackStartTimeUs:J

    cmp-long v0, v14, v12

    if-eqz v0, :cond_7

    .line 168
    iget-object v0, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->reorderingQueue:Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->reset()V

    .line 169
    iget-object v0, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->payloadReader:Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;

    iget-wide v14, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->nextRtpTimestamp:J

    iget-wide v12, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->playbackStartTimeUs:J

    invoke-interface {v0, v14, v15, v12, v13}, Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;->seek(JJ)V

    .line 170
    iput-boolean v3, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->isSeekPending:Z

    .line 171
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->nextRtpTimestamp:J

    .line 172
    iput-wide v12, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->playbackStartTimeUs:J

    .line 183
    :cond_7
    move v0, v3

    goto :goto_1

    .line 177
    :cond_8
    :goto_0
    iget-object v0, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->rtpPacketDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v12, v5, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadData:[B

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 178
    iget-object v13, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->payloadReader:Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;

    iget-object v14, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->rtpPacketDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    move v0, v3

    iget-wide v3, v5, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    iget v12, v5, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    iget-boolean v15, v5, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    move/from16 v17, v12

    move/from16 v18, v15

    move-wide v15, v3

    invoke-interface/range {v13 .. v18}, Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;->consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V

    .line 180
    iget-object v3, v1, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->reorderingQueue:Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;

    invoke-virtual {v3, v8, v9}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->poll(J)Landroidx/media3/exoplayer/rtsp/RtpPacket;

    move-result-object v3

    move-object v5, v3

    .line 181
    if-nez v5, :cond_9

    .line 183
    :goto_1
    monitor-exit v11

    .line 184
    return v0

    .line 181
    :cond_9
    move-object/from16 v4, p1

    move v3, v0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 0

    .line 203
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "nextRtpTimestamp"    # J
    .param p3, "playbackStartTimeUs"    # J

    .line 189
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->isSeekPending:Z

    if-nez v1, :cond_0

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->isSeekPending:Z

    .line 195
    :cond_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->nextRtpTimestamp:J

    .line 196
    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->playbackStartTimeUs:J

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFirstSequenceNumber(I)V
    .locals 0
    .param p1, "firstSequenceNumber"    # I

    .line 82
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstSequenceNumber:I

    .line 83
    return-void
.end method

.method public setFirstTimestamp(J)V
    .locals 0
    .param p1, "firstTimestamp"    # J

    .line 77
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->firstTimestamp:J

    .line 78
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 2
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RTP packets are transmitted in a packet stream do not support sniffing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

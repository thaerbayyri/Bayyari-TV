.class final Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;
.super Ljava/lang/Object;
.source "RtpPacketReorderingQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;
    }
.end annotation


# static fields
.field static final MAX_SEQUENCE_LEAP_ALLOWED:I = 0x3e8

.field private static final QUEUE_SIZE_THRESHOLD_FOR_RESET:I = 0x1388


# instance fields
.field private lastDequeuedSequenceNumber:I

.field private lastReceivedSequenceNumber:I

.field private final packetQueue:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    .line 62
    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->reset()V

    .line 63
    return-void
.end method

.method private declared-synchronized addToQueue(Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)V
    .locals 1
    .param p1, "packet"    # Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p1, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->packet:Landroidx/media3/exoplayer/rtsp/RtpPacket;

    iget v0, v0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->lastReceivedSequenceNumber:I

    .line 155
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 153
    .end local p0    # "this":Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;
    .end local p1    # "packet":Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static calculateSequenceNumberShift(II)I
    .locals 4
    .param p0, "sequenceNumber"    # I
    .param p1, "previousSequenceNumber"    # I

    .line 179
    sub-int v0, p0, p1

    .line 180
    .local v0, "sequenceShift":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 181
    nop

    .line 182
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 183
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v1, v3

    const v3, 0xffff

    add-int/2addr v1, v3

    .line 188
    .local v1, "shift":I
    if-ge v1, v2, :cond_1

    .line 189
    if-ge p0, p1, :cond_0

    .line 190
    move v2, v1

    goto :goto_0

    .line 191
    :cond_0
    neg-int v2, v1

    .line 189
    :goto_0
    return v2

    .line 194
    .end local v1    # "shift":I
    :cond_1
    return v0
.end method

.method static synthetic lambda$new$0(Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)I
    .locals 2
    .param p0, "packetContainer1"    # Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;
    .param p1, "packetContainer2"    # Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->packet:Landroidx/media3/exoplayer/rtsp/RtpPacket;

    iget v0, v0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    iget-object v1, p1, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->packet:Landroidx/media3/exoplayer/rtsp/RtpPacket;

    iget v1, v1, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->calculateSequenceNumberShift(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized offer(Landroidx/media3/exoplayer/rtsp/RtpPacket;J)Z
    .locals 6
    .param p1, "packet"    # Landroidx/media3/exoplayer/rtsp/RtpPacket;
    .param p2, "receivedTimestampMs"    # J

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_3

    .line 94
    iget v0, p1, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    .line 95
    .local v0, "packetSequenceNumber":I
    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->started:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->reset()V

    .line 97
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getPreviousSequenceNumber(I)I

    move-result v1

    iput v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    .line 98
    iput-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->started:Z

    .line 99
    new-instance v1, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    invoke-direct {v1, p1, p2, p3}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPacket;J)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->addToQueue(Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return v2

    .line 103
    .end local p0    # "this":Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;
    :cond_0
    :try_start_1
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->lastReceivedSequenceNumber:I

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v1

    .line 105
    .local v1, "expectedSequenceNumber":I
    nop

    .line 106
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->calculateSequenceNumberShift(II)I

    move-result v3

    .line 107
    .local v3, "sequenceNumberShift":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_2

    .line 108
    iget v4, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    invoke-static {v0, v4}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->calculateSequenceNumberShift(II)I

    move-result v4

    if-lez v4, :cond_1

    .line 110
    new-instance v4, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    invoke-direct {v4, p1, p2, p3}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPacket;J)V

    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->addToQueue(Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    monitor-exit p0

    return v2

    .line 120
    :cond_1
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    .line 115
    :cond_2
    :try_start_2
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getPreviousSequenceNumber(I)I

    move-result v4

    iput v4, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    .line 116
    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->clear()V

    .line 117
    new-instance v4, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    invoke-direct {v4, p1, p2, p3}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPacket;J)V

    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->addToQueue(Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    monitor-exit p0

    return v2

    .line 90
    .end local v0    # "packetSequenceNumber":I
    .end local v1    # "expectedSequenceNumber":I
    .end local v3    # "sequenceNumberShift":I
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue size limit of 5000 reached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    .end local p1    # "packet":Landroidx/media3/exoplayer/rtsp/RtpPacket;
    .end local p2    # "receivedTimestampMs":J
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized poll(J)Landroidx/media3/exoplayer/rtsp/RtpPacket;
    .locals 5
    .param p1, "cutoffTimestampMs"    # J

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    monitor-exit p0

    return-object v1

    .line 138
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    .line 139
    .local v0, "packetContainer":Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;
    iget-object v2, v0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->packet:Landroidx/media3/exoplayer/rtsp/RtpPacket;

    iget v2, v2, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    .line 141
    .local v2, "packetSequenceNumber":I
    iget v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-wide v3, v0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->receivedTimestampMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    monitor-exit p0

    return-object v1

    .line 143
    .end local p0    # "this":Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;
    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    .line 144
    iput v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    .line 145
    iget-object v1, v0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->packet:Landroidx/media3/exoplayer/rtsp/RtpPacket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 133
    .end local v0    # "packetContainer":Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;
    .end local v2    # "packetSequenceNumber":I
    .end local p1    # "cutoffTimestampMs":J
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->started:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    .line 69
    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->lastReceivedSequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 65
    .end local p0    # "this":Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.class final Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;
.super Ljava/lang/Object;
.source "RtspMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageParser"
.end annotation


# static fields
.field private static final STATE_READING_BODY:I = 0x3

.field private static final STATE_READING_FIRST_LINE:I = 0x1

.field private static final STATE_READING_HEADER:I = 0x2


# instance fields
.field private messageBodyLength:J

.field private final messageLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageLines:Ljava/util/List;

    .line 362
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->state:I

    .line 363
    return-void
.end method

.method private addMessageBody([B)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .param p1, "messageBodyBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 473
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 476
    array-length v0, p1

    if-lez v0, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 478
    array-length v0, p1

    if-le v0, v3, :cond_1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p1, v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 481
    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    sget-object v3, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v2, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v0, "messageBody":Ljava/lang/String;
    goto :goto_1

    .line 489
    .end local v0    # "messageBody":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    sub-int/2addr v1, v3

    sget-object v3, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v2, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 500
    .restart local v0    # "messageBody":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageLines:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 502
    .local v1, "linesToReturn":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->reset()V

    .line 503
    return-object v1

    .line 497
    .end local v0    # "messageBody":Ljava/lang/String;
    .end local v1    # "linesToReturn":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message body is empty or does not end with a LF."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addMessageLine([B)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .param p1, "lineBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 428
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-byte v0, p1, v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    array-length v0, p1

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 432
    new-instance v0, Ljava/lang/String;

    array-length v3, p1

    sub-int/2addr v3, v2

    sget-object v4, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 434
    .local v0, "line":Ljava/lang/String;
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->state:I

    packed-switch v1, :pswitch_data_0

    .line 466
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 445
    :pswitch_0
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->parseContentLengthHeader(Ljava/lang/String;)J

    move-result-wide v1

    .line 446
    .local v1, "contentLength":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 447
    iput-wide v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageBodyLength:J

    .line 450
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 452
    iget-wide v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageBodyLength:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 453
    const/4 v3, 0x3

    iput v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->state:I

    goto :goto_1

    .line 455
    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageLines:Ljava/util/List;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 456
    .local v3, "linesToReturn":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->reset()V

    .line 457
    return-object v3

    .line 438
    .end local v1    # "contentLength":J
    .end local v3    # "linesToReturn":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->isRtspStartLine(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    iput v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->state:I

    .line 468
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseNextLine(BLjava/io/DataInputStream;)[B
    .locals 6
    .param p0, "firstByte"    # B
    .param p1, "dataInputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 406
    .local v0, "messageByteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 407
    .local v1, "peekedBytes":[B
    const/4 v2, 0x0

    aput-byte p0, v1, v2

    .line 408
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    .line 409
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 411
    :goto_0
    aget-byte v3, v1, v2

    const/16 v5, 0xd

    if-ne v3, v5, :cond_1

    aget-byte v3, v1, v4

    const/16 v5, 0xa

    if-eq v3, v5, :cond_0

    goto :goto_1

    .line 418
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 413
    :cond_1
    :goto_1
    aget-byte v3, v1, v4

    aput-byte v3, v1, v2

    .line 414
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v1, v4

    .line 415
    aget-byte v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .line 507
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 508
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->state:I

    .line 509
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageBodyLength:J

    .line 510
    return-void
.end method


# virtual methods
.method public parseNext(BLjava/io/DataInputStream;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .param p1, "firstByte"    # B
    .param p2, "dataInputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/io/DataInputStream;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    nop

    .line 376
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->parseNextLine(BLjava/io/DataInputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->addMessageLine([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 378
    .local v0, "parsedMessageLines":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_3

    .line 379
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 380
    iget-wide v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageBodyLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 385
    iget-wide v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->messageBodyLength:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    .line 386
    .local v1, "messageBodyLengthInt":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 387
    new-array v2, v1, [B

    .line 388
    .local v2, "messageBodyBytes":[B
    invoke-virtual {p2, v2, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 389
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->addMessageBody([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 390
    .end local v1    # "messageBodyLengthInt":I
    .end local v2    # "messageBodyBytes":[B
    goto :goto_0

    .line 391
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expects a greater than zero Content-Length."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_2
    nop

    .line 395
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    invoke-static {v1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->parseNextLine(BLjava/io/DataInputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;->addMessageLine([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_3
    return-object v0
.end method

.class public final Landroidx/media3/exoplayer/rtsp/RtpPacket;
.super Ljava/lang/Object;
.source "RtpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    }
.end annotation


# static fields
.field public static final CSRC_SIZE:I = 0x4

.field private static final EMPTY:[B

.field public static final MAX_SEQUENCE_NUMBER:I = 0xffff

.field public static final MAX_SIZE:I = 0xffe3

.field public static final MIN_HEADER_SIZE:I = 0xc

.field public static final MIN_SEQUENCE_NUMBER:I = 0x0

.field public static final RTP_VERSION:I = 0x2


# instance fields
.field public final csrc:[B

.field public final csrcCount:B

.field public final extension:Z

.field public final marker:Z

.field public final padding:Z

.field public final payloadData:[B

.field public final payloadType:B

.field public final sequenceNumber:I

.field public final ssrc:I

.field public final timestamp:J

.field public final version:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->EMPTY:[B

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x2

    iput-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->version:B

    .line 266
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$200(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->padding:Z

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->extension:Z

    .line 268
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$300(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    .line 269
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$400(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)B

    move-result v0

    iput-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    .line 270
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$500(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    .line 271
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$600(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    .line 272
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$700(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    .line 273
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$800(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrc:[B

    .line 274
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrc:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrcCount:B

    .line 275
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$900(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadData:[B

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;Landroidx/media3/exoplayer/rtsp/RtpPacket$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    .param p2, "x1"    # Landroidx/media3/exoplayer/rtsp/RtpPacket$1;

    .line 61
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 61
    sget-object v0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->EMPTY:[B

    return-object v0
.end method

.method public static getNextSequenceNumber(I)I
    .locals 2
    .param p0, "sequenceNumber"    # I

    .line 149
    add-int/lit8 v0, p0, 0x1

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->mod(II)I

    move-result v0

    return v0
.end method

.method public static getPreviousSequenceNumber(I)I
    .locals 2
    .param p0, "sequenceNumber"    # I

    .line 154
    add-int/lit8 v0, p0, -0x1

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->mod(II)I

    move-result v0

    return v0
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/rtsp/RtpPacket;
    .locals 16
    .param p0, "packetBuffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 199
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 200
    return-object v3

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 205
    .local v1, "firstByte":I
    shr-int/lit8 v2, v1, 0x6

    int-to-byte v2, v2

    .line 206
    .local v2, "version":B
    shr-int/lit8 v4, v1, 0x5

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 207
    .local v4, "padding":Z
    :goto_0
    and-int/lit8 v7, v1, 0xf

    int-to-byte v7, v7

    .line 209
    .local v7, "csrcCount":B
    const/4 v8, 0x2

    if-eq v2, v8, :cond_2

    .line 210
    return-object v3

    .line 213
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 214
    .local v3, "secondByte":I
    shr-int/lit8 v8, v3, 0x7

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 215
    .local v5, "marker":Z
    :goto_1
    and-int/lit8 v8, v3, 0x7f

    int-to-byte v8, v8

    .line 217
    .local v8, "payloadType":B
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 220
    .local v9, "sequenceNumber":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 223
    .local v10, "timestamp":J
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 227
    .local v12, "ssrc":I
    if-lez v7, :cond_5

    .line 228
    mul-int/lit8 v13, v7, 0x4

    new-array v13, v13, [B

    .line 229
    .local v13, "csrc":[B
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v7, :cond_4

    .line 230
    mul-int/lit8 v15, v14, 0x4

    const/4 v6, 0x4

    invoke-virtual {v0, v13, v15, v6}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 229
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .end local v14    # "i":I
    :cond_4
    goto :goto_3

    .line 233
    .end local v13    # "csrc":[B
    :cond_5
    sget-object v13, Landroidx/media3/exoplayer/rtsp/RtpPacket;->EMPTY:[B

    .line 237
    .restart local v13    # "csrc":[B
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    new-array v6, v6, [B

    .line 238
    .local v6, "payloadData":[B
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v0, v6, v15, v14}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 240
    new-instance v14, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    invoke-direct {v14}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;-><init>()V

    .line 241
    .local v14, "builder":Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    nop

    .line 242
    invoke-virtual {v14, v4}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setPadding(Z)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object v15

    .line 243
    invoke-virtual {v15, v5}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setMarker(Z)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object v15

    .line 244
    invoke-virtual {v15, v8}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setPayloadType(B)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object v15

    .line 245
    invoke-virtual {v15, v9}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setSequenceNumber(I)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object v15

    .line 246
    invoke-virtual {v15, v10, v11}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setTimestamp(J)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object v15

    .line 247
    invoke-virtual {v15, v12}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setSsrc(I)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object v15

    .line 248
    invoke-virtual {v15, v13}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setCsrc([B)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object v15

    .line 249
    invoke-virtual {v15, v6}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setPayloadData([B)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object v15

    .line 250
    invoke-virtual {v15}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->build()Landroidx/media3/exoplayer/rtsp/RtpPacket;

    move-result-object v15

    .line 241
    return-object v15
.end method

.method public static parse([BI)Landroidx/media3/exoplayer/rtsp/RtpPacket;
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "length"    # I

    .line 262
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/rtsp/RtpPacket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 319
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 320
    return v0

    .line 322
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 325
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtpPacket;

    .line 326
    .local v2, "rtpPacket":Landroidx/media3/exoplayer/rtsp/RtpPacket;
    iget-byte v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    iget-byte v4, v2, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    iget v4, v2, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    iget-boolean v4, v2, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    iget v4, v2, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 323
    .end local v2    # "rtpPacket":Landroidx/media3/exoplayer/rtsp/RtpPacket;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 335
    const/16 v0, 0x11

    .line 336
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    add-int/2addr v1, v2

    .line 337
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    add-int/2addr v0, v2

    .line 338
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    add-int/2addr v1, v2

    .line 339
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 340
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    add-int/2addr v1, v2

    .line 341
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 346
    iget-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    .line 348
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    .line 346
    const-string v0, "RtpPacket(payloadType=%d, seq=%d, timestamp=%d, ssrc=%x, marker=%b)"

    invoke-static {v0, v5}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBuffer([BII)I
    .locals 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 293
    iget-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrcCount:B

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 294
    .local v0, "packetLength":I
    if-lt p3, v0, :cond_1

    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 299
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    nop

    .line 302
    iget-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->padding:Z

    shl-int/lit8 v2, v2, 0x5

    or-int/lit16 v2, v2, 0x80

    .line 303
    iget-boolean v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->extension:Z

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-byte v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrcCount:B

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 305
    .local v2, "firstByte":B
    iget-boolean v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    shl-int/lit8 v3, v3, 0x7

    iget-byte v4, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 306
    .local v3, "secondByte":B
    nop

    .line 307
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 308
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget v5, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    int-to-short v5, v5

    .line 309
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v5, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    long-to-int v5, v5

    .line 310
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget v5, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    .line 311
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrc:[B

    .line 312
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadData:[B

    .line 313
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 314
    return v0

    .line 295
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "firstByte":B
    .end local v3    # "secondByte":B
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

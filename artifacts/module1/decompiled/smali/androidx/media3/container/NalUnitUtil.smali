.class public final Landroidx/media3/container/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/NalUnitUtil$SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265SpsData;,
        Landroidx/media3/container/NalUnitUtil$PpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field private static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final NAL_START_CODE:[B

.field public static final NAL_UNIT_TYPE_AUD:I = 0x9

.field public static final NAL_UNIT_TYPE_IDR:I = 0x5

.field public static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field public static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2

.field public static final NAL_UNIT_TYPE_PPS:I = 0x8

.field public static final NAL_UNIT_TYPE_PREFIX:I = 0xe

.field public static final NAL_UNIT_TYPE_SEI:I = 0x6

.field public static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    .line 206
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 237
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2
    .param p0, "prefixFlags"    # [Z

    .line 832
    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    .line 833
    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    .line 834
    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    .line 835
    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 296
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 297
    .local v0, "length":I
    const/4 v1, 0x0

    .line 298
    .local v1, "consecutiveZeros":I
    const/4 v2, 0x0

    .line 299
    .local v2, "offset":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_3

    .line 300
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 301
    .local v3, "value":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 302
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 304
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 305
    .local v4, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 306
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 307
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 308
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 309
    return-void

    .line 311
    .end local v4    # "offsetData":Ljava/nio/ByteBuffer;
    :cond_0
    if-nez v3, :cond_1

    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 314
    :cond_1
    if-eqz v3, :cond_2

    .line 315
    const/4 v1, 0x0

    .line 317
    :cond_2
    nop

    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    .line 318
    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 321
    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "prefixFlags"    # [Z

    .line 770
    sub-int v0, p2, p1

    .line 772
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 773
    if-nez v0, :cond_1

    .line 774
    return p2

    .line 777
    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    .line 778
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 779
    add-int/lit8 v1, p1, -0x3

    return v1

    .line 780
    :cond_2
    if-le v0, v2, :cond_3

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_3

    aget-byte v3, p0, p1

    if-ne v3, v2, :cond_3

    .line 781
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 782
    add-int/lit8 v1, p1, -0x2

    return v1

    .line 783
    :cond_3
    const/4 v3, 0x2

    if-le v0, v3, :cond_4

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    .line 787
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 788
    add-int/lit8 v1, p1, -0x1

    return v1

    .line 791
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 794
    .local v4, "limit":I
    add-int/lit8 v5, p1, 0x2

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_7

    .line 795
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xfe

    if-eqz v6, :cond_5

    goto :goto_2

    .line 798
    :cond_5
    add-int/lit8 v6, v5, -0x2

    aget-byte v6, p0, v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v5, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_6

    aget-byte v6, p0, v5

    if-ne v6, v2, :cond_6

    .line 799
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 800
    add-int/lit8 v1, v5, -0x2

    return v1

    .line 804
    :cond_6
    add-int/lit8 v5, v5, -0x2

    .line 794
    :goto_2
    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    .line 809
    .end local v5    # "i":I
    :cond_7
    nop

    .line 810
    if-le v0, v3, :cond_9

    .line 811
    add-int/lit8 v5, p2, -0x3

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_8

    move v5, v2

    goto :goto_3

    :cond_8
    move v5, v1

    goto :goto_3

    .line 812
    :cond_9
    if-ne v0, v3, :cond_b

    .line 813
    aget-boolean v5, p3, v3

    if-eqz v5, :cond_a

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_a

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_a

    move v5, v2

    goto :goto_3

    :cond_a
    move v5, v1

    goto :goto_3

    .line 814
    :cond_b
    aget-boolean v5, p3, v2

    if-eqz v5, :cond_c

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_c

    move v5, v2

    goto :goto_3

    :cond_c
    move v5, v1

    :goto_3
    aput-boolean v5, p3, v1

    .line 816
    nop

    .line 817
    if-le v0, v2, :cond_e

    .line 818
    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_d

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_d

    move v5, v2

    goto :goto_4

    :cond_d
    move v5, v1

    goto :goto_4

    .line 819
    :cond_e
    aget-boolean v5, p3, v3

    if-eqz v5, :cond_f

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_f

    move v5, v2

    goto :goto_4

    :cond_f
    move v5, v1

    :goto_4
    aput-boolean v5, p3, v2

    .line 821
    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_10

    move v1, v2

    :cond_10
    aput-boolean v1, p3, v3

    .line 823
    return p2
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .line 838
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    .line 839
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 840
    return v0

    .line 838
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 360
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 348
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "nalUnitHeaderFirstByte"    # B

    .line 333
    const-string/jumbo v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 335
    :cond_0
    const-string/jumbo v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x7e

    shr-int/2addr v0, v1

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 333
    :goto_0
    return v1
.end method

.method public static parseH265SpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 1
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 548
    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0, p2}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseH265SpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 31
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 562
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 563
    .local v0, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 564
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 565
    .local v5, "maxSubLayersMinus1":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 566
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 567
    .local v8, "generalProfileSpace":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    .line 568
    .local v9, "generalTierFlag":Z
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 569
    .local v10, "generalProfileIdc":I
    const/4 v7, 0x0

    .line 570
    .local v7, "generalProfileCompatibilityFlags":I
    const/4 v11, 0x0

    move/from16 v30, v11

    move v11, v7

    move/from16 v7, v30

    .local v7, "i":I
    .local v11, "generalProfileCompatibilityFlags":I
    :goto_0
    const/16 v12, 0x20

    const/4 v13, 0x1

    if-ge v7, v12, :cond_1

    .line 571
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 572
    shl-int v12, v13, v7

    or-int/2addr v11, v12

    .line 570
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 575
    .end local v7    # "i":I
    :cond_1
    const/4 v7, 0x6

    new-array v15, v7, [I

    .line 576
    .local v15, "constraintBytes":[I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    array-length v12, v15

    const/16 v14, 0x8

    if-ge v7, v12, :cond_2

    .line 577
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    aput v12, v15, v7

    .line 576
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 579
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v16

    .line 580
    .local v16, "generalLevelIdc":I
    const/4 v7, 0x0

    .line 581
    .local v7, "toSkip":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v5, :cond_5

    .line 582
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 583
    add-int/lit8 v7, v7, 0x59

    .line 585
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 586
    add-int/lit8 v7, v7, 0x8

    .line 581
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 589
    .end local v12    # "i":I
    :cond_5
    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 590
    if-lez v5, :cond_6

    .line 591
    rsub-int/lit8 v12, v5, 0x8

    mul-int/2addr v12, v6

    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 593
    :cond_6
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 594
    .local v17, "seqParameterSetId":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 595
    .local v12, "chromaFormatIdc":I
    if-ne v12, v4, :cond_7

    .line 596
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 598
    :cond_7
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 599
    .local v18, "frameWidth":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 600
    .local v19, "frameHeight":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 601
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 602
    .local v20, "confWinLeftOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    .line 603
    .local v21, "confWinRightOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v22

    .line 604
    .local v22, "confWinTopOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v23

    .line 606
    .local v23, "confWinBottomOffset":I
    if-eq v12, v13, :cond_9

    if-ne v12, v6, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v24, v13

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v24, v6

    .line 607
    .local v24, "subWidthC":I
    :goto_4
    if-ne v12, v13, :cond_a

    move/from16 v25, v6

    goto :goto_5

    :cond_a
    move/from16 v25, v13

    .line 608
    .local v25, "subHeightC":I
    :goto_5
    add-int v26, v20, v21

    mul-int v26, v26, v24

    sub-int v18, v18, v26

    .line 609
    add-int v26, v22, v23

    mul-int v26, v26, v25

    sub-int v19, v19, v26

    .line 611
    .end local v20    # "confWinLeftOffset":I
    .end local v21    # "confWinRightOffset":I
    .end local v22    # "confWinTopOffset":I
    .end local v23    # "confWinBottomOffset":I
    .end local v24    # "subWidthC":I
    .end local v25    # "subHeightC":I
    :cond_b
    move/from16 v20, v13

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 612
    .local v13, "bitDepthLumaMinus8":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    .line 613
    .local v21, "bitDepthChromaMinus8":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v24

    .line 615
    .local v24, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_c

    const/16 v22, 0x0

    goto :goto_6

    :cond_c
    move/from16 v22, v5

    :goto_6
    move/from16 v4, v22

    .local v4, "i":I
    :goto_7
    if-gt v4, v5, :cond_d

    .line 616
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 617
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 618
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 615
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 620
    .end local v4    # "i":I
    :cond_d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 621
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 622
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 623
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 624
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 625
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 627
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    .line 628
    .local v4, "scalingListEnabled":Z
    if-eqz v4, :cond_e

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 629
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 631
    :cond_e
    invoke-virtual {v0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 632
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 634
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 635
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 636
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 637
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 639
    :cond_f
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 640
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 641
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    .line 642
    .local v14, "numLongTermRefPicsSps":I
    const/16 v25, 0x0

    move/from16 v6, v25

    .local v6, "i":I
    :goto_8
    if-ge v6, v14, :cond_10

    .line 643
    add-int/lit8 v25, v24, 0x4

    .line 645
    .local v25, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v1, v25, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 642
    .end local v25    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto :goto_8

    .line 648
    .end local v6    # "i":I
    .end local v14    # "numLongTermRefPicsSps":I
    :cond_10
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 649
    const/4 v6, -0x1

    .line 650
    .local v6, "colorSpace":I
    const/4 v14, -0x1

    .line 651
    .local v14, "colorRange":I
    const/16 v25, -0x1

    .line 652
    .local v25, "colorTransfer":I
    const/high16 v26, 0x3f800000    # 1.0f

    .line 653
    .local v26, "pixelWidthHeightRatio":F
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 654
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v27

    if-eqz v27, :cond_14

    .line 655
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 656
    .local v2, "aspectRatioIdc":I
    const/16 v1, 0xff

    if-ne v2, v1, :cond_12

    .line 657
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 658
    .local v3, "sarWidth":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 659
    .local v1, "sarHeight":I
    if-eqz v3, :cond_11

    if-eqz v1, :cond_11

    .line 660
    move/from16 v28, v4

    .end local v4    # "scalingListEnabled":Z
    .local v28, "scalingListEnabled":Z
    int-to-float v4, v3

    move/from16 v29, v3

    .end local v3    # "sarWidth":I
    .local v29, "sarWidth":I
    int-to-float v3, v1

    div-float v26, v4, v3

    goto :goto_9

    .line 659
    .end local v28    # "scalingListEnabled":Z
    .end local v29    # "sarWidth":I
    .restart local v3    # "sarWidth":I
    .restart local v4    # "scalingListEnabled":Z
    :cond_11
    move/from16 v29, v3

    move/from16 v28, v4

    .line 662
    .end local v1    # "sarHeight":I
    .end local v3    # "sarWidth":I
    .end local v4    # "scalingListEnabled":Z
    .restart local v28    # "scalingListEnabled":Z
    :goto_9
    goto :goto_a

    .end local v28    # "scalingListEnabled":Z
    .restart local v4    # "scalingListEnabled":Z
    :cond_12
    move/from16 v28, v4

    .end local v4    # "scalingListEnabled":Z
    .restart local v28    # "scalingListEnabled":Z
    sget-object v1, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v1, v1

    if-ge v2, v1, :cond_13

    .line 663
    sget-object v1, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v1, v1, v2

    move/from16 v26, v1

    .end local v26    # "pixelWidthHeightRatio":F
    .local v1, "pixelWidthHeightRatio":F
    goto :goto_a

    .line 665
    .end local v1    # "pixelWidthHeightRatio":F
    .restart local v26    # "pixelWidthHeightRatio":F
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NalUnitUtil"

    invoke-static {v3, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 654
    .end local v2    # "aspectRatioIdc":I
    .end local v28    # "scalingListEnabled":Z
    .restart local v4    # "scalingListEnabled":Z
    :cond_14
    move/from16 v28, v4

    .line 668
    .end local v4    # "scalingListEnabled":Z
    .restart local v28    # "scalingListEnabled":Z
    :goto_a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 669
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 671
    :cond_15
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 672
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 674
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_b

    :cond_16
    const/16 v20, 0x2

    .line 675
    .end local v14    # "colorRange":I
    .local v20, "colorRange":I
    :goto_b
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 676
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 677
    .local v2, "colorPrimaries":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 678
    .local v3, "transferCharacteristics":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 680
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v1

    .line 681
    .end local v6    # "colorSpace":I
    .local v1, "colorSpace":I
    nop

    .line 682
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v4

    move v6, v1

    move/from16 v25, v4

    move/from16 v14, v20

    .end local v25    # "colorTransfer":I
    .local v4, "colorTransfer":I
    goto :goto_c

    .line 675
    .end local v1    # "colorSpace":I
    .end local v2    # "colorPrimaries":I
    .end local v3    # "transferCharacteristics":I
    .end local v4    # "colorTransfer":I
    .restart local v6    # "colorSpace":I
    .restart local v25    # "colorTransfer":I
    :cond_17
    move/from16 v14, v20

    .line 685
    .end local v20    # "colorRange":I
    .restart local v14    # "colorRange":I
    :cond_18
    :goto_c
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 686
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 687
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 689
    :cond_19
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 690
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 693
    mul-int/lit8 v19, v19, 0x2

    move/from16 v22, v14

    move/from16 v23, v25

    move/from16 v20, v26

    goto :goto_d

    .line 690
    :cond_1a
    move/from16 v22, v14

    move/from16 v23, v25

    move/from16 v20, v26

    goto :goto_d

    .line 653
    .end local v28    # "scalingListEnabled":Z
    .local v4, "scalingListEnabled":Z
    :cond_1b
    move/from16 v28, v4

    .end local v4    # "scalingListEnabled":Z
    .restart local v28    # "scalingListEnabled":Z
    move/from16 v22, v14

    move/from16 v23, v25

    move/from16 v20, v26

    .line 697
    .end local v14    # "colorRange":I
    .end local v25    # "colorTransfer":I
    .end local v26    # "pixelWidthHeightRatio":F
    .local v20, "pixelWidthHeightRatio":F
    .local v22, "colorRange":I
    .local v23, "colorTransfer":I
    :goto_d
    move v1, v7

    .end local v7    # "toSkip":I
    .local v1, "toSkip":I
    new-instance v7, Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move/from16 v14, v21

    move/from16 v21, v6

    .end local v6    # "colorSpace":I
    .local v14, "bitDepthChromaMinus8":I
    .local v21, "colorSpace":I
    invoke-direct/range {v7 .. v23}, Landroidx/media3/container/NalUnitUtil$H265SpsData;-><init>(IZIIIII[IIIIIFIII)V

    return-object v7
.end method

.method public static parsePpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 1
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 726
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Landroidx/media3/container/NalUnitUtil;->parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    move-result-object v0

    return-object v0
.end method

.method public static parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 5
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 739
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 740
    .local v0, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 741
    .local v1, "picParameterSetId":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 742
    .local v2, "seqParameterSetId":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 743
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .line 744
    .local v3, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v4, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v4, v1, v2, v3}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v4
.end method

.method public static parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 1
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 373
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 36
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 386
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 387
    .local v0, "data":Landroidx/media3/container/ParsableNalUnitBitArray;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 388
    .local v6, "profileIdc":I
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 389
    .local v7, "constraintsFlagsAndReservedZero2Bits":I
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 390
    .local v8, "levelIdc":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 392
    .local v9, "seqParameterSetId":I
    const/4 v5, 0x1

    .line 393
    .local v5, "chromaFormatIdc":I
    const/4 v10, 0x0

    .line 394
    .local v10, "separateColorPlaneFlag":Z
    const/4 v11, 0x0

    .line 395
    .local v11, "bitDepthLumaMinus8":I
    const/4 v12, 0x0

    .line 396
    .local v12, "bitDepthChromaMinus8":I
    const/16 v13, 0x64

    const/4 v14, 0x3

    if-eq v6, v13, :cond_1

    const/16 v13, 0x6e

    if-eq v6, v13, :cond_1

    const/16 v13, 0x7a

    if-eq v6, v13, :cond_1

    const/16 v13, 0xf4

    if-eq v6, v13, :cond_1

    const/16 v13, 0x2c

    if-eq v6, v13, :cond_1

    const/16 v13, 0x53

    if-eq v6, v13, :cond_1

    const/16 v13, 0x56

    if-eq v6, v13, :cond_1

    const/16 v13, 0x76

    if-eq v6, v13, :cond_1

    const/16 v13, 0x80

    if-eq v6, v13, :cond_1

    const/16 v13, 0x8a

    if-ne v6, v13, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    move v14, v11

    move v15, v12

    goto :goto_4

    .line 406
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 407
    if-ne v5, v14, :cond_2

    .line 408
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    .line 410
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 411
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 412
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 413
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    .line 414
    .local v13, "seqScalingMatrixPresentFlag":Z
    if-eqz v13, :cond_6

    .line 415
    if-eq v5, v14, :cond_3

    move/from16 v16, v4

    goto :goto_1

    :cond_3
    const/16 v16, 0xc

    :goto_1
    move/from16 v17, v16

    .line 416
    .local v17, "limit":I
    const/16 v16, 0x0

    move/from16 v15, v16

    .local v15, "i":I
    :goto_2
    move/from16 v4, v17

    .end local v17    # "limit":I
    .local v4, "limit":I
    if-ge v15, v4, :cond_6

    .line 417
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    .line 418
    .local v17, "seqScalingListPresentFlag":Z
    if-eqz v17, :cond_5

    .line 419
    const/4 v14, 0x6

    if-ge v15, v14, :cond_4

    const/16 v14, 0x10

    goto :goto_3

    :cond_4
    const/16 v14, 0x40

    :goto_3
    invoke-static {v0, v14}, Landroidx/media3/container/NalUnitUtil;->skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V

    .line 416
    .end local v17    # "seqScalingListPresentFlag":Z
    :cond_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v17, v4

    const/16 v4, 0x8

    const/4 v14, 0x3

    goto :goto_2

    .line 425
    .end local v4    # "limit":I
    .end local v13    # "seqScalingMatrixPresentFlag":Z
    .end local v15    # "i":I
    :cond_6
    move v4, v5

    move v14, v11

    move v15, v12

    .end local v5    # "chromaFormatIdc":I
    .end local v11    # "bitDepthLumaMinus8":I
    .end local v12    # "bitDepthChromaMinus8":I
    .local v4, "chromaFormatIdc":I
    .local v14, "bitDepthLumaMinus8":I
    .local v15, "bitDepthChromaMinus8":I
    :goto_4
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    .line 426
    .local v5, "frameNumLength":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 427
    .local v11, "picOrderCntType":I
    const/4 v12, 0x0

    .line 428
    .local v12, "picOrderCntLsbLength":I
    const/4 v13, 0x0

    .line 429
    .local v13, "deltaPicOrderAlwaysZeroFlag":Z
    const/4 v1, 0x1

    if-nez v11, :cond_7

    .line 431
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    add-int/lit8 v12, v17, 0x4

    move/from16 v17, v1

    move/from16 v20, v12

    move/from16 v21, v13

    goto :goto_6

    .line 432
    :cond_7
    if-ne v11, v1, :cond_9

    .line 433
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    .line 434
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 435
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 436
    move/from16 v17, v1

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    int-to-long v1, v1

    .line 437
    .local v1, "numRefFramesInPicOrderCntCycle":J
    const/16 v20, 0x0

    move-wide/from16 v21, v1

    move/from16 v1, v20

    .local v1, "i":I
    .local v21, "numRefFramesInPicOrderCntCycle":J
    :goto_5
    int-to-long v2, v1

    cmp-long v2, v2, v21

    if-gez v2, :cond_8

    .line 438
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 437
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, p2

    goto :goto_5

    :cond_8
    move/from16 v20, v12

    move/from16 v21, v13

    goto :goto_6

    .line 432
    .end local v1    # "i":I
    .end local v21    # "numRefFramesInPicOrderCntCycle":J
    :cond_9
    move/from16 v17, v1

    move/from16 v20, v12

    move/from16 v21, v13

    .line 441
    .end local v12    # "picOrderCntLsbLength":I
    .end local v13    # "deltaPicOrderAlwaysZeroFlag":Z
    .local v20, "picOrderCntLsbLength":I
    .local v21, "deltaPicOrderAlwaysZeroFlag":Z
    :goto_6
    move v1, v10

    .end local v10    # "separateColorPlaneFlag":Z
    .local v1, "separateColorPlaneFlag":Z
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 442
    .local v10, "maxNumRefFrames":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 444
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 445
    .local v2, "picWidthInMbs":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 446
    .local v3, "picHeightInMapUnits":I
    move/from16 v12, v17

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    .line 447
    .local v17, "frameMbsOnlyFlag":Z
    rsub-int/lit8 v13, v17, 0x2

    mul-int v25, v13, v3

    .line 448
    .local v25, "frameHeightInMbs":I
    if-nez v17, :cond_a

    .line 449
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 452
    :cond_a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 453
    mul-int/lit8 v13, v2, 0x10

    .line 454
    .local v13, "frameWidth":I
    mul-int/lit8 v22, v25, 0x10

    .line 455
    .local v22, "frameHeight":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v26

    .line 456
    .local v26, "frameCroppingFlag":Z
    const/16 v23, 0x2

    if-eqz v26, :cond_e

    .line 457
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v24

    .line 458
    .local v24, "frameCropLeftOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v27

    .line 459
    .local v27, "frameCropRightOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v28

    .line 460
    .local v28, "frameCropTopOffset":I
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v29

    .line 463
    .local v29, "frameCropBottomOffset":I
    if-nez v4, :cond_b

    .line 464
    const/16 v30, 0x1

    .line 465
    .local v30, "cropUnitX":I
    rsub-int/lit8 v31, v17, 0x2

    move/from16 v33, v31

    move/from16 v31, v1

    move v1, v12

    .local v31, "cropUnitY":I
    goto :goto_9

    .line 467
    .end local v30    # "cropUnitX":I
    .end local v31    # "cropUnitY":I
    :cond_b
    const/4 v12, 0x3

    if-ne v4, v12, :cond_c

    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    move/from16 v12, v23

    .line 468
    .local v12, "subWidthC":I
    :goto_7
    move/from16 v31, v1

    const/4 v1, 0x1

    .end local v1    # "separateColorPlaneFlag":Z
    .local v31, "separateColorPlaneFlag":Z
    if-ne v4, v1, :cond_d

    move/from16 v30, v23

    goto :goto_8

    :cond_d
    move/from16 v30, v1

    .line 469
    .local v30, "subHeightC":I
    :goto_8
    move/from16 v32, v12

    .line 470
    .local v32, "cropUnitX":I
    rsub-int/lit8 v33, v17, 0x2

    mul-int v33, v33, v30

    move/from16 v30, v32

    .line 472
    .end local v12    # "subWidthC":I
    .end local v32    # "cropUnitX":I
    .local v30, "cropUnitX":I
    .local v33, "cropUnitY":I
    :goto_9
    add-int v12, v24, v27

    mul-int v12, v12, v30

    sub-int/2addr v13, v12

    .line 473
    add-int v12, v28, v29

    mul-int v12, v12, v33

    sub-int v22, v22, v12

    move/from16 v12, v22

    goto :goto_a

    .line 456
    .end local v24    # "frameCropLeftOffset":I
    .end local v27    # "frameCropRightOffset":I
    .end local v28    # "frameCropTopOffset":I
    .end local v29    # "frameCropBottomOffset":I
    .end local v30    # "cropUnitX":I
    .end local v31    # "separateColorPlaneFlag":Z
    .end local v33    # "cropUnitY":I
    .restart local v1    # "separateColorPlaneFlag":Z
    :cond_e
    move/from16 v31, v1

    move v1, v12

    .end local v1    # "separateColorPlaneFlag":Z
    .restart local v31    # "separateColorPlaneFlag":Z
    move/from16 v12, v22

    .line 476
    .end local v22    # "frameHeight":I
    .local v12, "frameHeight":I
    :goto_a
    const/16 v22, -0x1

    .line 477
    .local v22, "colorSpace":I
    const/16 v24, -0x1

    .line 478
    .local v24, "colorRange":I
    const/16 v27, -0x1

    .line 479
    .local v27, "colorTransfer":I
    const/high16 v28, 0x3f800000    # 1.0f

    .line 480
    .local v28, "pixelWidthHeightRatio":F
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v29

    .line 481
    .local v29, "vuiParametersPresentFlag":Z
    if-eqz v29, :cond_17

    .line 482
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v30

    .line 483
    .local v30, "aspectRatioInfoPresentFlag":Z
    if-eqz v30, :cond_12

    .line 484
    move/from16 v33, v2

    const/16 v1, 0x8

    .end local v2    # "picWidthInMbs":I
    .local v33, "picWidthInMbs":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 485
    .local v2, "aspectRatioIdc":I
    const/16 v1, 0xff

    if-ne v2, v1, :cond_10

    .line 486
    move/from16 v34, v3

    const/16 v1, 0x10

    .end local v3    # "picHeightInMapUnits":I
    .local v34, "picHeightInMapUnits":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 487
    .local v3, "sarWidth":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 488
    .local v1, "sarHeight":I
    if-eqz v3, :cond_f

    if-eqz v1, :cond_f

    .line 489
    move/from16 v35, v4

    .end local v4    # "chromaFormatIdc":I
    .local v35, "chromaFormatIdc":I
    int-to-float v4, v3

    move/from16 v18, v3

    .end local v3    # "sarWidth":I
    .local v18, "sarWidth":I
    int-to-float v3, v1

    div-float v28, v4, v3

    goto :goto_b

    .line 488
    .end local v18    # "sarWidth":I
    .end local v35    # "chromaFormatIdc":I
    .restart local v3    # "sarWidth":I
    .restart local v4    # "chromaFormatIdc":I
    :cond_f
    move/from16 v18, v3

    move/from16 v35, v4

    .line 491
    .end local v1    # "sarHeight":I
    .end local v3    # "sarWidth":I
    .end local v4    # "chromaFormatIdc":I
    .restart local v35    # "chromaFormatIdc":I
    :goto_b
    goto :goto_c

    .end local v34    # "picHeightInMapUnits":I
    .end local v35    # "chromaFormatIdc":I
    .local v3, "picHeightInMapUnits":I
    .restart local v4    # "chromaFormatIdc":I
    :cond_10
    move/from16 v34, v3

    move/from16 v35, v4

    .end local v3    # "picHeightInMapUnits":I
    .end local v4    # "chromaFormatIdc":I
    .restart local v34    # "picHeightInMapUnits":I
    .restart local v35    # "chromaFormatIdc":I
    sget-object v1, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v1, v1

    if-ge v2, v1, :cond_11

    .line 492
    sget-object v1, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v28, v1, v2

    goto :goto_c

    .line 494
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NalUnitUtil"

    invoke-static {v3, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 483
    .end local v33    # "picWidthInMbs":I
    .end local v34    # "picHeightInMapUnits":I
    .end local v35    # "chromaFormatIdc":I
    .local v2, "picWidthInMbs":I
    .restart local v3    # "picHeightInMapUnits":I
    .restart local v4    # "chromaFormatIdc":I
    :cond_12
    move/from16 v33, v2

    move/from16 v34, v3

    move/from16 v35, v4

    .line 497
    .end local v2    # "picWidthInMbs":I
    .end local v3    # "picHeightInMapUnits":I
    .end local v4    # "chromaFormatIdc":I
    .restart local v33    # "picWidthInMbs":I
    .restart local v34    # "picHeightInMapUnits":I
    .restart local v35    # "chromaFormatIdc":I
    :goto_c
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 498
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 500
    :cond_13
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 501
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 503
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_d

    :cond_14
    move/from16 v1, v23

    :goto_d
    move/from16 v24, v1

    .line 504
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 505
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 506
    .local v2, "colorPrimaries":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 507
    .local v3, "transferCharacteristics":I
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 509
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v22

    .line 510
    nop

    .line 511
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v27

    move/from16 v23, v24

    move/from16 v24, v27

    goto :goto_e

    .line 504
    .end local v2    # "colorPrimaries":I
    .end local v3    # "transferCharacteristics":I
    :cond_15
    move/from16 v23, v24

    move/from16 v24, v27

    goto :goto_e

    .line 500
    :cond_16
    move/from16 v23, v24

    move/from16 v24, v27

    goto :goto_e

    .line 481
    .end local v30    # "aspectRatioInfoPresentFlag":Z
    .end local v33    # "picWidthInMbs":I
    .end local v34    # "picHeightInMapUnits":I
    .end local v35    # "chromaFormatIdc":I
    .local v2, "picWidthInMbs":I
    .local v3, "picHeightInMapUnits":I
    .restart local v4    # "chromaFormatIdc":I
    :cond_17
    move/from16 v33, v2

    move/from16 v34, v3

    move/from16 v35, v4

    .end local v2    # "picWidthInMbs":I
    .end local v3    # "picHeightInMapUnits":I
    .end local v4    # "chromaFormatIdc":I
    .restart local v33    # "picWidthInMbs":I
    .restart local v34    # "picHeightInMapUnits":I
    .restart local v35    # "chromaFormatIdc":I
    move/from16 v23, v24

    move/from16 v24, v27

    .line 516
    .end local v27    # "colorTransfer":I
    .local v23, "colorRange":I
    .local v24, "colorTransfer":I
    :goto_e
    move/from16 v18, v5

    .end local v5    # "frameNumLength":I
    .local v18, "frameNumLength":I
    new-instance v5, Landroidx/media3/container/NalUnitUtil$SpsData;

    move/from16 v19, v11

    move v11, v13

    move/from16 v13, v28

    move/from16 v16, v31

    .end local v28    # "pixelWidthHeightRatio":F
    .end local v31    # "separateColorPlaneFlag":Z
    .local v11, "frameWidth":I
    .local v13, "pixelWidthHeightRatio":F
    .local v16, "separateColorPlaneFlag":Z
    .local v19, "picOrderCntType":I
    invoke-direct/range {v5 .. v24}, Landroidx/media3/container/NalUnitUtil$SpsData;-><init>(IIIIIIIFIIZZIIIZIII)V

    .end local v16    # "separateColorPlaneFlag":Z
    .restart local v31    # "separateColorPlaneFlag":Z
    return-object v5
.end method

.method private static skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 6
    .param p0, "bitArray"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 859
    const/4 v0, 0x0

    .local v0, "sizeId":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 860
    const/4 v2, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 861
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 863
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_3

    .line 865
    :cond_0
    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    shl-int v3, v4, v3

    const/16 v5, 0x40

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 866
    .local v3, "coefNum":I
    if-le v0, v4, :cond_1

    .line 868
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 870
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_2

    .line 871
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 870
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 860
    .end local v3    # "coefNum":I
    .end local v5    # "i":I
    :cond_2
    :goto_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v4, v3

    :cond_3
    add-int/2addr v2, v4

    goto :goto_1

    .line 859
    .end local v2    # "matrixId":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    .end local v0    # "sizeId":I
    :cond_5
    return-void
.end method

.method private static skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V
    .locals 5
    .param p0, "bitArray"    # Landroidx/media3/container/ParsableNalUnitBitArray;
    .param p1, "size"    # I

    .line 847
    const/16 v0, 0x8

    .line 848
    .local v0, "lastScale":I
    const/16 v1, 0x8

    .line 849
    .local v1, "nextScale":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 850
    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v3

    .line 852
    .local v3, "deltaScale":I
    add-int v4, v0, v3

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    move v1, v4

    .line 854
    .end local v3    # "deltaScale":I
    :cond_0
    if-nez v1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    move v0, v3

    .line 849
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 856
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private static skipShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 21
    .param p0, "bitArray"    # Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 885
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 890
    .local v0, "numShortTermRefPicSets":I
    const/4 v1, -0x1

    .line 891
    .local v1, "previousNumNegativePics":I
    const/4 v2, -0x1

    .line 892
    .local v2, "previousNumPositivePics":I
    const/4 v3, 0x0

    new-array v4, v3, [I

    .line 893
    .local v4, "previousDeltaPocS0":[I
    new-array v5, v3, [I

    .line 894
    .local v5, "previousDeltaPocS1":[I
    const/4 v6, 0x0

    .local v6, "stRpsIdx":I
    :goto_0
    if-ge v6, v0, :cond_12

    .line 900
    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    move v8, v3

    .line 901
    .local v8, "interRefPicSetPredictionFlag":Z
    :goto_1
    if-eqz v8, :cond_d

    .line 902
    add-int v9, v1, v2

    .line 904
    .local v9, "previousNumDeltaPocs":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    .line 905
    .local v10, "deltaRpsSign":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    add-int/2addr v11, v7

    .line 906
    .local v11, "absDeltaRps":I
    mul-int/lit8 v12, v10, 0x2

    rsub-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    .line 908
    .local v12, "deltaRps":I
    add-int/lit8 v13, v9, 0x1

    new-array v13, v13, [Z

    .line 909
    .local v13, "useDeltaFlags":[Z
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    if-gt v14, v9, :cond_2

    .line 910
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    if-nez v15, :cond_1

    .line 911
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    aput-boolean v15, v13, v14

    goto :goto_3

    .line 914
    :cond_1
    aput-boolean v7, v13, v14

    .line 909
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 920
    .end local v14    # "j":I
    :cond_2
    const/4 v7, 0x0

    .line 921
    .local v7, "i":I
    add-int/lit8 v14, v9, 0x1

    new-array v14, v14, [I

    .line 922
    .local v14, "deltaPocS0":[I
    add-int/lit8 v15, v9, 0x1

    new-array v15, v15, [I

    .line 923
    .local v15, "deltaPocS1":[I
    add-int/lit8 v16, v2, -0x1

    .local v16, "j":I
    :goto_4
    if-ltz v16, :cond_4

    .line 924
    aget v17, v5, v16

    add-int v17, v17, v12

    .line 925
    .local v17, "dPoc":I
    if-gez v17, :cond_3

    add-int v18, v1, v16

    aget-boolean v18, v13, v18

    if-eqz v18, :cond_3

    .line 926
    add-int/lit8 v18, v7, 0x1

    .end local v7    # "i":I
    .local v18, "i":I
    aput v17, v14, v7

    move/from16 v7, v18

    .line 923
    .end local v17    # "dPoc":I
    .end local v18    # "i":I
    .restart local v7    # "i":I
    :cond_3
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 929
    .end local v16    # "j":I
    :cond_4
    if-gez v12, :cond_5

    aget-boolean v16, v13, v9

    if-eqz v16, :cond_5

    .line 930
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .local v16, "i":I
    aput v12, v14, v7

    move/from16 v7, v16

    .line 932
    .end local v16    # "i":I
    .restart local v7    # "i":I
    :cond_5
    const/16 v16, 0x0

    move/from16 v3, v16

    .local v3, "j":I
    :goto_5
    if-ge v3, v1, :cond_7

    .line 933
    aget v17, v4, v3

    add-int v17, v17, v12

    .line 934
    .restart local v17    # "dPoc":I
    if-gez v17, :cond_6

    aget-boolean v18, v13, v3

    if-eqz v18, :cond_6

    .line 935
    add-int/lit8 v18, v7, 0x1

    .end local v7    # "i":I
    .restart local v18    # "i":I
    aput v17, v14, v7

    move/from16 v7, v18

    .line 932
    .end local v17    # "dPoc":I
    .end local v18    # "i":I
    .restart local v7    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 938
    .end local v3    # "j":I
    :cond_7
    move v3, v7

    .line 939
    .local v3, "numNegativePics":I
    invoke-static {v14, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 941
    const/4 v7, 0x0

    .line 942
    add-int/lit8 v17, v1, -0x1

    .local v17, "j":I
    :goto_6
    if-ltz v17, :cond_9

    .line 943
    aget v18, v4, v17

    add-int v18, v18, v12

    .line 944
    .local v18, "dPoc":I
    if-lez v18, :cond_8

    aget-boolean v19, v13, v17

    if-eqz v19, :cond_8

    .line 945
    add-int/lit8 v19, v7, 0x1

    .end local v7    # "i":I
    .local v19, "i":I
    aput v18, v15, v7

    move/from16 v7, v19

    .line 942
    .end local v18    # "dPoc":I
    .end local v19    # "i":I
    .restart local v7    # "i":I
    :cond_8
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    .line 948
    .end local v17    # "j":I
    :cond_9
    if-lez v12, :cond_a

    aget-boolean v17, v13, v9

    if-eqz v17, :cond_a

    .line 949
    add-int/lit8 v17, v7, 0x1

    .end local v7    # "i":I
    .local v17, "i":I
    aput v12, v15, v7

    move/from16 v7, v17

    .line 951
    .end local v17    # "i":I
    .restart local v7    # "i":I
    :cond_a
    const/16 v17, 0x0

    move/from16 v20, v17

    move/from16 v17, v0

    move/from16 v0, v20

    .local v0, "j":I
    .local v17, "numShortTermRefPicSets":I
    :goto_7
    if-ge v0, v2, :cond_c

    .line 952
    aget v18, v5, v0

    add-int v18, v18, v12

    .line 953
    .restart local v18    # "dPoc":I
    if-lez v18, :cond_b

    add-int v19, v1, v0

    aget-boolean v19, v13, v19

    if-eqz v19, :cond_b

    .line 954
    add-int/lit8 v19, v7, 0x1

    .end local v7    # "i":I
    .restart local v19    # "i":I
    aput v18, v15, v7

    move/from16 v7, v19

    .line 951
    .end local v18    # "dPoc":I
    .end local v19    # "i":I
    .restart local v7    # "i":I
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 957
    .end local v0    # "j":I
    :cond_c
    move v0, v7

    .line 958
    .local v0, "numPositivePics":I
    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 959
    .end local v9    # "previousNumDeltaPocs":I
    .end local v10    # "deltaRpsSign":I
    .end local v11    # "absDeltaRps":I
    .end local v12    # "deltaRps":I
    .end local v13    # "useDeltaFlags":[Z
    .end local v15    # "deltaPocS1":[I
    .local v7, "deltaPocS1":[I
    goto :goto_c

    .line 960
    .end local v3    # "numNegativePics":I
    .end local v7    # "deltaPocS1":[I
    .end local v14    # "deltaPocS0":[I
    .end local v17    # "numShortTermRefPicSets":I
    .local v0, "numShortTermRefPicSets":I
    :cond_d
    move/from16 v17, v0

    .end local v0    # "numShortTermRefPicSets":I
    .restart local v17    # "numShortTermRefPicSets":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 961
    .restart local v3    # "numNegativePics":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 962
    .local v0, "numPositivePics":I
    new-array v14, v3, [I

    .line 963
    .restart local v14    # "deltaPocS0":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8
    if-ge v9, v3, :cond_f

    .line 964
    nop

    .line 965
    if-lez v9, :cond_e

    add-int/lit8 v10, v9, -0x1

    aget v10, v14, v10

    goto :goto_9

    :cond_e
    const/4 v10, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    add-int/2addr v11, v7

    sub-int/2addr v10, v11

    aput v10, v14, v9

    .line 966
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 963
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 968
    .end local v9    # "i":I
    :cond_f
    new-array v9, v0, [I

    .line 969
    .local v9, "deltaPocS1":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a
    if-ge v10, v0, :cond_11

    .line 970
    nop

    .line 971
    if-lez v10, :cond_10

    add-int/lit8 v11, v10, -0x1

    aget v11, v9, v11

    goto :goto_b

    :cond_10
    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/2addr v12, v7

    add-int/2addr v11, v12

    aput v11, v9, v10

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 969
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_11
    move-object v7, v9

    .line 975
    .end local v9    # "deltaPocS1":[I
    .end local v10    # "i":I
    .restart local v7    # "deltaPocS1":[I
    :goto_c
    move v1, v3

    .line 976
    move v2, v0

    .line 977
    move-object v4, v14

    .line 978
    move-object v5, v7

    .line 894
    .end local v0    # "numPositivePics":I
    .end local v3    # "numNegativePics":I
    .end local v7    # "deltaPocS1":[I
    .end local v8    # "interRefPicSetPredictionFlag":Z
    .end local v14    # "deltaPocS0":[I
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 980
    .end local v6    # "stRpsIdx":I
    .end local v17    # "numShortTermRefPicSets":I
    .local v0, "numShortTermRefPicSets":I
    :cond_12
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "limit"    # I

    .line 251
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "position":I
    const/4 v2, 0x0

    .line 254
    .local v2, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v1, p1, :cond_2

    .line 255
    :try_start_0
    invoke-static {p0, v1, p1}, Landroidx/media3/container/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v3

    move v1, v3

    .line 256
    if-ge v1, p1, :cond_0

    .line 257
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    array-length v3, v3

    if-gt v3, v2, :cond_1

    .line 259
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    .line 260
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    sput-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 262
    :cond_1
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "scratchEscapeCount":I
    .local v4, "scratchEscapeCount":I
    aput v1, v3, v2

    .line 263
    add-int/lit8 v1, v1, 0x3

    move v2, v4

    goto :goto_0

    .line 283
    .end local v1    # "position":I
    .end local v4    # "scratchEscapeCount":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 267
    .restart local v1    # "position":I
    .restart local v2    # "scratchEscapeCount":I
    :cond_2
    sub-int v3, p1, v2

    .line 268
    .local v3, "unescapedLength":I
    const/4 v4, 0x0

    .line 269
    .local v4, "escapedPosition":I
    const/4 v5, 0x0

    .line 270
    .local v5, "unescapedPosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 271
    sget-object v7, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    aget v7, v7, v6

    .line 272
    .local v7, "nextEscapePosition":I
    sub-int v8, v7, v4

    .line 273
    .local v8, "copyLength":I
    invoke-static {p0, v4, p0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    add-int/2addr v5, v8

    .line 275
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "unescapedPosition":I
    .local v9, "unescapedPosition":I
    const/4 v10, 0x0

    aput-byte v10, p0, v5

    .line 276
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "unescapedPosition":I
    .restart local v5    # "unescapedPosition":I
    aput-byte v10, p0, v9

    .line 277
    add-int/lit8 v9, v8, 0x3

    add-int/2addr v4, v9

    .line 270
    .end local v7    # "nextEscapePosition":I
    .end local v8    # "copyLength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 280
    .end local v6    # "i":I
    :cond_3
    sub-int v6, v3, v5

    .line 281
    .local v6, "remainingLength":I
    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    monitor-exit v0

    return v3

    .line 283
    .end local v1    # "position":I
    .end local v2    # "scratchEscapeCount":I
    .end local v3    # "unescapedLength":I
    .end local v4    # "escapedPosition":I
    .end local v5    # "unescapedPosition":I
    .end local v6    # "remainingLength":I
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class public final Landroidx/media3/extractor/HevcConfig;
.super Ljava/lang/Object;
.source "HevcConfig.java"


# static fields
.field private static final SPS_NAL_UNIT_TYPE:I = 0x21


# instance fields
.field public final bitdepthChroma:I

.field public final bitdepthLuma:I

.field public final codecs:Ljava/lang/String;

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIFLjava/lang/String;)V
    .locals 0
    .param p2, "nalUnitLengthFieldLength"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "bitdepthLuma"    # I
    .param p6, "bitdepthChroma"    # I
    .param p7, "colorSpace"    # I
    .param p8, "colorRange"    # I
    .param p9, "colorTransfer"    # I
    .param p10, "pixelWidthHeightRatio"    # F
    .param p11, "codecs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 194
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 196
    iput p2, p0, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    .line 197
    iput p3, p0, Landroidx/media3/extractor/HevcConfig;->width:I

    .line 198
    iput p4, p0, Landroidx/media3/extractor/HevcConfig;->height:I

    .line 199
    iput p5, p0, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    .line 200
    iput p6, p0, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 201
    iput p7, p0, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    .line 202
    iput p8, p0, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    .line 203
    iput p9, p0, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    .line 204
    iput p10, p0, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    .line 205
    iput-object p11, p0, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;
    .locals 31
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 43
    move-object/from16 v1, p0

    const/16 v0, 0x15

    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 44
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    .line 47
    .local v0, "lengthSizeMinusOne":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 48
    .local v2, "numberOfArrays":I
    const/4 v3, 0x0

    .line 49
    .local v3, "csdLength":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 50
    .local v4, "csdStartPosition":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 51
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 52
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 53
    .local v6, "numberOfNalUnits":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 54
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 55
    .local v8, "nalUnitLength":I
    add-int/lit8 v9, v8, 0x4

    add-int/2addr v3, v9

    .line 56
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 53
    .end local v8    # "nalUnitLength":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 50
    .end local v6    # "numberOfNalUnits":I
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 62
    new-array v5, v3, [B

    .line 63
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 64
    .local v6, "bufferPosition":I
    const/4 v7, -0x1

    .line 65
    .local v7, "width":I
    const/4 v8, -0x1

    .line 66
    .local v8, "height":I
    const/4 v9, -0x1

    .line 67
    .local v9, "bitdepthLuma":I
    const/4 v10, -0x1

    .line 68
    .local v10, "bitdepthChroma":I
    const/4 v11, -0x1

    .line 69
    .local v11, "colorSpace":I
    const/4 v12, -0x1

    .line 70
    .local v12, "colorRange":I
    const/4 v13, -0x1

    .line 71
    .local v13, "colorTransfer":I
    const/high16 v14, 0x3f800000    # 1.0f

    .line 72
    .local v14, "pixelWidthHeightRatio":F
    const/4 v15, 0x0

    .line 73
    .local v15, "codecs":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v17, v10

    move v10, v7

    move/from16 v7, v16

    move/from16 v16, v13

    move/from16 v13, v17

    move/from16 v17, v14

    move-object/from16 v18, v15

    move v14, v11

    move v15, v12

    move v11, v8

    move v12, v9

    .end local v8    # "height":I
    .end local v9    # "bitdepthLuma":I
    .local v7, "i":I
    .local v10, "width":I
    .local v11, "height":I
    .local v12, "bitdepthLuma":I
    .local v13, "bitdepthChroma":I
    .local v14, "colorSpace":I
    .local v15, "colorRange":I
    .local v16, "colorTransfer":I
    .local v17, "pixelWidthHeightRatio":F
    .local v18, "codecs":Ljava/lang/String;
    :goto_2
    if-ge v7, v2, :cond_4

    .line 74
    nop

    .line 75
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x3f

    .line 76
    .local v8, "nalUnitType":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 77
    .local v9, "numberOfNalUnits":I
    const/16 v19, 0x0

    move/from16 v30, v19

    move/from16 v19, v0

    move/from16 v0, v30

    .local v0, "j":I
    .local v19, "lengthSizeMinusOne":I
    :goto_3
    if-ge v0, v9, :cond_3

    .line 78
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v20

    move/from16 v21, v20

    .line 79
    .local v21, "nalUnitLength":I
    move/from16 v20, v0

    .end local v0    # "j":I
    .local v20, "j":I
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    move/from16 v22, v2

    .end local v2    # "numberOfArrays":I
    .local v22, "numberOfArrays":I
    sget-object v2, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v2, v2

    move/from16 v23, v3

    .end local v3    # "csdLength":I
    .local v23, "csdLength":I
    const/4 v3, 0x0

    invoke-static {v0, v3, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v0, v0

    add-int/2addr v6, v0

    .line 86
    nop

    .line 87
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 86
    move/from16 v3, v21

    .end local v21    # "nalUnitLength":I
    .local v3, "nalUnitLength":I
    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    const/16 v0, 0x21

    if-ne v8, v0, :cond_2

    if-nez v20, :cond_2

    .line 89
    add-int v0, v6, v3

    .line 90
    invoke-static {v5, v6, v0}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v0

    .line 92
    .local v0, "spsData":Landroidx/media3/container/NalUnitUtil$H265SpsData;
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    move v10, v2

    .line 93
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    move v11, v2

    .line 94
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v12, v2, 0x8

    .line 95
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v13, v2, 0x8

    .line 96
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    move v14, v2

    .line 97
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    move v15, v2

    .line 98
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    move/from16 v16, v2

    .line 99
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    move/from16 v17, v2

    .line 100
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    move/from16 v24, v2

    iget-boolean v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    move/from16 v25, v2

    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    move/from16 v26, v2

    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    move/from16 v27, v2

    iget-object v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->constraintBytes:[I

    move-object/from16 v28, v2

    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    .line 101
    move/from16 v29, v2

    invoke-static/range {v24 .. v29}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    .line 109
    .end local v0    # "spsData":Landroidx/media3/container/NalUnitUtil$H265SpsData;
    :cond_2
    add-int/2addr v6, v3

    .line 110
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 77
    .end local v3    # "nalUnitLength":I
    add-int/lit8 v0, v20, 0x1

    move/from16 v2, v22

    move/from16 v3, v23

    .end local v20    # "j":I
    .local v0, "j":I
    goto :goto_3

    .end local v22    # "numberOfArrays":I
    .end local v23    # "csdLength":I
    .restart local v2    # "numberOfArrays":I
    .local v3, "csdLength":I
    :cond_3
    move/from16 v20, v0

    move/from16 v22, v2

    move/from16 v23, v3

    .line 73
    .end local v0    # "j":I
    .end local v2    # "numberOfArrays":I
    .end local v3    # "csdLength":I
    .end local v8    # "nalUnitType":I
    .end local v9    # "numberOfNalUnits":I
    .restart local v22    # "numberOfArrays":I
    .restart local v23    # "csdLength":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v19

    goto/16 :goto_2

    .end local v19    # "lengthSizeMinusOne":I
    .end local v22    # "numberOfArrays":I
    .end local v23    # "csdLength":I
    .local v0, "lengthSizeMinusOne":I
    .restart local v2    # "numberOfArrays":I
    .restart local v3    # "csdLength":I
    :cond_4
    move/from16 v19, v0

    move/from16 v22, v2

    move/from16 v23, v3

    .line 115
    .end local v0    # "lengthSizeMinusOne":I
    .end local v2    # "numberOfArrays":I
    .end local v3    # "csdLength":I
    .end local v7    # "i":I
    .restart local v19    # "lengthSizeMinusOne":I
    .restart local v22    # "numberOfArrays":I
    .restart local v23    # "csdLength":I
    if-nez v23, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_4
    move-object v8, v0

    .line 116
    .local v8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v7, Landroidx/media3/extractor/HevcConfig;

    add-int/lit8 v9, v19, 0x1

    invoke-direct/range {v7 .. v18}, Landroidx/media3/extractor/HevcConfig;-><init>(Ljava/util/List;IIIIIIIIFLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 128
    .end local v4    # "csdStartPosition":I
    .end local v5    # "buffer":[B
    .end local v6    # "bufferPosition":I
    .end local v8    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "bitdepthLuma":I
    .end local v13    # "bitdepthChroma":I
    .end local v14    # "colorSpace":I
    .end local v15    # "colorRange":I
    .end local v16    # "colorTransfer":I
    .end local v17    # "pixelWidthHeightRatio":F
    .end local v18    # "codecs":Ljava/lang/String;
    .end local v19    # "lengthSizeMinusOne":I
    .end local v22    # "numberOfArrays":I
    .end local v23    # "csdLength":I
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "Error parsing HEVC config"

    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2
.end method

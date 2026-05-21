.class public final Landroidx/media3/extractor/AvcConfig;
.super Ljava/lang/Object;
.source "AvcConfig.java"


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

    .line 162
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 164
    iput p2, p0, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    .line 165
    iput p3, p0, Landroidx/media3/extractor/AvcConfig;->width:I

    .line 166
    iput p4, p0, Landroidx/media3/extractor/AvcConfig;->height:I

    .line 167
    iput p5, p0, Landroidx/media3/extractor/AvcConfig;->bitdepthLuma:I

    .line 168
    iput p6, p0, Landroidx/media3/extractor/AvcConfig;->bitdepthChroma:I

    .line 169
    iput p7, p0, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    .line 170
    iput p8, p0, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    .line 171
    iput p9, p0, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    .line 172
    iput p10, p0, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    .line 173
    iput-object p11, p0, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 174
    return-void
.end method

.method private static buildNalUnitForChild(Landroidx/media3/common/util/ParsableByteArray;)[B
    .locals 3
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 177
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 178
    .local v0, "length":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 179
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 180
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;
    .locals 18
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x4

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 45
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v2, 0x3

    and-int/2addr v0, v2

    add-int/lit8 v5, v0, 0x1

    .line 46
    .local v5, "nalUnitLengthFieldLength":I
    if-eq v5, v2, :cond_3

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v4, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 51
    .local v0, "numSequenceParameterSets":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 52
    invoke-static {v1}, Landroidx/media3/extractor/AvcConfig;->buildNalUnitForChild(Landroidx/media3/common/util/ParsableByteArray;)[B

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "j":I
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 55
    .local v2, "numPictureParameterSets":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 56
    invoke-static {v1}, Landroidx/media3/extractor/AvcConfig;->buildNalUnitForChild(Landroidx/media3/common/util/ParsableByteArray;)[B

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    .end local v3    # "j":I
    :cond_1
    const/4 v3, -0x1

    .line 60
    .local v3, "width":I
    const/4 v6, -0x1

    .line 61
    .local v6, "height":I
    const/4 v7, -0x1

    .line 62
    .local v7, "bitdepthLuma":I
    const/4 v8, -0x1

    .line 63
    .local v8, "bitdepthChroma":I
    const/4 v9, -0x1

    .line 64
    .local v9, "colorSpace":I
    const/4 v10, -0x1

    .line 65
    .local v10, "colorRange":I
    const/4 v11, -0x1

    .line 66
    .local v11, "colorTransfer":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 67
    .local v12, "pixelWidthHeightRatio":F
    const/4 v13, 0x0

    .line 68
    .local v13, "codecs":Ljava/lang/String;
    if-lez v0, :cond_2

    .line 69
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 70
    .local v15, "sps":[B
    nop

    .line 72
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    move/from16 v16, v0

    .end local v0    # "numSequenceParameterSets":I
    .local v16, "numSequenceParameterSets":I
    array-length v0, v15

    .line 71
    invoke-static {v14, v5, v0}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v0

    .line 73
    .local v0, "spsData":Landroidx/media3/container/NalUnitUtil$SpsData;
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    move v3, v14

    .line 74
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    move v6, v14

    .line 75
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v7, v14, 0x8

    .line 76
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v8, v14, 0x8

    .line 77
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    move v9, v14

    .line 78
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorRange:I

    move v10, v14

    .line 79
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    move v11, v14

    .line 80
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    move v12, v14

    .line 81
    iget v14, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    iget v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    move/from16 v17, v2

    .end local v2    # "numPictureParameterSets":I
    .local v17, "numPictureParameterSets":I
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 82
    invoke-static {v14, v1, v2}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    move-object v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v3

    goto :goto_2

    .line 68
    .end local v15    # "sps":[B
    .end local v16    # "numSequenceParameterSets":I
    .end local v17    # "numPictureParameterSets":I
    .local v0, "numSequenceParameterSets":I
    .restart local v2    # "numPictureParameterSets":I
    :cond_2
    move/from16 v16, v0

    move/from16 v17, v2

    .end local v0    # "numSequenceParameterSets":I
    .end local v2    # "numPictureParameterSets":I
    .restart local v16    # "numSequenceParameterSets":I
    .restart local v17    # "numPictureParameterSets":I
    move-object v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v3

    .line 86
    .end local v3    # "width":I
    .local v6, "width":I
    .local v7, "height":I
    .local v8, "bitdepthLuma":I
    .local v9, "bitdepthChroma":I
    .local v10, "colorSpace":I
    .local v11, "colorRange":I
    .local v12, "colorTransfer":I
    .local v13, "pixelWidthHeightRatio":F
    .local v14, "codecs":Ljava/lang/String;
    :goto_2
    new-instance v3, Landroidx/media3/extractor/AvcConfig;

    invoke-direct/range {v3 .. v14}, Landroidx/media3/extractor/AvcConfig;-><init>(Ljava/util/List;IIIIIIIIFLjava/lang/String;)V

    return-object v3

    .line 47
    .end local v4    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v8    # "bitdepthLuma":I
    .end local v9    # "bitdepthChroma":I
    .end local v10    # "colorSpace":I
    .end local v11    # "colorRange":I
    .end local v12    # "colorTransfer":I
    .end local v13    # "pixelWidthHeightRatio":F
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v16    # "numSequenceParameterSets":I
    .end local v17    # "numPictureParameterSets":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "data":Landroidx/media3/common/util/ParsableByteArray;
    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v5    # "nalUnitLengthFieldLength":I
    .restart local p0    # "data":Landroidx/media3/common/util/ParsableByteArray;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Error parsing AVC config"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

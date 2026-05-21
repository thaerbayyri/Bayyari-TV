.class public final Landroidx/media3/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_RATE_VALUES:[D

.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3

.field private static final START_USER_DATA:I = 0xb2


# instance fields
.field private final csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

.field private formatId:Ljava/lang/String;

.field private frameDurationUs:J

.field private hasOutputFormat:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private sampleHasPicture:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private startedFirstSample:Z

.field private totalBytesWritten:J

.field private final userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

.field private final userDataReader:Landroidx/media3/extractor/ts/UserDataReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    .line 79
    return-void
.end method

.method constructor <init>(Landroidx/media3/extractor/ts/UserDataReader;)V
    .locals 3
    .param p1, "userDataReader"    # Landroidx/media3/extractor/ts/UserDataReader;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 84
    new-instance v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0xb2

    invoke-direct {v0, v2, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 87
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_0

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 90
    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    .line 92
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    .line 93
    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 94
    return-void
.end method

.method private static parseCsdBuffer(Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;
    .locals 22
    .param p0, "csdBuffer"    # Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;
    .param p1, "formatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/common/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v2, v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 235
    .local v1, "csdData":[B
    const/4 v2, 0x4

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    .line 236
    .local v3, "firstByte":I
    const/4 v4, 0x5

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    .line 237
    .local v5, "secondByte":I
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    .line 238
    .local v6, "thirdByte":I
    shl-int/lit8 v7, v3, 0x4

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    .line 239
    .local v7, "width":I
    and-int/lit8 v8, v5, 0xf

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v6

    .line 241
    .local v8, "height":I
    const/high16 v9, 0x3f800000    # 1.0f

    .line 242
    .local v9, "pixelWidthHeightRatio":F
    const/4 v10, 0x7

    aget-byte v11, v1, v10

    and-int/lit16 v11, v11, 0xf0

    shr-int/lit8 v2, v11, 0x4

    .line 243
    .local v2, "aspectRatioCode":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    mul-int/lit8 v11, v8, 0x79

    int-to-float v11, v11

    mul-int/lit8 v12, v7, 0x64

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 252
    goto :goto_0

    .line 248
    :pswitch_1
    mul-int/lit8 v11, v8, 0x10

    int-to-float v11, v11

    mul-int/lit8 v12, v7, 0x9

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 249
    goto :goto_0

    .line 245
    :pswitch_2
    mul-int/lit8 v11, v8, 0x4

    int-to-float v11, v11

    mul-int/lit8 v12, v7, 0x3

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 246
    nop

    .line 258
    :goto_0
    new-instance v11, Landroidx/media3/common/Format$Builder;

    invoke-direct {v11}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 260
    move-object/from16 v12, p1

    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 261
    const-string/jumbo v13, "video/mpeg2"

    invoke-virtual {v11, v13}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 262
    invoke-virtual {v11, v7}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 263
    invoke-virtual {v11, v8}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 264
    invoke-virtual {v11, v9}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 265
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 266
    invoke-virtual {v11}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v11

    .line 268
    .local v11, "format":Landroidx/media3/common/Format;
    const-wide/16 v13, 0x0

    .line 269
    .local v13, "frameDurationUs":J
    aget-byte v10, v1, v10

    and-int/lit8 v10, v10, 0xf

    add-int/lit8 v10, v10, -0x1

    .line 270
    .local v10, "frameRateCodeMinusOne":I
    if-ltz v10, :cond_1

    sget-object v15, Landroidx/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v15, v15

    if-ge v10, v15, :cond_1

    .line 271
    sget-object v15, Landroidx/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    aget-wide v16, v15, v10

    .line 272
    .local v16, "frameRate":D
    iget v15, v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    .line 273
    .local v15, "sequenceExtensionPosition":I
    add-int/lit8 v18, v15, 0x9

    aget-byte v18, v1, v18

    and-int/lit8 v18, v18, 0x60

    shr-int/lit8 v4, v18, 0x5

    .line 274
    .local v4, "frameRateExtensionN":I
    add-int/lit8 v18, v15, 0x9

    aget-byte v18, v1, v18

    and-int/lit8 v0, v18, 0x1f

    .line 275
    .local v0, "frameRateExtensionD":I
    if-eq v4, v0, :cond_0

    .line 276
    move/from16 v19, v0

    move-object/from16 v18, v1

    .end local v0    # "frameRateExtensionD":I
    .end local v1    # "csdData":[B
    .local v18, "csdData":[B
    .local v19, "frameRateExtensionD":I
    int-to-double v0, v4

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v0, v0, v20

    move-wide/from16 v20, v0

    add-int/lit8 v0, v19, 0x1

    int-to-double v0, v0

    div-double v0, v20, v0

    mul-double v16, v16, v0

    goto :goto_1

    .line 275
    .end local v18    # "csdData":[B
    .end local v19    # "frameRateExtensionD":I
    .restart local v0    # "frameRateExtensionD":I
    .restart local v1    # "csdData":[B
    :cond_0
    move/from16 v19, v0

    move-object/from16 v18, v1

    .line 278
    .end local v0    # "frameRateExtensionD":I
    .end local v1    # "csdData":[B
    .restart local v18    # "csdData":[B
    .restart local v19    # "frameRateExtensionD":I
    :goto_1
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double v0, v0, v16

    double-to-long v13, v0

    goto :goto_2

    .line 270
    .end local v4    # "frameRateExtensionN":I
    .end local v15    # "sequenceExtensionPosition":I
    .end local v16    # "frameRate":D
    .end local v18    # "csdData":[B
    .end local v19    # "frameRateExtensionD":I
    .restart local v1    # "csdData":[B
    :cond_1
    move-object/from16 v18, v1

    .line 281
    .end local v1    # "csdData":[B
    .restart local v18    # "csdData":[B
    :goto_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 21
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 129
    .local v1, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    .line 130
    .local v2, "limit":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 133
    .local v3, "dataArray":[B
    iget-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 134
    iget-object v4, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 137
    :goto_0
    iget-object v4, v0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v3, v1, v2, v4}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v4

    .line 139
    .local v4, "startCodeOffset":I
    if-ne v4, v2, :cond_2

    .line 141
    iget-boolean v5, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v5, :cond_0

    .line 142
    iget-object v5, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v5, v3, v1, v2}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 144
    :cond_0
    iget-object v5, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v5, :cond_1

    .line 145
    iget-object v5, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5, v3, v1, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 147
    :cond_1
    return-void

    .line 151
    :cond_2
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    .line 154
    .local v5, "startCodeValue":I
    sub-int v7, v4, v1

    .line 156
    .local v7, "lengthToStartCode":I
    iget-boolean v8, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    const/4 v10, 0x1

    if-nez v8, :cond_5

    .line 157
    if-lez v7, :cond_3

    .line 158
    iget-object v8, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v8, v3, v1, v4}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 162
    :cond_3
    if-gez v7, :cond_4

    neg-int v8, v7

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 163
    .local v8, "bytesAlreadyPassed":I
    :goto_1
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v11, v5, v8}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 165
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    invoke-static {v12}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v11, v12}, Landroidx/media3/extractor/ts/H262Reader;->parseCsdBuffer(Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v11

    .line 166
    .local v11, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/common/Format;Ljava/lang/Long;>;"
    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/common/Format;

    invoke-interface {v12, v13}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 167
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->frameDurationUs:J

    .line 168
    iput-boolean v10, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 171
    .end local v8    # "bytesAlreadyPassed":I
    .end local v11    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/common/Format;Ljava/lang/Long;>;"
    :cond_5
    iget-object v8, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v8, :cond_8

    .line 172
    const/4 v8, 0x0

    .line 173
    .restart local v8    # "bytesAlreadyPassed":I
    if-lez v7, :cond_6

    .line 174
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v3, v1, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_2

    .line 176
    :cond_6
    neg-int v8, v7

    .line 179
    :goto_2
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v8}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 180
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v11, v11, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v12, v12, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v11, v12}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v11

    .line 181
    .local v11, "unescapedLength":I
    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v12}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v13, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v13, v13, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v12, v13, v11}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 182
    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    invoke-static {v12}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/extractor/ts/UserDataReader;

    iget-wide v13, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-object v15, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12, v13, v14, v15}, Landroidx/media3/extractor/ts/UserDataReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 185
    .end local v11    # "unescapedLength":I
    :cond_7
    const/16 v11, 0xb2

    if-ne v5, v11, :cond_8

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v11

    add-int/lit8 v12, v4, 0x2

    aget-byte v11, v11, v12

    if-ne v11, v10, :cond_8

    .line 186
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v5}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 189
    .end local v8    # "bytesAlreadyPassed":I
    :cond_8
    if-eqz v5, :cond_b

    const/16 v8, 0xb3

    if-ne v5, v8, :cond_9

    goto :goto_4

    .line 211
    :cond_9
    const/16 v8, 0xb8

    if-ne v5, v8, :cond_a

    .line 212
    iput-boolean v10, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    goto/16 :goto_a

    .line 211
    :cond_a
    :goto_3
    goto/16 :goto_a

    .line 190
    :cond_b
    :goto_4
    sub-int v16, v2, v4

    .line 191
    .local v16, "bytesWrittenPastStartCode":I
    iget-boolean v8, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_c

    iget-boolean v8, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v8, :cond_c

    iget-wide v13, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v8, v13, v11

    if-eqz v8, :cond_c

    .line 193
    iget-boolean v14, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 194
    .local v14, "flags":I
    iget-wide v11, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    move-wide/from16 v19, v11

    iget-wide v10, v0, Landroidx/media3/extractor/ts/H262Reader;->samplePosition:J

    sub-long v10, v19, v10

    long-to-int v10, v10

    sub-int v15, v10, v16

    .line 195
    .local v15, "size":I
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-wide/from16 v8, v18

    invoke-interface/range {v11 .. v17}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    move/from16 v11, v16

    .end local v16    # "bytesWrittenPastStartCode":I
    .local v11, "bytesWrittenPastStartCode":I
    goto :goto_5

    .line 191
    .end local v11    # "bytesWrittenPastStartCode":I
    .end local v14    # "flags":I
    .end local v15    # "size":I
    .restart local v16    # "bytesWrittenPastStartCode":I
    :cond_c
    move-wide v8, v11

    move/from16 v11, v16

    .line 197
    .end local v16    # "bytesWrittenPastStartCode":I
    .restart local v11    # "bytesWrittenPastStartCode":I
    :goto_5
    iget-boolean v12, v0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v12, :cond_e

    iget-boolean v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v12, :cond_d

    goto :goto_6

    :cond_d
    const/4 v8, 0x1

    const/4 v10, 0x0

    goto :goto_8

    .line 199
    :cond_e
    :goto_6
    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v14, v11

    sub-long/2addr v12, v14

    iput-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->samplePosition:J

    .line 200
    nop

    .line 201
    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    cmp-long v12, v12, v8

    if-eqz v12, :cond_f

    .line 202
    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    goto :goto_7

    .line 203
    :cond_f
    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v12, v12, v8

    if-eqz v12, :cond_10

    .line 204
    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-wide v14, v0, Landroidx/media3/extractor/ts/H262Reader;->frameDurationUs:J

    add-long/2addr v12, v14

    goto :goto_7

    .line 205
    :cond_10
    move-wide v12, v8

    :goto_7
    iput-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 206
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 207
    iput-wide v8, v0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    .line 208
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    .line 210
    :goto_8
    if-nez v5, :cond_11

    move v9, v8

    goto :goto_9

    :cond_11
    move v9, v10

    :goto_9
    iput-boolean v9, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    .end local v11    # "bytesWrittenPastStartCode":I
    goto :goto_3

    .line 215
    :goto_a
    add-int/lit8 v1, v4, 0x3

    .line 216
    .end local v4    # "startCodeOffset":I
    .end local v5    # "startCodeValue":I
    .end local v7    # "lengthToStartCode":I
    goto/16 :goto_0
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 111
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 112
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 113
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 114
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/ts/UserDataReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 117
    :cond_0
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 222
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 122
    iput-wide p1, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    .line 123
    return-void
.end method

.method public seek()V
    .locals 2

    .line 98
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 99
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 100
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 103
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    .line 105
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    .line 106
    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 107
    return-void
.end method

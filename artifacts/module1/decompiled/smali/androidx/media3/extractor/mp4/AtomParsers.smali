.class final Landroidx/media3/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;,
        Landroidx/media3/extractor/mp4/AtomParsers$StsdData;,
        Landroidx/media3/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;,
        Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;,
        Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_nclc:I = 0x6e636c63

.field private static final TYPE_nclx:I = 0x6e636c78

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    const-string v0, "OpusHead"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2122
    return-void
.end method

.method private static allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1519
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 7
    .param p0, "timestamps"    # [J
    .param p1, "duration"    # J
    .param p3, "editStartTime"    # J
    .param p5, "editEndTime"    # J

    .line 2110
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2111
    .local v0, "lastIndex":I
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v4

    .line 2112
    .local v4, "latestDelayIndex":I
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 2113
    invoke-static {v5, v3, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    .line 2114
    .local v2, "earliestPaddingIndex":I
    aget-wide v5, p0, v3

    cmp-long v5, v5, p3

    if-gtz v5, :cond_0

    aget-wide v5, p0, v4

    cmp-long v5, p3, v5

    if-gez v5, :cond_0

    aget-wide v5, p0, v2

    cmp-long v5, v5, p5

    if-gez v5, :cond_0

    cmp-long v5, p5, p1

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private static canTrimSamplesWithTimestampChange(I)Z
    .locals 1
    .param p0, "trackType"    # I

    .line 776
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static findBoxPosition(Landroidx/media3/common/util/ParsableByteArray;III)I
    .locals 6
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "boxType"    # I
    .param p2, "parentBoxPosition"    # I
    .param p3, "parentBoxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1896
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1897
    .local v0, "childAtomPosition":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1898
    :goto_1
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_3

    .line 1899
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1900
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 1901
    .local v3, "childAtomSize":I
    if-lez v3, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1902
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1903
    .local v4, "childType":I
    if-ne v4, p1, :cond_2

    .line 1904
    return v0

    .line 1906
    :cond_2
    add-int/2addr v0, v3

    .line 1907
    .end local v3    # "childAtomSize":I
    .end local v4    # "childType":I
    goto :goto_1

    .line 1908
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private static getTrackTypeForHdlr(I)I
    .locals 1
    .param p0, "hdlr"    # I

    .line 903
    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    .line 904
    const/4 v0, 0x1

    return v0

    .line 905
    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    .line 906
    const/4 v0, 0x2

    return v0

    .line 907
    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 909
    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    .line 910
    const/4 v0, 0x5

    return v0

    .line 912
    :cond_3
    const/4 v0, -0x1

    return v0

    .line 908
    :cond_4
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method public static maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3
    .param p0, "meta"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 282
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 287
    .local v0, "endPosition":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 288
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    .line 289
    add-int/lit8 v0, v0, 0x4

    .line 291
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 292
    return-void
.end method

.method private static parseAudioSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 28
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z
    .param p7, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p8, "out"    # Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .param p9, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1587
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x8

    const/16 v8, 0x8

    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1589
    const/4 v7, 0x0

    .line 1590
    .local v7, "quickTimeSoundDescriptionVersion":I
    const/4 v9, 0x6

    if-eqz p6, :cond_0

    .line 1591
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 1592
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 1594
    :cond_0
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1599
    :goto_0
    const/4 v10, 0x0

    .line 1600
    .local v10, "sampleRateMlp":I
    const/4 v11, -0x1

    .line 1601
    .local v11, "pcmEncoding":I
    const/4 v12, 0x0

    .line 1602
    .local v12, "codecs":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1604
    .local v13, "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    const/16 v14, 0x10

    const/4 v15, 0x2

    const/4 v9, 0x4

    const/16 v18, 0x0

    const/4 v8, 0x1

    if-eqz v7, :cond_d

    if-ne v7, v8, :cond_1

    move/from16 v19, v9

    move/from16 v22, v15

    goto/16 :goto_7

    .line 1616
    :cond_1
    if-ne v7, v15, :cond_c

    .line 1617
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1619
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readDouble()D

    move-result-wide v19

    move/from16 v22, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    .line 1620
    .local v14, "sampleRate":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    .line 1622
    .local v15, "channelCount":I
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1623
    move/from16 v19, v9

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 1624
    .local v9, "bitsPerSample":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    .line 1625
    .local v16, "formatSpecificFlags":I
    and-int/lit8 v20, v16, 0x1

    if-eqz v20, :cond_2

    move/from16 v20, v8

    goto :goto_1

    :cond_2
    move/from16 v20, v18

    .line 1626
    .local v20, "isFloat":Z
    :goto_1
    and-int/lit8 v23, v16, 0x2

    if-eqz v23, :cond_3

    move/from16 v23, v8

    goto :goto_2

    :cond_3
    move/from16 v23, v18

    .line 1627
    .local v23, "isBigEndian":Z
    :goto_2
    if-nez v20, :cond_a

    .line 1628
    const/16 v8, 0x8

    if-ne v9, v8, :cond_4

    .line 1629
    const/4 v8, 0x3

    move v11, v8

    .end local v11    # "pcmEncoding":I
    .local v8, "pcmEncoding":I
    goto :goto_6

    .line 1630
    .end local v8    # "pcmEncoding":I
    .restart local v11    # "pcmEncoding":I
    :cond_4
    const/16 v8, 0x10

    if-ne v9, v8, :cond_6

    .line 1631
    if-eqz v23, :cond_5

    const/high16 v8, 0x10000000

    goto :goto_3

    :cond_5
    move/from16 v8, v22

    :goto_3
    move v11, v8

    .end local v11    # "pcmEncoding":I
    .restart local v8    # "pcmEncoding":I
    goto :goto_6

    .line 1632
    .end local v8    # "pcmEncoding":I
    .restart local v11    # "pcmEncoding":I
    :cond_6
    const/16 v8, 0x18

    if-ne v9, v8, :cond_8

    .line 1633
    if-eqz v23, :cond_7

    const/high16 v8, 0x50000000

    goto :goto_4

    :cond_7
    const/16 v8, 0x15

    :goto_4
    move v11, v8

    .end local v11    # "pcmEncoding":I
    .restart local v8    # "pcmEncoding":I
    goto :goto_6

    .line 1634
    .end local v8    # "pcmEncoding":I
    .restart local v11    # "pcmEncoding":I
    :cond_8
    const/16 v8, 0x20

    if-ne v9, v8, :cond_b

    .line 1635
    if-eqz v23, :cond_9

    const/high16 v8, 0x60000000

    goto :goto_5

    :cond_9
    const/16 v8, 0x16

    :goto_5
    move v11, v8

    .end local v11    # "pcmEncoding":I
    .restart local v8    # "pcmEncoding":I
    goto :goto_6

    .line 1637
    .end local v8    # "pcmEncoding":I
    .restart local v11    # "pcmEncoding":I
    :cond_a
    const/16 v8, 0x20

    if-ne v9, v8, :cond_b

    .line 1638
    const/4 v8, 0x4

    move v11, v8

    .line 1640
    :cond_b
    :goto_6
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1641
    .end local v9    # "bitsPerSample":I
    .end local v16    # "formatSpecificFlags":I
    .end local v20    # "isFloat":Z
    .end local v23    # "isBigEndian":Z
    goto :goto_8

    .line 1643
    .end local v14    # "sampleRate":I
    .end local v15    # "channelCount":I
    :cond_c
    return-void

    .line 1604
    :cond_d
    move/from16 v19, v9

    move/from16 v22, v15

    .line 1605
    :goto_7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v15

    .line 1606
    .restart local v15    # "channelCount":I
    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1608
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v14

    .line 1610
    .restart local v14    # "sampleRate":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1611
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 1613
    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 1614
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1646
    :cond_e
    :goto_8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v8

    .line 1647
    .local v8, "childPosition":I
    const v9, 0x656e6361

    move/from16 v16, v7

    .end local v7    # "quickTimeSoundDescriptionVersion":I
    .local v16, "quickTimeSoundDescriptionVersion":I
    move/from16 v7, p1

    if-ne v7, v9, :cond_11

    .line 1649
    nop

    .line 1650
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v9

    .line 1651
    .local v9, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v9, :cond_10

    .line 1652
    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1654
    .end local p1    # "atomType":I
    .local v1, "atomType":I
    if-nez v5, :cond_f

    .line 1655
    const/4 v7, 0x0

    goto :goto_9

    .line 1656
    :cond_f
    iget-object v7, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v7, v7, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v7

    :goto_9
    nop

    .line 1657
    .end local p7    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v7, "drmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v5, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move/from16 p1, v1

    .end local v1    # "atomType":I
    .restart local p1    # "atomType":I
    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v1, v5, p9

    move-object v5, v7

    move/from16 v7, p1

    .line 1659
    .end local p1    # "atomType":I
    .local v5, "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v7, "atomType":I
    :cond_10
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1667
    .end local v9    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_11
    const/4 v1, 0x0

    .line 1668
    .local v1, "mimeType":Ljava/lang/String;
    const v9, 0x61632d33

    move-object/from16 p1, v1

    .end local v1    # "mimeType":Ljava/lang/String;
    .local p1, "mimeType":Ljava/lang/String;
    const/4 v1, -0x1

    if-ne v7, v9, :cond_12

    .line 1669
    const-string v9, "audio/ac3"

    .end local p1    # "mimeType":Ljava/lang/String;
    .local v9, "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1670
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_12
    const v9, 0x65632d33

    if-ne v7, v9, :cond_13

    .line 1671
    const-string v9, "audio/eac3"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1672
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_13
    const v9, 0x61632d34

    if-ne v7, v9, :cond_14

    .line 1673
    const-string v9, "audio/ac4"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1674
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_14
    const v9, 0x64747363

    if-ne v7, v9, :cond_15

    .line 1675
    const-string v9, "audio/vnd.dts"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1676
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_15
    const v9, 0x64747368

    if-eq v7, v9, :cond_28

    const v9, 0x6474736c

    if-ne v7, v9, :cond_16

    goto/16 :goto_b

    .line 1678
    :cond_16
    const v9, 0x64747365

    if-ne v7, v9, :cond_17

    .line 1679
    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1680
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_17
    const v9, 0x64747378

    if-ne v7, v9, :cond_18

    .line 1681
    const-string v9, "audio/vnd.dts.uhd;profile=p2"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1682
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_18
    const v9, 0x73616d72

    if-ne v7, v9, :cond_19

    .line 1683
    const-string v9, "audio/3gpp"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1684
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_19
    const v9, 0x73617762

    if-ne v7, v9, :cond_1a

    .line 1685
    const-string v9, "audio/amr-wb"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto/16 :goto_c

    .line 1686
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1a
    const v9, 0x736f7774

    if-ne v7, v9, :cond_1b

    .line 1687
    const-string v9, "audio/raw"

    .line 1688
    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    const/4 v11, 0x2

    goto/16 :goto_c

    .line 1689
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1b
    const v9, 0x74776f73

    if-ne v7, v9, :cond_1c

    .line 1690
    const-string v9, "audio/raw"

    .line 1691
    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    const/high16 v11, 0x10000000

    goto/16 :goto_c

    .line 1692
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1c
    const v9, 0x6c70636d

    if-ne v7, v9, :cond_1d

    .line 1693
    const-string v9, "audio/raw"

    .line 1694
    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    if-ne v11, v1, :cond_29

    .line 1695
    const/4 v11, 0x2

    goto :goto_c

    .line 1697
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1d
    const v9, 0x2e6d7032

    if-eq v7, v9, :cond_27

    const v9, 0x2e6d7033

    if-ne v7, v9, :cond_1e

    goto :goto_a

    .line 1699
    :cond_1e
    const v9, 0x6d686131

    if-ne v7, v9, :cond_1f

    .line 1700
    const-string v9, "audio/mha1"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1701
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1f
    const v9, 0x6d686d31

    if-ne v7, v9, :cond_20

    .line 1702
    const-string v9, "audio/mhm1"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1703
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_20
    const v9, 0x616c6163

    if-ne v7, v9, :cond_21

    .line 1704
    const-string v9, "audio/alac"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1705
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_21
    const v9, 0x616c6177

    if-ne v7, v9, :cond_22

    .line 1706
    const-string v9, "audio/g711-alaw"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1707
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_22
    const v9, 0x756c6177

    if-ne v7, v9, :cond_23

    .line 1708
    const-string v9, "audio/g711-mlaw"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1709
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_23
    const v9, 0x4f707573

    if-ne v7, v9, :cond_24

    .line 1710
    const-string v9, "audio/opus"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1711
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_24
    const v9, 0x664c6143

    if-ne v7, v9, :cond_25

    .line 1712
    const-string v9, "audio/flac"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1713
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_25
    const v9, 0x6d6c7061

    if-ne v7, v9, :cond_26

    .line 1714
    const-string v9, "audio/true-hd"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1713
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_26
    move-object/from16 v9, p1

    goto :goto_c

    .line 1698
    :cond_27
    :goto_a
    const-string v9, "audio/mpeg"

    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    goto :goto_c

    .line 1677
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_28
    :goto_b
    const-string v9, "audio/vnd.dts.hd"

    .line 1717
    .end local p1    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    :cond_29
    :goto_c
    const/16 v20, 0x0

    move-object/from16 v1, v20

    .line 1718
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_d
    move/from16 v20, v7

    .end local v7    # "atomType":I
    .local v20, "atomType":I
    sub-int v7, v8, p2

    if-ge v7, v2, :cond_42

    .line 1719
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1720
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 1721
    .local v7, "childAtomSize":I
    if-lez v7, :cond_2a

    const/4 v2, 0x1

    goto :goto_e

    :cond_2a
    move/from16 v2, v18

    :goto_e
    move-object/from16 v21, v13

    .end local v13    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .local v21, "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    const-string v13, "childAtomSize must be positive"

    invoke-static {v2, v13}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1722
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1723
    .local v2, "childAtomType":I
    const v13, 0x6d686143

    if-ne v2, v13, :cond_2d

    .line 1727
    add-int/lit8 v13, v8, 0x8

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1728
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1729
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v23

    .line 1730
    .local v23, "mpeghProfileLevelIndication":I
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1732
    const-string v13, "audio/mhm1"

    invoke-static {v9, v13}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 1733
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v26, v11

    move-object/from16 v25, v13

    const/4 v13, 0x1

    .end local v11    # "pcmEncoding":I
    .local v26, "pcmEncoding":I
    new-array v11, v13, [Ljava/lang/Object;

    aput-object v25, v11, v18

    const-string v13, "mhm1.%02X"

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    .line 1734
    .end local v26    # "pcmEncoding":I
    .restart local v11    # "pcmEncoding":I
    :cond_2b
    move/from16 v26, v11

    .end local v11    # "pcmEncoding":I
    .restart local v26    # "pcmEncoding":I
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v25, v11

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v25, v11, v18

    const-string v13, "mha1.%02X"

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_f
    nop

    .line 1735
    .end local v12    # "codecs":Ljava/lang/String;
    .local v11, "codecs":Ljava/lang/String;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 1736
    .local v12, "mpegh3daConfigLength":I
    new-array v13, v12, [B

    .line 1737
    .local v13, "initializationDataBytes":[B
    move-object/from16 v25, v11

    move/from16 v11, v18

    .end local v11    # "codecs":Ljava/lang/String;
    .local v25, "codecs":Ljava/lang/String;
    invoke-virtual {v0, v13, v11, v12}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1739
    if-nez v1, :cond_2c

    .line 1740
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_10

    .line 1744
    :cond_2c
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v11, v27

    check-cast v11, [B

    invoke-static {v13, v11}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1746
    .end local v12    # "mpegh3daConfigLength":I
    .end local v13    # "initializationDataBytes":[B
    .end local v23    # "mpeghProfileLevelIndication":I
    :goto_10
    move-object/from16 v13, v21

    move-object/from16 v12, v25

    const/16 v24, 0x1

    move/from16 v25, v10

    goto/16 :goto_17

    .end local v25    # "codecs":Ljava/lang/String;
    .end local v26    # "pcmEncoding":I
    .local v11, "pcmEncoding":I
    .local v12, "codecs":Ljava/lang/String;
    :cond_2d
    move/from16 v26, v11

    .end local v11    # "pcmEncoding":I
    .restart local v26    # "pcmEncoding":I
    const v11, 0x6d686150

    if-ne v2, v11, :cond_30

    .line 1749
    add-int/lit8 v11, v8, 0x8

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1750
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 1751
    .local v11, "numCompatibleSets":I
    if-lez v11, :cond_2f

    .line 1752
    new-array v13, v11, [B

    .line 1753
    .local v13, "mpeghCompatibleProfileLevelSet":[B
    move-object/from16 v23, v12

    const/4 v12, 0x0

    .end local v12    # "codecs":Ljava/lang/String;
    .local v23, "codecs":Ljava/lang/String;
    invoke-virtual {v0, v13, v12, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1754
    if-nez v1, :cond_2e

    .line 1755
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_11

    .line 1759
    :cond_2e
    nop

    .line 1760
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v12, v25

    check-cast v12, [B

    invoke-static {v12, v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_11

    .line 1751
    .end local v13    # "mpeghCompatibleProfileLevelSet":[B
    .end local v23    # "codecs":Ljava/lang/String;
    .restart local v12    # "codecs":Ljava/lang/String;
    :cond_2f
    move-object/from16 v23, v12

    .line 1763
    .end local v11    # "numCompatibleSets":I
    .end local v12    # "codecs":Ljava/lang/String;
    .restart local v23    # "codecs":Ljava/lang/String;
    :goto_11
    move/from16 v25, v10

    move-object/from16 v13, v21

    move-object/from16 v12, v23

    const/16 v24, 0x1

    goto/16 :goto_17

    .end local v23    # "codecs":Ljava/lang/String;
    .restart local v12    # "codecs":Ljava/lang/String;
    :cond_30
    move-object/from16 v23, v12

    .end local v12    # "codecs":Ljava/lang/String;
    .restart local v23    # "codecs":Ljava/lang/String;
    const v11, 0x65736473

    if-eq v2, v11, :cond_3c

    if-eqz p6, :cond_31

    const v12, 0x77617665

    if-ne v2, v12, :cond_31

    move/from16 v25, v10

    const/16 v24, 0x1

    goto/16 :goto_14

    .line 1791
    :cond_31
    const v11, 0x64616333

    if-ne v2, v11, :cond_32

    .line 1792
    add-int/lit8 v11, v8, 0x8

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1793
    nop

    .line 1794
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v4, v5}, Landroidx/media3/extractor/Ac3Util;->parseAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v11

    iput-object v11, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    move/from16 v25, v10

    const/16 v24, 0x1

    goto/16 :goto_13

    .line 1795
    :cond_32
    const v11, 0x64656333

    if-ne v2, v11, :cond_33

    .line 1796
    add-int/lit8 v11, v8, 0x8

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1797
    nop

    .line 1798
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v4, v5}, Landroidx/media3/extractor/Ac3Util;->parseEAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v11

    iput-object v11, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    move/from16 v25, v10

    const/16 v24, 0x1

    goto/16 :goto_13

    .line 1799
    :cond_33
    const v11, 0x64616334

    if-ne v2, v11, :cond_34

    .line 1800
    add-int/lit8 v11, v8, 0x8

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1801
    nop

    .line 1802
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v4, v5}, Landroidx/media3/extractor/Ac4Util;->parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v11

    iput-object v11, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    move/from16 v25, v10

    const/16 v24, 0x1

    goto/16 :goto_13

    .line 1803
    :cond_34
    const v11, 0x646d6c70

    if-ne v2, v11, :cond_36

    .line 1804
    if-lez v10, :cond_35

    .line 1809
    move v11, v10

    .line 1813
    .end local v14    # "sampleRate":I
    .local v11, "sampleRate":I
    const/4 v12, 0x2

    move/from16 v25, v10

    move v14, v11

    move v15, v12

    move-object/from16 v13, v21

    move-object/from16 v12, v23

    const/16 v24, 0x1

    .end local v15    # "channelCount":I
    .local v12, "channelCount":I
    goto/16 :goto_17

    .line 1805
    .end local v11    # "sampleRate":I
    .end local v12    # "channelCount":I
    .restart local v14    # "sampleRate":I
    .restart local v15    # "channelCount":I
    :cond_35
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v11

    throw v11

    .line 1814
    :cond_36
    const/4 v12, 0x0

    const v11, 0x64647473

    if-eq v2, v11, :cond_3b

    const v11, 0x75647473

    if-ne v2, v11, :cond_37

    move/from16 v25, v10

    const/16 v24, 0x1

    goto/16 :goto_12

    .line 1824
    :cond_37
    const v11, 0x644f7073

    if-ne v2, v11, :cond_38

    .line 1827
    add-int/lit8 v11, v7, -0x8

    .line 1828
    .local v11, "childAtomBodySize":I
    sget-object v13, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    sget-object v12, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v12, v12

    add-int/2addr v12, v11

    invoke-static {v13, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    .line 1829
    .local v12, "headerBytes":[B
    add-int/lit8 v13, v8, 0x8

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1830
    sget-object v13, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v13, v13

    invoke-virtual {v0, v12, v13, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1831
    invoke-static {v12}, Landroidx/media3/extractor/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v1

    .line 1832
    .end local v11    # "childAtomBodySize":I
    .end local v12    # "headerBytes":[B
    move/from16 v25, v10

    move-object/from16 v13, v21

    move-object/from16 v12, v23

    const/16 v24, 0x1

    goto/16 :goto_17

    :cond_38
    const v11, 0x64664c61

    if-ne v2, v11, :cond_39

    .line 1833
    add-int/lit8 v11, v7, -0xc

    .line 1834
    .restart local v11    # "childAtomBodySize":I
    add-int/lit8 v12, v11, 0x4

    new-array v12, v12, [B

    .line 1835
    .local v12, "initializationDataBytes":[B
    const/16 v13, 0x66

    const/16 v18, 0x0

    aput-byte v13, v12, v18

    .line 1836
    const/16 v13, 0x4c

    const/16 v24, 0x1

    aput-byte v13, v12, v24

    .line 1837
    const/16 v13, 0x61

    aput-byte v13, v12, v22

    .line 1838
    const/4 v13, 0x3

    const/16 v25, 0x43

    aput-byte v25, v12, v13

    .line 1839
    add-int/lit8 v13, v8, 0xc

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1840
    move/from16 v13, v19

    invoke-virtual {v0, v12, v13, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1841
    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1842
    .end local v11    # "childAtomBodySize":I
    .end local v12    # "initializationDataBytes":[B
    move/from16 v25, v10

    move-object/from16 v13, v21

    move-object/from16 v12, v23

    goto/16 :goto_17

    :cond_39
    move/from16 v13, v19

    const/16 v24, 0x1

    const v12, 0x616c6163

    if-ne v2, v12, :cond_3a

    .line 1843
    add-int/lit8 v11, v7, -0xc

    .line 1844
    .restart local v11    # "childAtomBodySize":I
    new-array v12, v11, [B

    .line 1845
    .restart local v12    # "initializationDataBytes":[B
    add-int/lit8 v13, v8, 0xc

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1846
    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1849
    nop

    .line 1850
    invoke-static {v12}, Landroidx/media3/common/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v13

    .line 1851
    .local v13, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move/from16 v25, v10

    .end local v10    # "sampleRateMlp":I
    .local v25, "sampleRateMlp":I
    iget-object v10, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1852
    .end local v14    # "sampleRate":I
    .local v10, "sampleRate":I
    iget-object v14, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1853
    .end local v15    # "channelCount":I
    .local v14, "channelCount":I
    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move v15, v14

    move-object/from16 v13, v21

    move-object/from16 v12, v23

    move v14, v10

    goto/16 :goto_17

    .line 1842
    .end local v11    # "childAtomBodySize":I
    .end local v12    # "initializationDataBytes":[B
    .end local v13    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v25    # "sampleRateMlp":I
    .local v10, "sampleRateMlp":I
    .local v14, "sampleRate":I
    .restart local v15    # "channelCount":I
    :cond_3a
    move/from16 v25, v10

    .end local v10    # "sampleRateMlp":I
    .restart local v25    # "sampleRateMlp":I
    goto :goto_13

    .line 1814
    .end local v25    # "sampleRateMlp":I
    .restart local v10    # "sampleRateMlp":I
    :cond_3b
    move/from16 v25, v10

    const/16 v24, 0x1

    .line 1815
    .end local v10    # "sampleRateMlp":I
    .restart local v25    # "sampleRateMlp":I
    :goto_12
    new-instance v10, Landroidx/media3/common/Format$Builder;

    invoke-direct {v10}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1817
    invoke-virtual {v10, v3}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v10

    .line 1818
    invoke-virtual {v10, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v10

    .line 1819
    invoke-virtual {v10, v15}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v10

    .line 1820
    invoke-virtual {v10, v14}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v10

    .line 1821
    invoke-virtual {v10, v5}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v10

    .line 1822
    invoke-virtual {v10, v4}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v10

    .line 1823
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v10

    iput-object v10, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    .line 1855
    .end local v25    # "sampleRateMlp":I
    .restart local v10    # "sampleRateMlp":I
    :goto_13
    move-object/from16 v13, v21

    move-object/from16 v12, v23

    .end local v10    # "sampleRateMlp":I
    .restart local v25    # "sampleRateMlp":I
    goto :goto_17

    .line 1763
    .end local v25    # "sampleRateMlp":I
    .restart local v10    # "sampleRateMlp":I
    :cond_3c
    move/from16 v25, v10

    const/16 v24, 0x1

    .line 1766
    .end local v10    # "sampleRateMlp":I
    .restart local v25    # "sampleRateMlp":I
    :goto_14
    if-ne v2, v11, :cond_3d

    .line 1767
    move v10, v8

    goto :goto_15

    .line 1768
    :cond_3d
    invoke-static {v0, v11, v8, v7}, Landroidx/media3/extractor/mp4/AtomParsers;->findBoxPosition(Landroidx/media3/common/util/ParsableByteArray;III)I

    move-result v10

    :goto_15
    nop

    .line 1769
    .local v10, "esdsAtomPosition":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_41

    .line 1770
    invoke-static {v0, v10}, Landroidx/media3/extractor/mp4/AtomParsers;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v13

    .line 1771
    .end local v21    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .local v13, "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    invoke-static {v13}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$300(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    move-result-object v9

    .line 1772
    invoke-static {v13}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$400(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)[B

    move-result-object v12

    .line 1773
    .restart local v12    # "initializationDataBytes":[B
    if-eqz v12, :cond_40

    .line 1774
    const-string v11, "audio/vorbis"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 1775
    nop

    .line 1776
    invoke-static {v12}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v12, v23

    goto :goto_16

    .line 1778
    :cond_3e
    const-string v11, "audio/mp4a-latm"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 1781
    nop

    .line 1782
    invoke-static {v12}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v11

    .line 1783
    .local v11, "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    iget v14, v11, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 1784
    iget v15, v11, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 1785
    iget-object v0, v11, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1787
    .end local v11    # "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    :cond_3f
    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v12, v23

    goto :goto_16

    .line 1773
    :cond_40
    move-object/from16 v12, v23

    goto :goto_16

    .line 1769
    .end local v12    # "initializationDataBytes":[B
    .end local v13    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .restart local v21    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    :cond_41
    move-object/from16 v13, v21

    move-object/from16 v12, v23

    .line 1791
    .end local v10    # "esdsAtomPosition":I
    .end local v21    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .end local v23    # "codecs":Ljava/lang/String;
    .local v12, "codecs":Ljava/lang/String;
    .restart local v13    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    :goto_16
    nop

    .line 1855
    :goto_17
    add-int/2addr v8, v7

    .line 1856
    .end local v2    # "childAtomType":I
    .end local v7    # "childAtomSize":I
    move-object/from16 v0, p0

    move/from16 v2, p3

    move/from16 v7, v20

    move/from16 v10, v25

    move/from16 v11, v26

    const/16 v18, 0x0

    const/16 v19, 0x4

    goto/16 :goto_d

    .line 1858
    .end local v25    # "sampleRateMlp":I
    .end local v26    # "pcmEncoding":I
    .local v10, "sampleRateMlp":I
    .local v11, "pcmEncoding":I
    :cond_42
    move/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v23, v12

    move-object/from16 v21, v13

    .end local v10    # "sampleRateMlp":I
    .end local v11    # "pcmEncoding":I
    .end local v12    # "codecs":Ljava/lang/String;
    .end local v13    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .restart local v21    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .restart local v23    # "codecs":Ljava/lang/String;
    .restart local v25    # "sampleRateMlp":I
    .restart local v26    # "pcmEncoding":I
    iget-object v0, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    if-nez v0, :cond_44

    if-eqz v9, :cond_44

    .line 1859
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1861
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1862
    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1863
    move-object/from16 v12, v23

    .end local v23    # "codecs":Ljava/lang/String;
    .restart local v12    # "codecs":Ljava/lang/String;
    invoke-virtual {v0, v12}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1864
    invoke-virtual {v0, v15}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1865
    invoke-virtual {v0, v14}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1866
    move/from16 v11, v26

    .end local v26    # "pcmEncoding":I
    .restart local v11    # "pcmEncoding":I
    invoke-virtual {v0, v11}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1867
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1868
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1869
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1871
    .local v0, "formatBuilder":Landroidx/media3/common/Format$Builder;
    if-eqz v21, :cond_43

    .line 1872
    nop

    .line 1873
    invoke-static/range {v21 .. v21}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$600(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 1874
    invoke-static/range {v21 .. v21}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$500(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v7

    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 1877
    :cond_43
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_18

    .line 1858
    .end local v0    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .end local v11    # "pcmEncoding":I
    .end local v12    # "codecs":Ljava/lang/String;
    .restart local v23    # "codecs":Ljava/lang/String;
    .restart local v26    # "pcmEncoding":I
    :cond_44
    move-object/from16 v12, v23

    move/from16 v11, v26

    .line 1879
    .end local v23    # "codecs":Ljava/lang/String;
    .end local v26    # "pcmEncoding":I
    .restart local v11    # "pcmEncoding":I
    .restart local v12    # "codecs":Ljava/lang/String;
    :goto_18
    return-void
.end method

.method private static parseAv1c(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;
    .locals 23
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 1399
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1400
    .local v0, "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 1401
    .local v1, "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    const/16 v3, 0x8

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 1405
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1406
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 1407
    .local v5, "seqProfile":I
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1408
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 1409
    .local v6, "highBitdepth":Z
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 1410
    .local v7, "twelveBit":Z
    const/16 v8, 0xc

    const/16 v9, 0xa

    const/4 v10, 0x2

    if-ne v5, v10, :cond_2

    if-eqz v6, :cond_2

    .line 1411
    if-eqz v7, :cond_0

    move v11, v8

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    invoke-virtual {v0, v11}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1412
    if-eqz v7, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    goto :goto_3

    .line 1413
    :cond_2
    if-gt v5, v10, :cond_5

    .line 1414
    if-eqz v6, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    move v11, v3

    :goto_1
    invoke-virtual {v0, v11}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1415
    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v9, v3

    :goto_2
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1419
    :cond_5
    :goto_3
    const/16 v9, 0xd

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1422
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1423
    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 1424
    .local v12, "obuType":I
    const-string v13, "AtomParsers"

    if-eq v12, v2, :cond_6

    .line 1425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported obu_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1428
    :cond_6
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1429
    const-string v2, "Unsupported obu_extension_flag"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1432
    :cond_7
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    .line 1433
    .local v14, "obuHasSizeField":Z
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1435
    if-eqz v14, :cond_8

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    const/16 v9, 0x7f

    if-le v15, v9, :cond_8

    .line 1436
    const-string v2, "Excessive obu_size"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1440
    :cond_8
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 1441
    .local v9, "obuSeqHeaderSeqProfile":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1442
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1443
    const-string v2, "Unsupported reduced_still_picture_header"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1446
    :cond_9
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1447
    const-string v2, "Unsupported timing_info_present_flag"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1450
    :cond_a
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1451
    const-string v2, "Unsupported initial_display_delay_present_flag"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    return-object v2

    .line 1454
    :cond_b
    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 1455
    .local v15, "operatingPointsCountMinus1":I
    const/16 v17, 0x0

    move/from16 v3, v17

    .local v3, "i":I
    :goto_4
    const/4 v4, 0x7

    if-gt v3, v15, :cond_d

    .line 1456
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1457
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 1458
    .local v8, "seqLevelIdx":I
    if-le v8, v4, :cond_c

    .line 1459
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1455
    .end local v8    # "seqLevelIdx":I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    const/16 v8, 0xc

    goto :goto_4

    .line 1462
    .end local v3    # "i":I
    :cond_d
    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 1463
    .local v3, "frameWidthBitsMinus1":I
    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 1464
    .local v8, "frameHeightBitsMinus1":I
    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1465
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1466
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1467
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1469
    :cond_e
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1470
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 1471
    .local v4, "enableOrderHint":Z
    if-eqz v4, :cond_f

    .line 1472
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1475
    :cond_f
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1476
    move v11, v10

    goto :goto_5

    .line 1477
    :cond_10
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    :goto_5
    nop

    .line 1478
    .local v11, "seqForceScreenContentTools":I
    if-lez v11, :cond_11

    .line 1479
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v13

    if-nez v13, :cond_11

    .line 1480
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1483
    :cond_11
    if-eqz v4, :cond_12

    .line 1484
    const/4 v13, 0x3

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_6

    .line 1483
    :cond_12
    const/4 v13, 0x3

    .line 1486
    :goto_6
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1488
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v13

    .line 1489
    .local v13, "colorConfigHighBitdepth":Z
    if-ne v9, v10, :cond_13

    if-eqz v13, :cond_13

    .line 1490
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1493
    :cond_13
    if-eq v9, v2, :cond_14

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_14

    move/from16 v17, v2

    goto :goto_7

    :cond_14
    const/16 v17, 0x0

    .line 1495
    .local v17, "monochrome":Z
    :goto_7
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 1496
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 1497
    .local v2, "colorPrimaries":I
    move/from16 v20, v3

    .end local v3    # "frameWidthBitsMinus1":I
    .local v20, "frameWidthBitsMinus1":I
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 1498
    .local v3, "transferCharacteristics":I
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 1500
    .local v10, "matrixCoefficients":I
    if-nez v17, :cond_15

    move/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "enableOrderHint":Z
    .local v21, "enableOrderHint":Z
    if-ne v2, v4, :cond_16

    const/16 v4, 0xd

    if-ne v3, v4, :cond_16

    if-nez v10, :cond_16

    .line 1504
    const/4 v4, 0x1

    const/16 v16, 0x1

    goto :goto_8

    .line 1500
    .end local v21    # "enableOrderHint":Z
    .restart local v4    # "enableOrderHint":Z
    :cond_15
    move/from16 v21, v4

    .line 1505
    .end local v4    # "enableOrderHint":Z
    .restart local v21    # "enableOrderHint":Z
    :cond_16
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v16

    :goto_8
    move/from16 v18, v16

    .line 1506
    .local v18, "colorRange":I
    nop

    .line 1507
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v4

    .line 1508
    move-object/from16 v22, v0

    move-object/from16 v16, v1

    move/from16 v0, v18

    const/4 v1, 0x1

    .end local v1    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .end local v18    # "colorRange":I
    .local v0, "colorRange":I
    .local v16, "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .local v22, "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    if-ne v0, v1, :cond_17

    goto :goto_9

    :cond_17
    const/4 v1, 0x2

    :goto_9
    invoke-virtual {v4, v1}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 1510
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v4

    .line 1509
    invoke-virtual {v1, v4}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    goto :goto_a

    .line 1495
    .end local v2    # "colorPrimaries":I
    .end local v10    # "matrixCoefficients":I
    .end local v16    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .end local v20    # "frameWidthBitsMinus1":I
    .end local v21    # "enableOrderHint":Z
    .end local v22    # "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    .local v0, "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    .restart local v1    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .local v3, "frameWidthBitsMinus1":I
    .restart local v4    # "enableOrderHint":Z
    :cond_18
    move-object/from16 v22, v0

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v4

    .line 1512
    .end local v0    # "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    .end local v1    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .end local v3    # "frameWidthBitsMinus1":I
    .end local v4    # "enableOrderHint":Z
    .restart local v16    # "bitArray":Landroidx/media3/common/util/ParsableBitArray;
    .restart local v20    # "frameWidthBitsMinus1":I
    .restart local v21    # "enableOrderHint":Z
    .restart local v22    # "colorInfo":Landroidx/media3/common/ColorInfo$Builder;
    :goto_a
    invoke-virtual/range {v22 .. v22}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0
.end method

.method static parseCommonEncryptionSinfFromParent(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 9
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1995
    add-int/lit8 v0, p1, 0x8

    .line 1996
    .local v0, "childPosition":I
    const/4 v1, -0x1

    .line 1997
    .local v1, "schemeInformationBoxPosition":I
    const/4 v2, 0x0

    .line 1998
    .local v2, "schemeInformationBoxSize":I
    const/4 v3, 0x0

    .line 1999
    .local v3, "schemeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2000
    .local v4, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v5, v0, p1

    if-ge v5, p2, :cond_3

    .line 2001
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2002
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 2003
    .local v5, "childAtomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 2004
    .local v6, "childAtomType":I
    const v7, 0x66726d61

    if-ne v6, v7, :cond_0

    .line 2005
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 2006
    :cond_0
    const v7, 0x7363686d

    if-ne v6, v7, :cond_1

    .line 2007
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2009
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2010
    :cond_1
    const v7, 0x73636869

    if-ne v6, v7, :cond_2

    .line 2011
    move v1, v0

    .line 2012
    move v2, v5

    .line 2014
    :cond_2
    :goto_1
    add-int/2addr v0, v5

    .line 2015
    .end local v5    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_0

    .line 2017
    :cond_3
    const-string v5, "cenc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2018
    const-string v5, "cbc1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2019
    const-string v5, "cens"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2020
    const-string v5, "cbcs"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 2031
    :cond_4
    const/4 v5, 0x0

    return-object v5

    .line 2021
    :cond_5
    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    move v7, v5

    goto :goto_3

    :cond_6
    move v7, v6

    :goto_3
    const-string v8, "frma atom is mandatory"

    invoke-static {v7, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2022
    const/4 v7, -0x1

    if-eq v1, v7, :cond_7

    move v7, v5

    goto :goto_4

    :cond_7
    move v7, v6

    :goto_4
    const-string/jumbo v8, "schi atom is mandatory"

    invoke-static {v7, v8}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2025
    nop

    .line 2026
    invoke-static {p0, v1, v2, v3}, Landroidx/media3/extractor/mp4/AtomParsers;->parseSchiFromParent(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v7

    .line 2028
    .local v7, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    move v5, v6

    :goto_5
    const-string/jumbo v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2029
    invoke-static {v7}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseEdts(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 11
    .param p0, "edtsAtom"    # Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 1543
    const v0, 0x656c7374

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 1544
    .local v0, "elstAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    if-nez v0, :cond_0

    .line 1545
    const/4 v1, 0x0

    return-object v1

    .line 1547
    :cond_0
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 1548
    .local v1, "elstData":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1549
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1550
    .local v2, "fullAtom":I
    invoke-static {v2}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 1551
    .local v3, "version":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 1552
    .local v4, "entryCount":I
    new-array v5, v4, [J

    .line 1553
    .local v5, "editListDurations":[J
    new-array v6, v4, [J

    .line 1554
    .local v6, "editListMediaTimes":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_4

    .line 1555
    nop

    .line 1556
    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_1
    aput-wide v9, v5, v7

    .line 1557
    if-ne v3, v8, :cond_2

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    :goto_2
    aput-wide v9, v6, v7

    .line 1558
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v9

    .line 1559
    .local v9, "mediaRateInteger":I
    if-ne v9, v8, :cond_3

    .line 1563
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1554
    .end local v9    # "mediaRateInteger":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1561
    .restart local v9    # "mediaRateInteger":I
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported media rate."

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1565
    .end local v7    # "i":I
    .end local v9    # "mediaRateInteger":I
    :cond_4
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7
.end method

.method private static parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .locals 18
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 1913
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    const/4 v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1915
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1916
    invoke-static {v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 1917
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1919
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 1920
    .local v4, "flags":I
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_0

    .line 1921
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1923
    :cond_0
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_1

    .line 1924
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1926
    :cond_1
    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_2

    .line 1927
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1931
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1932
    invoke-static {v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 1935
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 1936
    .local v3, "objectTypeIndication":I
    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v6

    .line 1937
    .local v6, "mimeType":Ljava/lang/String;
    const-string v5, "audio/mpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1938
    const-string v5, "audio/vnd.dts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1939
    const-string v5, "audio/vnd.dts.hd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1947
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1948
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 1949
    .local v12, "peakBitrate":J
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v14

    .line 1952
    .local v14, "bitrate":J
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1953
    invoke-static {v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v1

    .line 1954
    .local v1, "initializationDataSize":I
    new-array v7, v1, [B

    .line 1955
    .local v7, "initializationData":[B
    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1958
    new-instance v5, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    .line 1961
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    const-wide/16 v10, -0x1

    move-wide/from16 v16, v8

    if-lez v2, :cond_4

    move-wide v8, v14

    goto :goto_0

    :cond_4
    move-wide v8, v10

    .line 1962
    :goto_0
    cmp-long v2, v12, v16

    if-lez v2, :cond_5

    move-wide v10, v12

    :cond_5
    invoke-direct/range {v5 .. v11}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    .line 1958
    return-object v5

    .line 1940
    .end local v1    # "initializationDataSize":I
    .end local v7    # "initializationData":[B
    .end local v12    # "peakBitrate":J
    .end local v14    # "bitrate":J
    :cond_6
    :goto_1
    new-instance v5, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v11}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object v5
.end method

.method private static parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 4
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 2098
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 2099
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 2100
    .local v1, "size":I
    :goto_0
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 2101
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 2102
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_0

    .line 2104
    :cond_0
    return v1
.end method

.method private static parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 1
    .param p0, "hdlr"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 897
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 898
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseIlst(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 2
    .param p0, "ilst"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 798
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/Metadata$Entry;>;"
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 801
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIlstElement(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    .line 802
    .local v1, "entry":Landroidx/media3/common/Metadata$Entry;
    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    .end local v1    # "entry":Landroidx/media3/common/Metadata$Entry;
    :cond_0
    goto :goto_0

    .line 806
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object v1
.end method

.method private static parseMdhd(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 7
    .param p0, "mdhd"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 924
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 925
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 926
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 927
    .local v2, "version":I
    if-nez v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 928
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 929
    .local v3, "timescale":J
    if-nez v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 930
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 931
    .local v0, "languageCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0xa

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v6, v0, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 936
    .local v5, "language":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method public static parseMdtaFromMeta(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)Landroidx/media3/common/Metadata;
    .locals 15
    .param p0, "meta"    # Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 223
    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 224
    .local v0, "hdlrAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    .line 225
    .local v1, "keysAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .line 226
    .local v2, "ilstAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    iget-object v4, v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 229
    invoke-static {v4}, Landroidx/media3/extractor/mp4/AtomParsers;->parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v4

    const v5, 0x6d647461

    if-eq v4, v5, :cond_0

    goto/16 :goto_4

    .line 235
    :cond_0
    iget-object v4, v1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 236
    .local v4, "keys":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 237
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 238
    .local v5, "entryCount":I
    new-array v6, v5, [Ljava/lang/String;

    .line 239
    .local v6, "keyNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 240
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 241
    .local v8, "entrySize":I
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 242
    add-int/lit8 v9, v8, -0x8

    .line 243
    .local v9, "keySize":I
    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    .line 239
    .end local v8    # "entrySize":I
    .end local v9    # "keySize":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 247
    .end local v7    # "i":I
    :cond_1
    iget-object v7, v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 248
    .local v7, "ilst":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 249
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/Metadata$Entry;>;"
    :goto_1
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-le v10, v8, :cond_4

    .line 251
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v10

    .line 252
    .local v10, "atomPosition":I
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 253
    .local v11, "atomSize":I
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .line 254
    .local v12, "keyIndex":I
    if-ltz v12, :cond_3

    array-length v13, v6

    if-ge v12, v13, :cond_3

    .line 255
    aget-object v13, v6, v12

    .line 257
    .local v13, "key":Ljava/lang/String;
    add-int v14, v10, v11

    .line 258
    invoke-static {v7, v14, v13}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v14

    .line 259
    .local v14, "entry":Landroidx/media3/common/Metadata$Entry;
    if-eqz v14, :cond_2

    .line 260
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "entry":Landroidx/media3/common/Metadata$Entry;
    :cond_2
    goto :goto_2

    .line 263
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipped metadata with unknown key index: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "AtomParsers"

    invoke-static {v14, v13}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_2
    add-int v13, v10, v11

    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 266
    .end local v10    # "atomPosition":I
    .end local v11    # "atomSize":I
    .end local v12    # "keyIndex":I
    goto :goto_1

    .line 267
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    new-instance v3, Landroidx/media3/common/Metadata;

    invoke-direct {v3, v9}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_3
    return-object v3

    .line 231
    .end local v4    # "keys":Landroidx/media3/common/util/ParsableByteArray;
    .end local v5    # "entryCount":I
    .end local v6    # "keyNames":[Ljava/lang/String;
    .end local v7    # "ilst":Landroidx/media3/common/util/ParsableByteArray;
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/Metadata$Entry;>;"
    :cond_6
    :goto_4
    return-object v3
.end method

.method private static parseMetaDataSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/AtomParsers$StsdData;)V
    .locals 2
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "trackId"    # I
    .param p4, "out"    # Landroidx/media3/extractor/mp4/AtomParsers$StsdData;

    .line 1524
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1525
    const v0, 0x6d657474

    if-ne p1, v0, :cond_0

    .line 1526
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1527
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    .line 1528
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1529
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v1, p3}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, p4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    .line 1532
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;
    .locals 13
    .param p0, "mvhd"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 198
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 199
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 200
    .local v0, "fullAtom":I
    invoke-static {v0}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 203
    .local v1, "version":I
    if-nez v1, :cond_0

    .line 204
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    .line 205
    .local v2, "creationTimestampSeconds":J
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    move-wide v7, v2

    move-wide v9, v4

    .local v4, "modificationTimestampSeconds":J
    goto :goto_0

    .line 207
    .end local v2    # "creationTimestampSeconds":J
    .end local v4    # "modificationTimestampSeconds":J
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    .line 208
    .restart local v2    # "creationTimestampSeconds":J
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    move-wide v7, v2

    move-wide v9, v4

    .line 211
    .end local v2    # "creationTimestampSeconds":J
    .local v7, "creationTimestampSeconds":J
    .local v9, "modificationTimestampSeconds":J
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    .line 212
    .local v11, "timescale":J
    new-instance v6, Landroidx/media3/container/Mp4TimestampData;

    invoke-direct/range {v6 .. v12}, Landroidx/media3/container/Mp4TimestampData;-><init>(JJJ)V

    return-object v6
.end method

.method private static parsePaspFromParent(Landroidx/media3/common/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 1569
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1570
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 1571
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1572
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseProjFromParent(Landroidx/media3/common/util/ParsableByteArray;II)[B
    .locals 5
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .line 2083
    add-int/lit8 v0, p1, 0x8

    .line 2084
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 2085
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2086
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2087
    .local v1, "childAtomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2088
    .local v2, "childAtomType":I
    const v3, 0x70726f6a

    if-ne v2, v3, :cond_0

    .line 2089
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    add-int v4, v0, v1

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .line 2091
    :cond_0
    add-int/2addr v0, v1

    .line 2092
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 2093
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1973
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1974
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1975
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1976
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1977
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1978
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1979
    .local v2, "childAtomType":I
    const v3, 0x73696e66

    if-ne v2, v3, :cond_1

    .line 1981
    nop

    .line 1982
    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    .line 1983
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v3, :cond_1

    .line 1984
    return-object v3

    .line 1987
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_1
    add-int/2addr v0, v1

    .line 1988
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 1989
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSchiFromParent(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 19
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "schemeType"    # Ljava/lang/String;

    .line 2038
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    .line 2039
    .local v1, "childPosition":I
    :goto_0
    sub-int v2, v1, p1

    move/from16 v3, p2

    if-ge v2, v3, :cond_4

    .line 2040
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2041
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 2042
    .local v2, "childAtomSize":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 2043
    .local v4, "childAtomType":I
    const v5, 0x74656e63

    if-ne v4, v5, :cond_3

    .line 2044
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 2045
    .local v5, "fullAtom":I
    invoke-static {v5}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v6

    .line 2046
    .local v6, "version":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2047
    const/4 v8, 0x0

    .line 2048
    .local v8, "defaultCryptByteBlock":I
    const/4 v9, 0x0

    .line 2049
    .local v9, "defaultSkipByteBlock":I
    if-nez v6, :cond_0

    .line 2050
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v16, v8

    move/from16 v17, v9

    goto :goto_1

    .line 2052
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 2053
    .local v10, "patternByte":I
    and-int/lit16 v11, v10, 0xf0

    shr-int/lit8 v8, v11, 0x4

    .line 2054
    and-int/lit8 v9, v10, 0xf

    move/from16 v16, v8

    move/from16 v17, v9

    .line 2056
    .end local v8    # "defaultCryptByteBlock":I
    .end local v9    # "defaultSkipByteBlock":I
    .end local v10    # "patternByte":I
    .local v16, "defaultCryptByteBlock":I
    .local v17, "defaultSkipByteBlock":I
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    const/4 v9, 0x0

    if-ne v8, v7, :cond_1

    move v12, v7

    goto :goto_2

    :cond_1
    move v12, v9

    .line 2057
    .local v12, "defaultIsProtected":Z
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    .line 2058
    .local v14, "defaultPerSampleIvSize":I
    const/16 v7, 0x10

    new-array v15, v7, [B

    .line 2059
    .local v15, "defaultKeyId":[B
    array-length v7, v15

    invoke-virtual {v0, v15, v9, v7}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2060
    const/4 v7, 0x0

    .line 2061
    .local v7, "constantIv":[B
    if-eqz v12, :cond_2

    if-nez v14, :cond_2

    .line 2062
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 2063
    .local v8, "constantIvSize":I
    new-array v7, v8, [B

    .line 2064
    invoke-virtual {v0, v7, v9, v8}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v18, v7

    goto :goto_3

    .line 2066
    .end local v8    # "constantIvSize":I
    :cond_2
    move-object/from16 v18, v7

    .end local v7    # "constantIv":[B
    .local v18, "constantIv":[B
    :goto_3
    new-instance v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v13, p3

    invoke-direct/range {v11 .. v18}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v11

    .line 2075
    .end local v5    # "fullAtom":I
    .end local v6    # "version":I
    .end local v12    # "defaultIsProtected":Z
    .end local v14    # "defaultPerSampleIvSize":I
    .end local v15    # "defaultKeyId":[B
    .end local v16    # "defaultCryptByteBlock":I
    .end local v17    # "defaultSkipByteBlock":I
    .end local v18    # "constantIv":[B
    :cond_3
    add-int/2addr v1, v2

    .line 2076
    .end local v2    # "childAtomSize":I
    .end local v4    # "childAtomType":I
    goto :goto_0

    .line 2077
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private static parseStbl(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;)Landroidx/media3/extractor/mp4/TrackSampleTable;
    .locals 73
    .param p0, "track"    # Landroidx/media3/extractor/mp4/Track;
    .param p1, "stblAtom"    # Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .param p2, "gaplessInfoHolder"    # Landroidx/media3/extractor/GaplessInfoHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 396
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    const v0, 0x7374737a

    invoke-virtual {v9, v0}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    .line 397
    .local v11, "stszAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    const/4 v0, 0x0

    if-eqz v11, :cond_0

    .line 398
    new-instance v2, Landroidx/media3/extractor/mp4/AtomParsers$StszSampleSizeBox;

    iget-object v3, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-direct {v2, v11, v3}, Landroidx/media3/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Landroidx/media3/extractor/mp4/Atom$LeafAtom;Landroidx/media3/common/Format;)V

    move-object v12, v2

    .local v2, "sampleSizeBox":Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;
    goto :goto_0

    .line 400
    .end local v2    # "sampleSizeBox":Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;
    :cond_0
    const v2, 0x73747a32

    invoke-virtual {v9, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .line 401
    .local v2, "stz2Atom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    if-eqz v2, :cond_31

    .line 405
    new-instance v3, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v3, v2}, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)V

    move-object v12, v3

    .line 408
    .end local v2    # "stz2Atom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .local v12, "sampleSizeBox":Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;
    :goto_0
    invoke-interface {v12}, Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v13

    .line 409
    .local v13, "sampleCount":I
    const/4 v2, 0x0

    if-nez v13, :cond_1

    .line 410
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    new-array v3, v2, [J

    move-object v4, v3

    new-array v3, v2, [I

    new-array v5, v2, [J

    new-array v6, v2, [I

    const-wide/16 v7, 0x0

    move-object v2, v4

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 421
    :cond_1
    const/4 v3, 0x0

    .line 422
    .local v3, "chunkOffsetsAreLongs":Z
    const v4, 0x7374636f

    invoke-virtual {v9, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    .line 423
    .local v4, "chunkOffsetsAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    if-nez v4, :cond_2

    .line 424
    const/4 v3, 0x1

    .line 425
    const v5, 0x636f3634

    invoke-virtual {v9, v5}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move v14, v3

    move-object v15, v4

    goto :goto_1

    .line 423
    :cond_2
    move v14, v3

    move-object v15, v4

    .line 427
    .end local v3    # "chunkOffsetsAreLongs":Z
    .end local v4    # "chunkOffsetsAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .local v14, "chunkOffsetsAreLongs":Z
    .local v15, "chunkOffsetsAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    :goto_1
    iget-object v3, v15, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 429
    .local v3, "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    const v4, 0x73747363

    invoke-virtual {v9, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 431
    .local v4, "stsc":Landroidx/media3/common/util/ParsableByteArray;
    const v5, 0x73747473

    invoke-virtual {v9, v5}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 433
    .local v5, "stts":Landroidx/media3/common/util/ParsableByteArray;
    const v6, 0x73747373

    invoke-virtual {v9, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    .line 434
    .local v6, "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    if-eqz v6, :cond_3

    iget-object v7, v6, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_2

    :cond_3
    move-object v7, v0

    .line 436
    .local v7, "stss":Landroidx/media3/common/util/ParsableByteArray;
    :goto_2
    const v8, 0x63747473

    invoke-virtual {v9, v8}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    .line 437
    .local v8, "cttsAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    if-eqz v8, :cond_4

    iget-object v0, v8, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 440
    .local v0, "ctts":Landroidx/media3/common/util/ParsableByteArray;
    :cond_4
    move/from16 v16, v2

    new-instance v2, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v2, v4, v3, v14}, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    .line 443
    .local v2, "chunkIterator":Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;
    move-object/from16 v17, v3

    .end local v3    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .local v17, "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 444
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    const/4 v3, 0x1

    add-int/lit8 v18, v18, -0x1

    .line 445
    .local v18, "remainingTimestampDeltaChanges":I
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 446
    .local v20, "remainingSamplesAtTimestampDelta":I
    move/from16 v21, v3

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 449
    .local v3, "timestampDeltaInTimeUnits":I
    const/16 v22, 0x0

    .line 450
    .local v22, "remainingSamplesAtTimestampOffset":I
    const/16 v23, 0x0

    .line 451
    .local v23, "remainingTimestampOffsetChanges":I
    const/16 v24, 0x0

    .line 452
    .local v24, "timestampOffset":I
    if-eqz v0, :cond_5

    .line 453
    move-object/from16 v25, v4

    const/16 v4, 0xc

    .end local v4    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .local v25, "stsc":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 454
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    goto :goto_3

    .line 452
    .end local v25    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v4    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    :cond_5
    move-object/from16 v25, v4

    .line 457
    .end local v4    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v25    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    :goto_3
    const/4 v4, -0x1

    .line 458
    .local v4, "nextSynchronizationSampleIndex":I
    const/16 v26, 0x0

    .line 459
    .local v26, "remainingSynchronizationSamples":I
    if-eqz v7, :cond_7

    .line 460
    move-object/from16 v27, v0

    const/16 v0, 0xc

    .end local v0    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .local v27, "ctts":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v7, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 461
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v26

    .line 462
    if-lez v26, :cond_6

    .line 463
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move-object/from16 v19, v7

    goto :goto_4

    .line 466
    :cond_6
    const/4 v7, 0x0

    move-object/from16 v19, v7

    goto :goto_4

    .line 459
    .end local v27    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v0    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    :cond_7
    move-object/from16 v27, v0

    .end local v0    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v27    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    move-object/from16 v19, v7

    .line 471
    .end local v7    # "stss":Landroidx/media3/common/util/ParsableByteArray;
    .local v19, "stss":Landroidx/media3/common/util/ParsableByteArray;
    :goto_4
    invoke-interface {v12}, Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    move-result v0

    .line 472
    .local v0, "fixedSampleSize":I
    iget-object v7, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v7, v7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 473
    .local v7, "sampleMimeType":Ljava/lang/String;
    move/from16 v28, v4

    .end local v4    # "nextSynchronizationSampleIndex":I
    .local v28, "nextSynchronizationSampleIndex":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_9

    .line 475
    const-string v4, "audio/raw"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 476
    const-string v4, "audio/g711-mlaw"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 477
    const-string v4, "audio/g711-alaw"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    if-nez v18, :cond_9

    if-nez v23, :cond_9

    if-nez v26, :cond_9

    move/from16 v4, v21

    goto :goto_5

    :cond_9
    move/from16 v4, v16

    :goto_5
    move/from16 v29, v4

    .line 484
    .local v29, "rechunkFixedSizeSamples":Z
    const/4 v4, 0x0

    .line 487
    .local v4, "maximumSize":I
    const-wide/16 v30, 0x0

    .line 490
    .local v30, "timestampTimeUnits":J
    if-eqz v29, :cond_b

    .line 491
    move/from16 v32, v4

    .end local v4    # "maximumSize":I
    .local v32, "maximumSize":I
    iget v4, v2, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [J

    .line 492
    .local v4, "chunkOffsetsBytes":[J
    move-object/from16 v33, v5

    .end local v5    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .local v33, "stts":Landroidx/media3/common/util/ParsableByteArray;
    iget v5, v2, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v5, v5, [I

    .line 493
    .local v5, "chunkSampleCounts":[I
    :goto_6
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v34

    if-eqz v34, :cond_a

    .line 494
    move-object/from16 v34, v6

    .end local v6    # "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .local v34, "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    iget v6, v2, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move/from16 v36, v6

    move-object/from16 v35, v7

    .end local v7    # "sampleMimeType":Ljava/lang/String;
    .local v35, "sampleMimeType":Ljava/lang/String;
    iget-wide v6, v2, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v6, v4, v36

    .line 495
    iget v6, v2, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v7, v2, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v7, v5, v6

    move-object/from16 v6, v34

    move-object/from16 v7, v35

    goto :goto_6

    .line 497
    .end local v34    # "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .end local v35    # "sampleMimeType":Ljava/lang/String;
    .restart local v6    # "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .restart local v7    # "sampleMimeType":Ljava/lang/String;
    :cond_a
    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .end local v6    # "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .end local v7    # "sampleMimeType":Ljava/lang/String;
    .restart local v34    # "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .restart local v35    # "sampleMimeType":Ljava/lang/String;
    int-to-long v6, v3

    .line 498
    invoke-static {v0, v4, v5, v6, v7}, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v6

    .line 500
    .local v6, "rechunkedResults":Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    iget-object v7, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 501
    .local v7, "offsets":[J
    move/from16 v36, v0

    .end local v0    # "fixedSampleSize":I
    .local v36, "fixedSampleSize":I
    iget-object v0, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 502
    .local v0, "sizes":[I
    move-object/from16 v37, v0

    .end local v0    # "sizes":[I
    .local v37, "sizes":[I
    iget v0, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 503
    .end local v32    # "maximumSize":I
    .local v0, "maximumSize":I
    move/from16 v32, v0

    .end local v0    # "maximumSize":I
    .restart local v32    # "maximumSize":I
    iget-object v0, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 504
    .local v0, "timestamps":[J
    move-object/from16 v38, v0

    .end local v0    # "timestamps":[J
    .local v38, "timestamps":[J
    iget-object v0, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 505
    .local v0, "flags":[I
    iget-wide v4, v6, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    .line 506
    .end local v5    # "chunkSampleCounts":[I
    .end local v6    # "rechunkedResults":Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    .local v4, "duration":J
    move-object v6, v0

    move/from16 v39, v3

    move-wide/from16 v45, v4

    move-wide/from16 v40, v30

    move/from16 v4, v32

    move-object/from16 v3, v37

    move-object/from16 v5, v38

    move/from16 v30, v22

    move/from16 v31, v23

    move/from16 v32, v24

    move/from16 v37, v26

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v26, v14

    move/from16 v24, v20

    move-object/from16 v20, v2

    move-object v2, v7

    move v14, v13

    move/from16 v13, v28

    move-object/from16 v28, v15

    move/from16 v15, v18

    move-object/from16 v18, v8

    goto/16 :goto_11

    .line 507
    .end local v32    # "maximumSize":I
    .end local v33    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v34    # "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .end local v35    # "sampleMimeType":Ljava/lang/String;
    .end local v36    # "fixedSampleSize":I
    .end local v37    # "sizes":[I
    .end local v38    # "timestamps":[J
    .local v0, "fixedSampleSize":I
    .local v4, "maximumSize":I
    .local v5, "stts":Landroidx/media3/common/util/ParsableByteArray;
    .local v6, "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .local v7, "sampleMimeType":Ljava/lang/String;
    :cond_b
    move/from16 v36, v0

    move/from16 v32, v4

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .end local v0    # "fixedSampleSize":I
    .end local v4    # "maximumSize":I
    .end local v5    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v6    # "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .end local v7    # "sampleMimeType":Ljava/lang/String;
    .restart local v32    # "maximumSize":I
    .restart local v33    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .restart local v34    # "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .restart local v35    # "sampleMimeType":Ljava/lang/String;
    .restart local v36    # "fixedSampleSize":I
    new-array v0, v13, [J

    .line 508
    .local v0, "offsets":[J
    new-array v4, v13, [I

    .line 509
    .local v4, "sizes":[I
    new-array v5, v13, [J

    .line 510
    .local v5, "timestamps":[J
    new-array v6, v13, [I

    .line 511
    .local v6, "flags":[I
    const-wide/16 v37, 0x0

    .line 512
    .local v37, "offset":J
    const/4 v7, 0x0

    .line 514
    .local v7, "remainingSamplesInChunk":I
    const/16 v39, 0x0

    move/from16 v9, v18

    move/from16 v10, v39

    move-object/from16 v18, v8

    move/from16 v8, v28

    move-object/from16 v28, v15

    move/from16 v15, v26

    move/from16 v26, v14

    move/from16 v14, v24

    move/from16 v24, v23

    move-object/from16 v23, v12

    move/from16 v12, v22

    move-object/from16 v22, v11

    move/from16 v11, v20

    move/from16 v20, v7

    move/from16 v7, v32

    .end local v32    # "maximumSize":I
    .local v7, "maximumSize":I
    .local v8, "nextSynchronizationSampleIndex":I
    .local v9, "remainingTimestampDeltaChanges":I
    .local v10, "i":I
    .local v11, "remainingSamplesAtTimestampDelta":I
    .local v12, "remainingSamplesAtTimestampOffset":I
    .local v14, "timestampOffset":I
    .local v15, "remainingSynchronizationSamples":I
    .local v18, "cttsAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .local v20, "remainingSamplesInChunk":I
    .local v22, "stszAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .local v23, "sampleSizeBox":Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;
    .local v24, "remainingTimestampOffsetChanges":I
    .local v26, "chunkOffsetsAreLongs":Z
    .local v28, "chunkOffsetsAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    :goto_7
    move/from16 v32, v12

    .end local v12    # "remainingSamplesAtTimestampOffset":I
    .local v32, "remainingSamplesAtTimestampOffset":I
    const-string v12, "AtomParsers"

    if-ge v10, v13, :cond_14

    .line 516
    const/16 v39, 0x1

    .line 517
    .local v39, "chunkDataComplete":Z
    :goto_8
    if-nez v20, :cond_c

    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v40

    move/from16 v39, v40

    if-eqz v40, :cond_c

    .line 518
    move/from16 v40, v13

    move/from16 v41, v14

    .end local v13    # "sampleCount":I
    .end local v14    # "timestampOffset":I
    .local v40, "sampleCount":I
    .local v41, "timestampOffset":I
    iget-wide v13, v2, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 519
    .end local v37    # "offset":J
    .local v13, "offset":J
    move-wide/from16 v37, v13

    .end local v13    # "offset":J
    .restart local v37    # "offset":J
    iget v13, v2, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v20, v13

    move/from16 v13, v40

    move/from16 v14, v41

    .end local v20    # "remainingSamplesInChunk":I
    .local v13, "remainingSamplesInChunk":I
    goto :goto_8

    .line 517
    .end local v40    # "sampleCount":I
    .end local v41    # "timestampOffset":I
    .local v13, "sampleCount":I
    .restart local v14    # "timestampOffset":I
    .restart local v20    # "remainingSamplesInChunk":I
    :cond_c
    move/from16 v40, v13

    move/from16 v41, v14

    .line 521
    .end local v13    # "sampleCount":I
    .end local v14    # "timestampOffset":I
    .restart local v40    # "sampleCount":I
    .restart local v41    # "timestampOffset":I
    if-nez v39, :cond_d

    .line 522
    const-string v13, "Unexpected end of chunk data"

    invoke-static {v12, v13}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    move v13, v10

    .line 524
    .end local v40    # "sampleCount":I
    .restart local v13    # "sampleCount":I
    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 525
    invoke-static {v4, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 526
    invoke-static {v5, v13}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 527
    invoke-static {v6, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 528
    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    move/from16 v10, v20

    goto/16 :goto_b

    .line 532
    .end local v13    # "sampleCount":I
    .restart local v40    # "sampleCount":I
    :cond_d
    move/from16 v12, v32

    move/from16 v14, v41

    if-eqz v27, :cond_f

    .line 533
    .end local v32    # "remainingSamplesAtTimestampOffset":I
    .end local v41    # "timestampOffset":I
    .restart local v12    # "remainingSamplesAtTimestampOffset":I
    .restart local v14    # "timestampOffset":I
    :goto_9
    if-nez v12, :cond_e

    if-lez v24, :cond_e

    .line 534
    invoke-virtual/range {v27 .. v27}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 540
    invoke-virtual/range {v27 .. v27}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 541
    add-int/lit8 v24, v24, -0x1

    goto :goto_9

    .line 543
    :cond_e
    add-int/lit8 v12, v12, -0x1

    .line 546
    :cond_f
    aput-wide v37, v0, v10

    .line 547
    invoke-interface/range {v23 .. v23}, Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v13

    aput v13, v4, v10

    .line 548
    aget v13, v4, v10

    if-le v13, v7, :cond_10

    .line 549
    aget v7, v4, v10

    .line 551
    :cond_10
    move-object v13, v4

    move-object/from16 v42, v5

    .end local v4    # "sizes":[I
    .end local v5    # "timestamps":[J
    .local v13, "sizes":[I
    .local v42, "timestamps":[J
    int-to-long v4, v14

    add-long v4, v30, v4

    aput-wide v4, v42, v10

    .line 554
    if-nez v19, :cond_11

    move/from16 v4, v21

    goto :goto_a

    :cond_11
    move/from16 v4, v16

    :goto_a
    aput v4, v6, v10

    .line 555
    if-ne v10, v8, :cond_12

    .line 556
    aput v21, v6, v10

    .line 557
    add-int/lit8 v15, v15, -0x1

    .line 558
    if-lez v15, :cond_12

    .line 559
    invoke-static/range {v19 .. v19}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v8, v4, -0x1

    .line 564
    :cond_12
    int-to-long v4, v3

    add-long v30, v30, v4

    .line 565
    add-int/lit8 v11, v11, -0x1

    .line 566
    if-nez v11, :cond_13

    if-lez v9, :cond_13

    .line 567
    invoke-virtual/range {v33 .. v33}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 574
    .end local v11    # "remainingSamplesAtTimestampDelta":I
    .local v4, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v33 .. v33}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 575
    add-int/lit8 v9, v9, -0x1

    move v11, v4

    .line 578
    .end local v4    # "remainingSamplesAtTimestampDelta":I
    .restart local v11    # "remainingSamplesAtTimestampDelta":I
    :cond_13
    aget v4, v13, v10

    int-to-long v4, v4

    add-long v37, v37, v4

    .line 579
    nop

    .end local v39    # "chunkDataComplete":Z
    add-int/lit8 v20, v20, -0x1

    .line 514
    add-int/lit8 v10, v10, 0x1

    move-object v4, v13

    move/from16 v13, v40

    move-object/from16 v5, v42

    goto/16 :goto_7

    .end local v12    # "remainingSamplesAtTimestampOffset":I
    .end local v40    # "sampleCount":I
    .end local v42    # "timestamps":[J
    .local v4, "sizes":[I
    .restart local v5    # "timestamps":[J
    .local v13, "sampleCount":I
    .restart local v32    # "remainingSamplesAtTimestampOffset":I
    :cond_14
    move-object/from16 v42, v5

    move/from16 v40, v13

    move/from16 v41, v14

    move-object v13, v4

    .end local v4    # "sizes":[I
    .end local v5    # "timestamps":[J
    .end local v14    # "timestampOffset":I
    .local v13, "sizes":[I
    .restart local v40    # "sampleCount":I
    .restart local v41    # "timestampOffset":I
    .restart local v42    # "timestamps":[J
    move-object v4, v0

    move-object v0, v13

    move/from16 v13, v40

    move/from16 v10, v20

    .line 581
    .end local v20    # "remainingSamplesInChunk":I
    .end local v40    # "sampleCount":I
    .end local v42    # "timestamps":[J
    .local v0, "sizes":[I
    .local v4, "offsets":[J
    .restart local v5    # "timestamps":[J
    .local v10, "remainingSamplesInChunk":I
    .local v13, "sampleCount":I
    :goto_b
    move-object/from16 v20, v2

    move/from16 v39, v3

    move/from16 v14, v41

    .end local v2    # "chunkIterator":Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v3    # "timestampDeltaInTimeUnits":I
    .end local v41    # "timestampOffset":I
    .restart local v14    # "timestampOffset":I
    .local v20, "chunkIterator":Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;
    .local v39, "timestampDeltaInTimeUnits":I
    int-to-long v2, v14

    add-long v2, v30, v2

    .line 585
    .local v2, "duration":J
    const/16 v40, 0x1

    .line 586
    .local v40, "isCttsValid":Z
    if-eqz v27, :cond_16

    .line 587
    :goto_c
    if-lez v24, :cond_16

    .line 588
    invoke-virtual/range {v27 .. v27}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v41

    if-eqz v41, :cond_15

    .line 589
    const/16 v40, 0x0

    .line 590
    goto :goto_d

    .line 592
    :cond_15
    invoke-virtual/range {v27 .. v27}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 593
    add-int/lit8 v24, v24, -0x1

    goto :goto_c

    .line 596
    :cond_16
    :goto_d
    if-nez v15, :cond_18

    if-nez v11, :cond_18

    if-nez v10, :cond_18

    if-nez v9, :cond_18

    if-nez v32, :cond_18

    if-nez v40, :cond_17

    goto :goto_e

    :cond_17
    move-object/from16 v41, v0

    move-wide/from16 v42, v2

    move/from16 v2, v32

    goto :goto_10

    .line 602
    :cond_18
    :goto_e
    move-object/from16 v41, v0

    .end local v0    # "sizes":[I
    .local v41, "sizes":[I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v42, v2

    .end local v2    # "duration":J
    .local v42, "duration":J
    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v2, v32

    .end local v32    # "remainingSamplesAtTimestampOffset":I
    .local v2, "remainingSamplesAtTimestampOffset":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 616
    if-nez v40, :cond_19

    const-string v3, ", ctts invalid"

    goto :goto_f

    :cond_19
    const-string v3, ""

    :goto_f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v12, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .end local v10    # "remainingSamplesInChunk":I
    .end local v37    # "offset":J
    .end local v40    # "isCttsValid":Z
    :goto_10
    move/from16 v32, v14

    move/from16 v37, v15

    move-object/from16 v3, v41

    move-wide/from16 v45, v42

    move v15, v9

    move v14, v13

    move-wide/from16 v40, v30

    move/from16 v30, v2

    move-object v2, v4

    move v4, v7

    move v13, v8

    move/from16 v31, v24

    move/from16 v24, v11

    .end local v7    # "maximumSize":I
    .end local v8    # "nextSynchronizationSampleIndex":I
    .end local v9    # "remainingTimestampDeltaChanges":I
    .end local v11    # "remainingSamplesAtTimestampDelta":I
    .end local v41    # "sizes":[I
    .end local v42    # "duration":J
    .local v2, "offsets":[J
    .local v3, "sizes":[I
    .local v4, "maximumSize":I
    .local v13, "nextSynchronizationSampleIndex":I
    .local v14, "sampleCount":I
    .local v15, "remainingTimestampDeltaChanges":I
    .local v24, "remainingSamplesAtTimestampDelta":I
    .local v30, "remainingSamplesAtTimestampOffset":I
    .local v31, "remainingTimestampOffsetChanges":I
    .local v32, "timestampOffset":I
    .local v37, "remainingSynchronizationSamples":I
    .local v40, "timestampTimeUnits":J
    .local v45, "duration":J
    :goto_11
    const-wide/32 v9, 0xf4240

    iget-wide v11, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v7, v45

    .end local v45    # "duration":J
    .local v7, "duration":J
    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    .line 621
    .end local v7    # "duration":J
    .local v9, "durationUs":J
    .restart local v45    # "duration":J
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v7, 0xf4240

    if-nez v0, :cond_1a

    .line 622
    iget-wide v11, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    invoke-static {v5, v7, v8, v11, v12}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 623
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-wide v7, v9

    .end local v9    # "durationUs":J
    .local v7, "durationUs":J
    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    .end local v7    # "durationUs":J
    .restart local v9    # "durationUs":J
    return-object v0

    .line 634
    :cond_1a
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    move/from16 v11, v21

    const-wide/16 v42, 0x0

    if-ne v0, v11, :cond_1e

    iget v0, v1, Landroidx/media3/extractor/mp4/Track;->type:I

    if-ne v0, v11, :cond_1e

    array-length v0, v5

    const/4 v11, 0x2

    if-lt v0, v11, :cond_1e

    .line 637
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v47, v0, v16

    .line 638
    .local v47, "editStartTime":J
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v49, v0, v16

    iget-wide v11, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    iget-wide v7, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 640
    move-wide/from16 v53, v7

    move-wide/from16 v51, v11

    invoke-static/range {v49 .. v54}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    add-long v49, v47, v7

    .line 642
    .local v49, "editEndTime":J
    move-object/from16 v44, v5

    .end local v5    # "timestamps":[J
    .local v44, "timestamps":[J
    invoke-static/range {v44 .. v50}, Landroidx/media3/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v0

    .end local v44    # "timestamps":[J
    .restart local v5    # "timestamps":[J
    if-eqz v0, :cond_1e

    .line 643
    sub-long v57, v45, v49

    .line 644
    .local v57, "paddingTimeUnits":J
    aget-wide v7, v5, v16

    sub-long v59, v47, v7

    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v7, v0

    iget-wide v11, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 645
    move-wide/from16 v61, v7

    move-wide/from16 v63, v11

    invoke-static/range {v59 .. v64}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    .line 647
    .local v11, "encoderDelay":J
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v7, v0

    move-object v0, v2

    move-object/from16 v38, v3

    .end local v2    # "offsets":[J
    .end local v3    # "sizes":[I
    .local v0, "offsets":[J
    .local v38, "sizes":[I
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 648
    move-wide/from16 v61, v2

    move-wide/from16 v59, v7

    invoke-static/range {v57 .. v62}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 649
    .local v2, "encoderPadding":J
    cmp-long v7, v11, v42

    if-nez v7, :cond_1c

    cmp-long v7, v2, v42

    if-eqz v7, :cond_1b

    goto :goto_12

    :cond_1b
    move-object v2, v0

    move-object/from16 v3, v38

    goto :goto_13

    :cond_1c
    :goto_12
    const-wide/32 v7, 0x7fffffff

    cmp-long v44, v11, v7

    if-gtz v44, :cond_1d

    cmp-long v7, v2, v7

    if-gtz v7, :cond_1d

    .line 652
    long-to-int v7, v11

    move-object/from16 v8, p2

    iput v7, v8, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 653
    long-to-int v7, v2

    iput v7, v8, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 654
    move-wide/from16 v51, v2

    .end local v2    # "encoderPadding":J
    .local v51, "encoderPadding":J
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-object/from16 v44, v6

    const-wide/32 v6, 0xf4240

    .end local v6    # "flags":[I
    .local v44, "flags":[I
    invoke-static {v5, v6, v7, v2, v3}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 655
    iget-object v2, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v59, v2, v16

    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 656
    const-wide/32 v61, 0xf4240

    move-wide/from16 v63, v2

    invoke-static/range {v59 .. v64}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 658
    .local v2, "editedDurationUs":J
    move-wide v7, v2

    move-object v2, v0

    .end local v0    # "offsets":[J
    .local v2, "offsets":[J
    .local v7, "editedDurationUs":J
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v3, v38

    move-object/from16 v6, v44

    .end local v38    # "sizes":[I
    .end local v44    # "flags":[I
    .restart local v3    # "sizes":[I
    .restart local v6    # "flags":[I
    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 649
    .end local v3    # "sizes":[I
    .end local v7    # "editedDurationUs":J
    .end local v51    # "encoderPadding":J
    .restart local v0    # "offsets":[J
    .local v2, "encoderPadding":J
    .restart local v38    # "sizes":[I
    :cond_1d
    move-wide/from16 v51, v2

    move-object/from16 v3, v38

    move-object v2, v0

    .line 664
    .end local v0    # "offsets":[J
    .end local v11    # "encoderDelay":J
    .end local v38    # "sizes":[I
    .end local v47    # "editStartTime":J
    .end local v49    # "editEndTime":J
    .end local v57    # "paddingTimeUnits":J
    .local v2, "offsets":[J
    .restart local v3    # "sizes":[I
    :cond_1e
    :goto_13
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_20

    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v7, v0, v16

    cmp-long v0, v7, v42

    if-nez v0, :cond_20

    .line 668
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v11, v0, v16

    .line 669
    .local v11, "editStartTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    array-length v7, v5

    if-ge v0, v7, :cond_1f

    .line 670
    aget-wide v7, v5, v0

    sub-long v47, v7, v11

    iget-wide v7, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 671
    const-wide/32 v49, 0xf4240

    move-wide/from16 v51, v7

    invoke-static/range {v47 .. v52}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    aput-wide v7, v5, v0

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 674
    .end local v0    # "i":I
    :cond_1f
    sub-long v47, v45, v11

    iget-wide v7, v1, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 675
    const-wide/32 v49, 0xf4240

    move-wide/from16 v51, v7

    invoke-static/range {v47 .. v52}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 676
    .end local v9    # "durationUs":J
    .local v7, "durationUs":J
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    move-object/from16 v38, v3

    move-object v3, v1

    move-object/from16 v1, v38

    move/from16 v38, v4

    move-object v4, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v6

    .end local v3    # "sizes":[I
    .end local v5    # "timestamps":[J
    .end local v6    # "flags":[I
    .local v0, "offsets":[J
    .local v1, "sizes":[I
    .local v2, "flags":[I
    .local v4, "timestamps":[J
    .local v38, "maximumSize":I
    return-object v5

    .line 664
    .end local v0    # "offsets":[J
    .end local v1    # "sizes":[I
    .end local v7    # "durationUs":J
    .end local v11    # "editStartTime":J
    .end local v38    # "maximumSize":I
    .local v2, "offsets":[J
    .restart local v3    # "sizes":[I
    .local v4, "maximumSize":I
    .restart local v5    # "timestamps":[J
    .restart local v6    # "flags":[I
    .restart local v9    # "durationUs":J
    :cond_20
    move-object v0, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    move/from16 v38, v4

    move-object v4, v5

    move-object v2, v6

    .line 681
    .end local v3    # "sizes":[I
    .end local v5    # "timestamps":[J
    .end local v6    # "flags":[I
    .restart local v0    # "offsets":[J
    .restart local v1    # "sizes":[I
    .local v2, "flags":[I
    .local v4, "timestamps":[J
    .restart local v38    # "maximumSize":I
    iget v5, v3, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_21

    const/4 v5, 0x1

    goto :goto_15

    :cond_21
    move/from16 v5, v16

    :goto_15
    move v11, v5

    .line 684
    .local v11, "omitClippedSample":Z
    const/4 v5, 0x0

    .line 685
    .local v5, "editedSampleCount":I
    const/4 v6, 0x0

    .line 686
    .local v6, "nextSampleIndex":I
    const/4 v7, 0x0

    .line 687
    .local v7, "copyMetadata":Z
    iget-object v8, v3, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    new-array v12, v8, [I

    .line 688
    .local v12, "startIndices":[I
    iget-object v8, v3, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    new-array v8, v8, [I

    .line 689
    .local v8, "endIndices":[I
    move/from16 v44, v5

    .end local v5    # "editedSampleCount":I
    .local v44, "editedSampleCount":I
    iget-object v5, v3, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v47, v5

    check-cast v47, [J

    .line 690
    .local v47, "editListMediaTimes":[J
    const/4 v5, 0x0

    move/from16 v72, v7

    move v7, v6

    move/from16 v6, v44

    move/from16 v44, v72

    .local v5, "i":I
    .local v6, "editedSampleCount":I
    .local v7, "nextSampleIndex":I
    .local v44, "copyMetadata":Z
    :goto_16
    move-object/from16 v48, v8

    .end local v8    # "endIndices":[I
    .local v48, "endIndices":[I
    iget-object v8, v3, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    if-ge v5, v8, :cond_26

    .line 691
    move-wide/from16 v49, v9

    .end local v9    # "durationUs":J
    .local v49, "durationUs":J
    aget-wide v8, v47, v5

    .line 692
    .local v8, "editMediaTime":J
    const-wide/16 v51, -0x1

    cmp-long v10, v8, v51

    if-eqz v10, :cond_25

    .line 693
    iget-object v10, v3, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v51, v10, v5

    move-object/from16 v57, v12

    move v10, v13

    .end local v12    # "startIndices":[I
    .end local v13    # "nextSynchronizationSampleIndex":I
    .local v10, "nextSynchronizationSampleIndex":I
    .local v57, "startIndices":[I
    iget-wide v12, v3, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v53, v12

    iget-wide v12, v3, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 694
    move-wide/from16 v55, v12

    invoke-static/range {v51 .. v56}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 703
    .local v12, "editDuration":J
    nop

    .line 704
    move/from16 v51, v5

    const/4 v5, 0x1

    .end local v5    # "i":I
    .local v51, "i":I
    invoke-static {v4, v8, v9, v5, v5}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v52

    aput v52, v57, v51

    .line 706
    move-wide/from16 v52, v8

    .end local v8    # "editMediaTime":J
    .local v52, "editMediaTime":J
    add-long v8, v52, v12

    .line 707
    move/from16 v5, v16

    invoke-static {v4, v8, v9, v11, v5}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result v8

    aput v8, v48, v51

    .line 712
    :goto_17
    aget v8, v57, v51

    aget v9, v48, v51

    if-ge v8, v9, :cond_22

    aget v8, v57, v51

    aget v8, v2, v8

    const/16 v21, 0x1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_23

    .line 718
    aget v8, v57, v51

    add-int/lit8 v8, v8, 0x1

    aput v8, v57, v51

    goto :goto_17

    .line 712
    :cond_22
    const/16 v21, 0x1

    .line 720
    :cond_23
    aget v8, v48, v51

    aget v9, v57, v51

    sub-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 721
    aget v8, v57, v51

    if-eq v7, v8, :cond_24

    move/from16 v8, v21

    goto :goto_18

    :cond_24
    move v8, v5

    :goto_18
    or-int v8, v44, v8

    .line 722
    .end local v44    # "copyMetadata":Z
    .local v8, "copyMetadata":Z
    aget v7, v48, v51

    move/from16 v44, v8

    goto :goto_19

    .line 692
    .end local v10    # "nextSynchronizationSampleIndex":I
    .end local v51    # "i":I
    .end local v52    # "editMediaTime":J
    .end local v57    # "startIndices":[I
    .restart local v5    # "i":I
    .local v8, "editMediaTime":J
    .local v12, "startIndices":[I
    .restart local v13    # "nextSynchronizationSampleIndex":I
    .restart local v44    # "copyMetadata":Z
    :cond_25
    move/from16 v51, v5

    move-wide/from16 v52, v8

    move-object/from16 v57, v12

    move v10, v13

    move/from16 v5, v16

    const/16 v21, 0x1

    .line 690
    .end local v5    # "i":I
    .end local v8    # "editMediaTime":J
    .end local v12    # "startIndices":[I
    .end local v13    # "nextSynchronizationSampleIndex":I
    .restart local v10    # "nextSynchronizationSampleIndex":I
    .restart local v51    # "i":I
    .restart local v57    # "startIndices":[I
    :goto_19
    add-int/lit8 v8, v51, 0x1

    move/from16 v16, v5

    move v5, v8

    move v13, v10

    move-object/from16 v8, v48

    move-wide/from16 v9, v49

    move-object/from16 v12, v57

    .end local v51    # "i":I
    .local v8, "i":I
    goto :goto_16

    .end local v8    # "i":I
    .end local v10    # "nextSynchronizationSampleIndex":I
    .end local v49    # "durationUs":J
    .end local v57    # "startIndices":[I
    .restart local v5    # "i":I
    .restart local v9    # "durationUs":J
    .restart local v12    # "startIndices":[I
    .restart local v13    # "nextSynchronizationSampleIndex":I
    :cond_26
    move/from16 v51, v5

    move-wide/from16 v49, v9

    move-object/from16 v57, v12

    move v10, v13

    move/from16 v5, v16

    const/16 v21, 0x1

    .line 725
    .end local v5    # "i":I
    .end local v9    # "durationUs":J
    .end local v12    # "startIndices":[I
    .end local v13    # "nextSynchronizationSampleIndex":I
    .restart local v10    # "nextSynchronizationSampleIndex":I
    .restart local v49    # "durationUs":J
    .restart local v57    # "startIndices":[I
    if-eq v6, v14, :cond_27

    goto :goto_1a

    :cond_27
    move/from16 v21, v5

    :goto_1a
    or-int v9, v44, v21

    .line 728
    .end local v44    # "copyMetadata":Z
    .local v9, "copyMetadata":Z
    if-eqz v9, :cond_28

    new-array v8, v6, [J

    goto :goto_1b

    :cond_28
    move-object v8, v0

    .line 729
    .local v8, "editedOffsets":[J
    :goto_1b
    if-eqz v9, :cond_29

    new-array v12, v6, [I

    goto :goto_1c

    :cond_29
    move-object v12, v1

    .line 730
    .local v12, "editedSizes":[I
    :goto_1c
    if-eqz v9, :cond_2a

    goto :goto_1d

    :cond_2a
    move/from16 v5, v38

    .line 731
    .local v5, "editedMaximumSize":I
    :goto_1d
    if-eqz v9, :cond_2b

    new-array v13, v6, [I

    goto :goto_1e

    :cond_2b
    move-object v13, v2

    .line 732
    .local v13, "editedFlags":[I
    :goto_1e
    move/from16 v16, v5

    .end local v5    # "editedMaximumSize":I
    .local v16, "editedMaximumSize":I
    new-array v5, v6, [J

    .line 733
    .local v5, "editedTimestamps":[J
    const-wide/16 v51, 0x0

    .line 734
    .local v51, "pts":J
    const/16 v21, 0x0

    .line 735
    .local v21, "sampleIndex":I
    const/16 v44, 0x0

    move/from16 v72, v44

    move-object/from16 v44, v4

    move/from16 v4, v72

    move/from16 v72, v21

    move/from16 v21, v9

    move/from16 v9, v72

    .local v4, "i":I
    .local v9, "sampleIndex":I
    .local v21, "copyMetadata":Z
    .local v44, "timestamps":[J
    :goto_1f
    move-object/from16 v58, v5

    .end local v5    # "editedTimestamps":[J
    .local v58, "editedTimestamps":[J
    iget-object v5, v3, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v5, v5

    if-ge v4, v5, :cond_30

    .line 736
    iget-object v5, v3, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v59, v5, v4

    .line 737
    .local v59, "editMediaTime":J
    aget v5, v57, v4

    .line 738
    .local v5, "startIndex":I
    move/from16 v61, v4

    .end local v4    # "i":I
    .local v61, "i":I
    aget v4, v48, v61

    .line 739
    .local v4, "endIndex":I
    if-eqz v21, :cond_2c

    .line 740
    move/from16 v62, v6

    .end local v6    # "editedSampleCount":I
    .local v62, "editedSampleCount":I
    sub-int v6, v4, v5

    .line 741
    .local v6, "count":I
    invoke-static {v0, v5, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    invoke-static {v1, v5, v12, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    invoke-static {v2, v5, v13, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20

    .line 739
    .end local v62    # "editedSampleCount":I
    .local v6, "editedSampleCount":I
    :cond_2c
    move/from16 v62, v6

    .line 745
    .end local v6    # "editedSampleCount":I
    .restart local v62    # "editedSampleCount":I
    :goto_20
    move v6, v5

    move-object/from16 v63, v0

    move/from16 v0, v16

    .end local v16    # "editedMaximumSize":I
    .local v0, "editedMaximumSize":I
    .local v6, "j":I
    .local v63, "offsets":[J
    :goto_21
    if-ge v6, v4, :cond_2f

    .line 746
    const-wide/32 v53, 0xf4240

    move-object/from16 v64, v1

    move-object/from16 v65, v2

    .end local v1    # "sizes":[I
    .end local v2    # "flags":[I
    .local v64, "sizes":[I
    .local v65, "flags":[I
    iget-wide v1, v3, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v55, v1

    invoke-static/range {v51 .. v56}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    .line 747
    .local v1, "ptsUs":J
    aget-wide v53, v44, v6

    sub-long v66, v53, v59

    move-wide/from16 v53, v1

    .end local v1    # "ptsUs":J
    .local v53, "ptsUs":J
    iget-wide v1, v3, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 748
    const-wide/32 v68, 0xf4240

    move-wide/from16 v70, v1

    invoke-static/range {v66 .. v71}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    .line 750
    .local v1, "timeInSegmentUs":J
    move/from16 v55, v4

    .end local v4    # "endIndex":I
    .local v55, "endIndex":I
    iget v4, v3, Landroidx/media3/extractor/mp4/Track;->type:I

    invoke-static {v4}, Landroidx/media3/extractor/mp4/AtomParsers;->canTrimSamplesWithTimestampChange(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 751
    move/from16 v56, v5

    move-wide/from16 v4, v42

    .end local v5    # "startIndex":I
    .local v56, "startIndex":I
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_22

    .line 750
    .end local v56    # "startIndex":I
    .restart local v5    # "startIndex":I
    :cond_2d
    move/from16 v56, v5

    move-wide/from16 v4, v42

    .line 753
    .end local v5    # "startIndex":I
    .restart local v56    # "startIndex":I
    :goto_22
    add-long v42, v53, v1

    aput-wide v42, v58, v9

    .line 754
    if-eqz v21, :cond_2e

    aget v4, v12, v9

    if-le v4, v0, :cond_2e

    .line 755
    aget v0, v64, v6

    .line 757
    :cond_2e
    nop

    .end local v1    # "timeInSegmentUs":J
    .end local v53    # "ptsUs":J
    add-int/lit8 v9, v9, 0x1

    .line 745
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v55

    move/from16 v5, v56

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    const-wide/16 v42, 0x0

    goto :goto_21

    .end local v55    # "endIndex":I
    .end local v56    # "startIndex":I
    .end local v64    # "sizes":[I
    .end local v65    # "flags":[I
    .local v1, "sizes":[I
    .restart local v2    # "flags":[I
    .restart local v4    # "endIndex":I
    .restart local v5    # "startIndex":I
    :cond_2f
    move-object/from16 v64, v1

    move-object/from16 v65, v2

    move/from16 v55, v4

    move/from16 v56, v5

    .line 759
    .end local v1    # "sizes":[I
    .end local v2    # "flags":[I
    .end local v4    # "endIndex":I
    .end local v5    # "startIndex":I
    .end local v6    # "j":I
    .restart local v55    # "endIndex":I
    .restart local v56    # "startIndex":I
    .restart local v64    # "sizes":[I
    .restart local v65    # "flags":[I
    iget-object v1, v3, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v4, v1, v61

    add-long v51, v51, v4

    .line 735
    .end local v55    # "endIndex":I
    .end local v56    # "startIndex":I
    .end local v59    # "editMediaTime":J
    add-int/lit8 v4, v61, 0x1

    move/from16 v16, v0

    move-object/from16 v5, v58

    move/from16 v6, v62

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    const-wide/16 v42, 0x0

    .end local v61    # "i":I
    .local v4, "i":I
    goto/16 :goto_1f

    .end local v62    # "editedSampleCount":I
    .end local v63    # "offsets":[J
    .end local v64    # "sizes":[I
    .end local v65    # "flags":[I
    .local v0, "offsets":[J
    .restart local v1    # "sizes":[I
    .restart local v2    # "flags":[I
    .local v6, "editedSampleCount":I
    .restart local v16    # "editedMaximumSize":I
    :cond_30
    move-object/from16 v63, v0

    move-object/from16 v64, v1

    move-object/from16 v65, v2

    move/from16 v61, v4

    move/from16 v62, v6

    .line 761
    .end local v0    # "offsets":[J
    .end local v1    # "sizes":[I
    .end local v2    # "flags":[I
    .end local v4    # "i":I
    .end local v6    # "editedSampleCount":I
    .restart local v62    # "editedSampleCount":I
    .restart local v63    # "offsets":[J
    .restart local v64    # "sizes":[I
    .restart local v65    # "flags":[I
    iget-wide v0, v3, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 762
    const-wide/32 v53, 0xf4240

    move-wide/from16 v55, v0

    invoke-static/range {v51 .. v56}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 763
    .local v0, "editedDurationUs":J
    move v6, v7

    move-object v2, v8

    move-wide v7, v0

    .end local v0    # "editedDurationUs":J
    .end local v8    # "editedOffsets":[J
    .local v2, "editedOffsets":[J
    .local v6, "nextSampleIndex":I
    .local v7, "editedDurationUs":J
    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v1, v3

    move-object v3, v12

    move/from16 v4, v16

    move-object/from16 v5, v58

    move v12, v6

    move-object v6, v13

    .end local v13    # "editedFlags":[I
    .end local v16    # "editedMaximumSize":I
    .end local v58    # "editedTimestamps":[J
    .local v3, "editedSizes":[I
    .local v4, "editedMaximumSize":I
    .local v5, "editedTimestamps":[J
    .local v6, "editedFlags":[I
    .local v12, "nextSampleIndex":I
    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 402
    .end local v3    # "editedSizes":[I
    .end local v4    # "editedMaximumSize":I
    .end local v5    # "editedTimestamps":[J
    .end local v6    # "editedFlags":[I
    .end local v7    # "editedDurationUs":J
    .end local v9    # "sampleIndex":I
    .end local v10    # "nextSynchronizationSampleIndex":I
    .end local v12    # "nextSampleIndex":I
    .end local v14    # "sampleCount":I
    .end local v15    # "remainingTimestampDeltaChanges":I
    .end local v17    # "chunkOffsets":Landroidx/media3/common/util/ParsableByteArray;
    .end local v18    # "cttsAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .end local v19    # "stss":Landroidx/media3/common/util/ParsableByteArray;
    .end local v20    # "chunkIterator":Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v21    # "copyMetadata":Z
    .end local v22    # "stszAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .end local v23    # "sampleSizeBox":Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v24    # "remainingSamplesAtTimestampDelta":I
    .end local v25    # "stsc":Landroidx/media3/common/util/ParsableByteArray;
    .end local v26    # "chunkOffsetsAreLongs":Z
    .end local v27    # "ctts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v28    # "chunkOffsetsAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .end local v29    # "rechunkFixedSizeSamples":Z
    .end local v30    # "remainingSamplesAtTimestampOffset":I
    .end local v31    # "remainingTimestampOffsetChanges":I
    .end local v32    # "timestampOffset":I
    .end local v33    # "stts":Landroidx/media3/common/util/ParsableByteArray;
    .end local v34    # "stssAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .end local v35    # "sampleMimeType":Ljava/lang/String;
    .end local v36    # "fixedSampleSize":I
    .end local v37    # "remainingSynchronizationSamples":I
    .end local v38    # "maximumSize":I
    .end local v39    # "timestampDeltaInTimeUnits":I
    .end local v40    # "timestampTimeUnits":J
    .end local v44    # "timestamps":[J
    .end local v45    # "duration":J
    .end local v47    # "editListMediaTimes":[J
    .end local v48    # "endIndices":[I
    .end local v49    # "durationUs":J
    .end local v51    # "pts":J
    .end local v57    # "startIndices":[I
    .end local v62    # "editedSampleCount":I
    .end local v63    # "offsets":[J
    .end local v64    # "sizes":[I
    .end local v65    # "flags":[I
    .local v2, "stz2Atom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .local v11, "stszAtom":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    :cond_31
    const-string v1, "Track has no sample table size information"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .locals 11
    .param p0, "stsd"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "rotationDegrees"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p5, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 958
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 959
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 960
    .local v10, "numberOfEntries":I
    new-instance v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v6, v10}, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 961
    .local v6, "out":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_9

    .line 962
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 963
    .local v2, "childStartPosition":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 964
    .local v3, "childAtomSize":I
    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v5, "childAtomSize must be positive"

    invoke-static {v1, v5}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 965
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 966
    .local v1, "childAtomType":I
    const v5, 0x61766331

    if-eq v1, v5, :cond_7

    const v5, 0x61766333

    if-eq v1, v5, :cond_7

    const v5, 0x656e6376

    if-eq v1, v5, :cond_7

    const v5, 0x6d317620

    if-eq v1, v5, :cond_7

    const v5, 0x6d703476

    if-eq v1, v5, :cond_7

    const v5, 0x68766331

    if-eq v1, v5, :cond_7

    const v5, 0x68657631

    if-eq v1, v5, :cond_7

    const v5, 0x73323633

    if-eq v1, v5, :cond_7

    const v5, 0x48323633

    if-eq v1, v5, :cond_7

    const v5, 0x76703038

    if-eq v1, v5, :cond_7

    const v5, 0x76703039

    if-eq v1, v5, :cond_7

    const v5, 0x61763031

    if-eq v1, v5, :cond_7

    const v5, 0x64766176

    if-eq v1, v5, :cond_7

    const v5, 0x64766131

    if-eq v1, v5, :cond_7

    const v5, 0x64766865

    if-eq v1, v5, :cond_7

    const v5, 0x64766831

    if-ne v1, v5, :cond_1

    goto/16 :goto_4

    .line 992
    :cond_1
    const v5, 0x6d703461

    if-eq v1, v5, :cond_6

    const v5, 0x656e6361

    if-eq v1, v5, :cond_6

    const v5, 0x61632d33

    if-eq v1, v5, :cond_6

    const v5, 0x65632d33

    if-eq v1, v5, :cond_6

    const v5, 0x61632d34

    if-eq v1, v5, :cond_6

    const v5, 0x6d6c7061

    if-eq v1, v5, :cond_6

    const v5, 0x64747363

    if-eq v1, v5, :cond_6

    const v5, 0x64747365

    if-eq v1, v5, :cond_6

    const v5, 0x64747368

    if-eq v1, v5, :cond_6

    const v5, 0x6474736c

    if-eq v1, v5, :cond_6

    const v5, 0x64747378

    if-eq v1, v5, :cond_6

    const v5, 0x73616d72

    if-eq v1, v5, :cond_6

    const v5, 0x73617762

    if-eq v1, v5, :cond_6

    const v5, 0x6c70636d

    if-eq v1, v5, :cond_6

    const v5, 0x736f7774

    if-eq v1, v5, :cond_6

    const v5, 0x74776f73

    if-eq v1, v5, :cond_6

    const v5, 0x2e6d7032

    if-eq v1, v5, :cond_6

    const v5, 0x2e6d7033

    if-eq v1, v5, :cond_6

    const v5, 0x6d686131

    if-eq v1, v5, :cond_6

    const v5, 0x6d686d31

    if-eq v1, v5, :cond_6

    const v5, 0x616c6163

    if-eq v1, v5, :cond_6

    const v5, 0x616c6177

    if-eq v1, v5, :cond_6

    const v5, 0x756c6177

    if-eq v1, v5, :cond_6

    const v5, 0x4f707573

    if-eq v1, v5, :cond_6

    const v5, 0x664c6143

    if-ne v1, v5, :cond_2

    goto :goto_3

    .line 1028
    :cond_2
    const v5, 0x54544d4c

    if-eq v1, v5, :cond_5

    const v5, 0x74783367

    if-eq v1, v5, :cond_5

    const v5, 0x77767474

    if-eq v1, v5, :cond_5

    const v5, 0x73747070

    if-eq v1, v5, :cond_5

    const v5, 0x63363038

    if-ne v1, v5, :cond_3

    goto :goto_2

    .line 1035
    :cond_3
    const v5, 0x6d657474

    if-ne v1, v5, :cond_4

    .line 1036
    invoke-static {p0, v1, v2, p1, v6}, Landroidx/media3/extractor/mp4/AtomParsers;->parseMetaDataSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_5

    .line 1037
    :cond_4
    const v5, 0x63616d6d

    if-ne v1, v5, :cond_8

    .line 1038
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1040
    invoke-virtual {v5, p1}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1041
    const-string v7, "application/x-camera-motion"

    invoke-virtual {v5, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 1042
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    iput-object v5, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_5

    .line 1033
    :cond_5
    :goto_2
    move-object v0, p0

    move v4, p1

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroidx/media3/extractor/mp4/AtomParsers;->parseTextSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_5

    .line 1017
    :cond_6
    :goto_3
    move-object v0, p0

    move v4, p1

    move-object v5, p3

    move-object v7, p4

    move v9, v8

    move-object v8, v6

    move/from16 v6, p5

    .end local v6    # "out":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .local v8, "out":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .local v9, "i":I
    invoke-static/range {v0 .. v9}, Landroidx/media3/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;I)V

    move-object v6, v8

    move v8, v9

    .end local v9    # "i":I
    .restart local v6    # "out":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .local v8, "i":I
    goto :goto_5

    .line 982
    :cond_7
    :goto_4
    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v7, v6

    move-object v6, p4

    .end local v6    # "out":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .local v7, "out":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    invoke-static/range {v0 .. v8}, Landroidx/media3/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIIILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;I)V

    move-object v6, v7

    .line 1044
    .end local v7    # "out":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .restart local v6    # "out":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    :cond_8
    :goto_5
    add-int v4, v2, v3

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 961
    .end local v1    # "childAtomType":I
    .end local v2    # "childStartPosition":I
    .end local v3    # "childAtomSize":I
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1046
    .end local v8    # "i":I
    :cond_9
    return-object v6
.end method

.method private static parseTextSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;)V
    .locals 7
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "atomSize"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "out"    # Landroidx/media3/extractor/mp4/AtomParsers$StsdData;

    .line 1057
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1060
    const/4 v0, 0x0

    .line 1061
    .local v0, "initializationData":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<[B>;"
    const-wide v1, 0x7fffffffffffffffL

    .line 1064
    .local v1, "subsampleOffsetUs":J
    const v3, 0x54544d4c

    if-ne p1, v3, :cond_0

    .line 1065
    const-string v3, "application/ttml+xml"

    .local v3, "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1066
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    const v3, 0x74783367

    if-ne p1, v3, :cond_1

    .line 1067
    const-string v3, "application/x-quicktime-tx3g"

    .line 1068
    .restart local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v4, p3, -0x8

    add-int/lit8 v4, v4, -0x8

    .line 1069
    .local v4, "sampleDescriptionLength":I
    new-array v5, v4, [B

    .line 1070
    .local v5, "sampleDescriptionData":[B
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1071
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1072
    .end local v4    # "sampleDescriptionLength":I
    .end local v5    # "sampleDescriptionData":[B
    goto :goto_0

    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_1
    const v3, 0x77767474

    if-ne p1, v3, :cond_2

    .line 1073
    const-string v3, "application/x-mp4-vtt"

    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1074
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_2
    const v3, 0x73747070

    if-ne p1, v3, :cond_3

    .line 1075
    const-string v3, "application/ttml+xml"

    .line 1076
    .restart local v3    # "mimeType":Ljava/lang/String;
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1077
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    const v3, 0x63363038

    if-ne p1, v3, :cond_4

    .line 1079
    const-string v3, "application/x-mp4-cea-608"

    .line 1080
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/4 v4, 0x1

    iput v4, p6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 1086
    :goto_0
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1088
    invoke-virtual {v4, p4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1089
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1090
    invoke-virtual {v4, p5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1091
    invoke-virtual {v4, v1, v2}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1092
    invoke-virtual {v4, v0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 1093
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    iput-object v4, p6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    .line 1094
    return-void

    .line 1083
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private static parseTkhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;
    .locals 15
    .param p0, "tkhd"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 837
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 838
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 839
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 841
    .local v2, "version":I
    const/16 v3, 0x10

    if-nez v2, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 842
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 844
    .local v4, "trackId":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 845
    const/4 v6, 0x1

    .line 846
    .local v6, "durationUnknown":Z
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 847
    .local v7, "durationPosition":I
    if-nez v2, :cond_1

    move v0, v5

    .line 848
    .local v0, "durationByteCount":I
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_3

    .line 849
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v9

    add-int v10, v7, v8

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 850
    const/4 v6, 0x0

    .line 851
    goto :goto_2

    .line 848
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 855
    .end local v8    # "i":I
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 856
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 857
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .local v8, "duration":J
    goto :goto_4

    .line 859
    .end local v8    # "duration":J
    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    .line 860
    .restart local v8    # "duration":J
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_6

    .line 863
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 867
    :cond_6
    :goto_4
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 868
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 869
    .local v3, "a00":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 870
    .local v10, "a01":I
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 871
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 872
    .local v5, "a10":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 875
    .local v11, "a11":I
    const/high16 v12, 0x10000

    .line 876
    .local v12, "fixedOne":I
    if-nez v3, :cond_7

    if-ne v10, v12, :cond_7

    neg-int v13, v12

    if-ne v5, v13, :cond_7

    if-nez v11, :cond_7

    .line 877
    const/16 v13, 0x5a

    .local v13, "rotationDegrees":I
    goto :goto_5

    .line 878
    .end local v13    # "rotationDegrees":I
    :cond_7
    if-nez v3, :cond_8

    neg-int v13, v12

    if-ne v10, v13, :cond_8

    if-ne v5, v12, :cond_8

    if-nez v11, :cond_8

    .line 879
    const/16 v13, 0x10e

    .restart local v13    # "rotationDegrees":I
    goto :goto_5

    .line 880
    .end local v13    # "rotationDegrees":I
    :cond_8
    neg-int v13, v12

    if-ne v3, v13, :cond_9

    if-nez v10, :cond_9

    if-nez v5, :cond_9

    neg-int v13, v12

    if-ne v11, v13, :cond_9

    .line 881
    const/16 v13, 0xb4

    .restart local v13    # "rotationDegrees":I
    goto :goto_5

    .line 884
    .end local v13    # "rotationDegrees":I
    :cond_9
    const/4 v13, 0x0

    .line 887
    .restart local v13    # "rotationDegrees":I
    :goto_5
    new-instance v14, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {v14, v4, v8, v9, v13}, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v14
.end method

.method private static parseTrak(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/mp4/Atom$LeafAtom;JLandroidx/media3/common/DrmInitData;ZZ)Landroidx/media3/extractor/mp4/Track;
    .locals 28
    .param p0, "trak"    # Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 316
    move-object/from16 v0, p0

    const v1, 0x6d646961

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 318
    .local v1, "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    nop

    .line 319
    const v2, 0x68646c72    # 4.3148E24f

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers;->parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    move-result v5

    .line 320
    .local v5, "trackType":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v5, v2, :cond_0

    .line 321
    return-object v3

    .line 324
    :cond_0
    const v2, 0x746b6864

    invoke-virtual {v0, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers;->parseTkhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v2

    .line 325
    .local v2, "tkhdData":Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 326
    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;->access$000(Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-wide v10, v8

    .end local p2    # "duration":J
    .local v8, "duration":J
    goto :goto_0

    .line 325
    .end local v8    # "duration":J
    .restart local p2    # "duration":J
    :cond_1
    move-wide/from16 v10, p2

    .line 328
    .end local p2    # "duration":J
    .local v10, "duration":J
    :goto_0
    move-object/from16 v4, p1

    iget-object v8, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v8}, Landroidx/media3/extractor/mp4/AtomParsers;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v8

    iget-wide v14, v8, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    .line 330
    .local v14, "movieTimescale":J
    cmp-long v6, v10, v6

    if-nez v6, :cond_2

    .line 331
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v18, v10

    move-wide v10, v6

    .local v6, "durationUs":J
    goto :goto_1

    .line 333
    .end local v6    # "durationUs":J
    :cond_2
    const-wide/32 v12, 0xf4240

    invoke-static/range {v10 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    move-wide/from16 v18, v10

    move-wide v10, v6

    .line 335
    .local v10, "durationUs":J
    .local v18, "duration":J
    :goto_1
    nop

    .line 337
    const v6, 0x6d696e66

    invoke-virtual {v1, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 338
    const v7, 0x7374626c

    invoke-virtual {v6, v7}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    .line 336
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 340
    .local v6, "stbl":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    nop

    .line 341
    const v7, 0x6d646864

    invoke-virtual {v1, v7}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v7, v7, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v7}, Landroidx/media3/extractor/mp4/AtomParsers;->parseMdhd(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v7

    .line 342
    .local v7, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    const v8, 0x73747364

    invoke-virtual {v6, v8}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    .line 343
    .local v8, "stsd":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    if-eqz v8, :cond_7

    .line 347
    iget-object v9, v8, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 350
    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;->access$100(Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v21

    .line 351
    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;->access$200(Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v22

    iget-object v12, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v12

    check-cast v23, Ljava/lang/String;

    .line 348
    move-object/from16 v24, p4

    move/from16 v25, p6

    move-object/from16 v20, v9

    invoke-static/range {v20 .. v25}, Landroidx/media3/extractor/mp4/AtomParsers;->parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/AtomParsers$StsdData;

    move-result-object v9

    .line 355
    .local v9, "stsdData":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    const/4 v12, 0x0

    .line 356
    .local v12, "editListDurations":[J
    const/4 v13, 0x0

    .line 357
    .local v13, "editListMediaTimes":[J
    if-nez p5, :cond_5

    .line 358
    const v3, 0x65647473

    invoke-virtual {v0, v3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    .line 359
    .local v3, "edtsAtom":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    if-eqz v3, :cond_4

    .line 360
    invoke-static {v3}, Landroidx/media3/extractor/mp4/AtomParsers;->parseEdts(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v0

    .line 361
    .local v0, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    if-eqz v0, :cond_3

    .line 362
    move-object/from16 v20, v1

    .end local v1    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .local v20, "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, [J

    .line 363
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, [J

    move-object/from16 v17, v13

    goto :goto_3

    .line 361
    .end local v20    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .restart local v1    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    :cond_3
    move-object/from16 v20, v1

    .end local v1    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .restart local v20    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    goto :goto_2

    .line 359
    .end local v0    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .end local v20    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .restart local v1    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    :cond_4
    move-object/from16 v20, v1

    .end local v1    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .restart local v20    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    goto :goto_2

    .line 357
    .end local v3    # "edtsAtom":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .end local v20    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .restart local v1    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    :cond_5
    move-object/from16 v20, v1

    .line 367
    .end local v1    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .restart local v20    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    :goto_2
    move-object/from16 v17, v13

    .end local v13    # "editListMediaTimes":[J
    .local v17, "editListMediaTimes":[J
    :goto_3
    iget-object v0, v9, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    if-nez v0, :cond_6

    .line 368
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v16, v12

    const/4 v3, 0x0

    goto :goto_4

    .line 369
    :cond_6
    new-instance v3, Landroidx/media3/extractor/mp4/Track;

    .line 370
    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;->access$100(Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v4

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 372
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v16, v12

    .end local v12    # "editListDurations":[J
    .local v16, "editListDurations":[J
    iget-object v12, v9, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    iget v13, v9, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    move-wide/from16 v21, v14

    .end local v14    # "movieTimescale":J
    .local v21, "movieTimescale":J
    iget-object v14, v9, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget v15, v9, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-wide/from16 v26, v0

    move-object v0, v6

    move-object v1, v7

    move-wide/from16 v6, v26

    move-wide/from16 v26, v21

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-wide/from16 v8, v26

    .end local v6    # "stbl":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .end local v7    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v9    # "stsdData":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .local v0, "stbl":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .local v1, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local v8, "movieTimescale":J
    .local v21, "stsd":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .local v22, "stsdData":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    invoke-direct/range {v3 .. v17}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    move-wide v14, v8

    .line 367
    .end local v8    # "movieTimescale":J
    .restart local v14    # "movieTimescale":J
    :goto_4
    return-object v3

    .line 344
    .end local v0    # "stbl":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .end local v16    # "editListDurations":[J
    .end local v17    # "editListMediaTimes":[J
    .end local v20    # "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .end local v21    # "stsd":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    .end local v22    # "stsdData":Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .local v1, "mdia":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .restart local v6    # "stbl":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .restart local v7    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local v8, "stsd":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    :cond_7
    const-string v3, "Malformed sample table (stbl) missing sample description (stsd)"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3
.end method

.method public static parseTraks(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .locals 10
    .param p0, "moov"    # Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .param p1, "gaplessInfoHolder"    # Landroidx/media3/extractor/GaplessInfoHolder;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/mp4/Atom$ContainerAtom;",
            "Landroidx/media3/extractor/GaplessInfoHolder;",
            "J",
            "Landroidx/media3/common/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/extractor/mp4/Track;",
            "Landroidx/media3/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 129
    .local p7, "modifyTrackFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/Track;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 131
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 132
    .local v3, "atom":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    iget v2, v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->type:I

    const v4, 0x7472616b

    if-eq v2, v4, :cond_0

    .line 133
    move-object/from16 v4, p7

    goto :goto_1

    .line 136
    :cond_0
    nop

    .line 140
    const v2, 0x6d766864

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 138
    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v3 .. v9}, Landroidx/media3/extractor/mp4/AtomParsers;->parseTrak(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/mp4/Atom$LeafAtom;JLandroidx/media3/common/DrmInitData;ZZ)Landroidx/media3/extractor/mp4/Track;

    move-result-object v2

    .line 137
    move-object/from16 v4, p7

    invoke-interface {v4, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Track;

    .line 145
    .local v2, "track":Landroidx/media3/extractor/mp4/Track;
    if-nez v2, :cond_1

    .line 146
    goto :goto_1

    .line 148
    :cond_1
    nop

    .line 151
    const v5, 0x6d646961

    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 152
    const v6, 0x6d696e66

    invoke-virtual {v5, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    .line 150
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 153
    const v6, 0x7374626c

    invoke-virtual {v5, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    .line 149
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 154
    .local v5, "stblAtom":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    invoke-static {v2, v5, p1}, Landroidx/media3/extractor/mp4/AtomParsers;->parseStbl(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;)Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-result-object v6

    .line 155
    .local v6, "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v2    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v3    # "atom":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .end local v5    # "stblAtom":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .end local v6    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v4, p7

    .line 157
    .end local v1    # "i":I
    return-object v0
.end method

.method public static parseUdta(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)Landroidx/media3/common/Metadata;
    .locals 7
    .param p0, "udtaAtom"    # Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 167
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 168
    .local v0, "udtaData":Landroidx/media3/common/util/ParsableByteArray;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 169
    new-instance v2, Landroidx/media3/common/Metadata;

    const/4 v3, 0x0

    new-array v3, v3, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v2, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 170
    .local v2, "metadata":Landroidx/media3/common/Metadata;
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v1, :cond_3

    .line 171
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 172
    .local v3, "atomPosition":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 173
    .local v4, "atomSize":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 174
    .local v5, "atomType":I
    const v6, 0x6d657461

    if-ne v5, v6, :cond_0

    .line 175
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 176
    add-int v6, v3, v4

    .line 177
    invoke-static {v0, v6}, Landroidx/media3/extractor/mp4/AtomParsers;->parseUdtaMeta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    goto :goto_1

    .line 178
    :cond_0
    const v6, 0x736d7461

    if-ne v5, v6, :cond_1

    .line 179
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 180
    add-int v6, v3, v4

    .line 182
    invoke-static {v0, v6}, Landroidx/media3/extractor/mp4/SmtaAtomUtil;->parseSmta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v6

    .line 181
    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    goto :goto_1

    .line 183
    :cond_1
    const v6, -0x56878686

    if-ne v5, v6, :cond_2

    .line 184
    invoke-static {v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseXyz(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    .line 186
    :cond_2
    :goto_1
    add-int v6, v3, v4

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 187
    .end local v3    # "atomPosition":I
    .end local v4    # "atomSize":I
    .end local v5    # "atomType":I
    goto :goto_0

    .line 188
    :cond_3
    return-object v2
.end method

.method private static parseUdtaMeta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 4
    .param p0, "meta"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 781
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 782
    invoke-static {p0}, Landroidx/media3/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 783
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 784
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 785
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 786
    .local v1, "atomSize":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 787
    .local v2, "atomType":I
    const v3, 0x696c7374

    if-ne v2, v3, :cond_0

    .line 788
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 789
    add-int v3, v0, v1

    invoke-static {p0, v3}, Landroidx/media3/extractor/mp4/AtomParsers;->parseIlst(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v3

    return-object v3

    .line 791
    :cond_0
    add-int v3, v0, v1

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 792
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 793
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIIILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 38
    .param p0, "parent"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "rotationDegrees"    # I
    .param p6, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p7, "out"    # Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .param p8, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1109
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1111
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1112
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1113
    .local v5, "width":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 1114
    .local v6, "height":I
    const/4 v7, 0x0

    .line 1115
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1117
    .local v8, "pixelWidthHeightRatio":F
    const/16 v9, 0x8

    .line 1118
    .local v9, "bitdepthLuma":I
    const/16 v10, 0x8

    .line 1119
    .local v10, "bitdepthChroma":I
    const/16 v11, 0x32

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1121
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v11

    .line 1122
    .local v11, "childPosition":I
    const v12, 0x656e6376

    move/from16 v14, p1

    if-ne v14, v12, :cond_2

    .line 1124
    nop

    .line 1125
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v12

    .line 1126
    .local v12, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v12, :cond_1

    .line 1127
    iget-object v15, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1129
    .end local p1    # "atomType":I
    .local v14, "atomType":I
    if-nez v3, :cond_0

    .line 1130
    const/4 v15, 0x0

    goto :goto_0

    .line 1131
    :cond_0
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v15, v15, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v15}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v15

    :goto_0
    nop

    .line 1132
    .end local p6    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v15, "drmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v3, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v13, v3, p8

    goto :goto_1

    .line 1126
    .end local v14    # "atomType":I
    .end local v15    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local p1    # "atomType":I
    .restart local p6    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :cond_1
    move-object v15, v3

    .line 1134
    .end local p1    # "atomType":I
    .end local p6    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v14    # "atomType":I
    .restart local v15    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :goto_1
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 1122
    .end local v12    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    .end local v14    # "atomType":I
    .end local v15    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local p1    # "atomType":I
    .restart local p6    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :cond_2
    move-object v15, v3

    .line 1141
    .end local p1    # "atomType":I
    .end local p6    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v14    # "atomType":I
    .restart local v15    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :goto_2
    const/4 v3, 0x0

    .line 1142
    .local v3, "mimeType":Ljava/lang/String;
    const v12, 0x6d317620

    if-ne v14, v12, :cond_3

    .line 1143
    const-string/jumbo v3, "video/mpeg"

    goto :goto_3

    .line 1144
    :cond_3
    const v12, 0x48323633

    if-ne v14, v12, :cond_4

    .line 1145
    const-string/jumbo v3, "video/3gpp"

    .line 1148
    :cond_4
    :goto_3
    const/4 v12, 0x0

    .line 1149
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v13, 0x0

    .line 1150
    .local v13, "codecs":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1151
    .local v17, "projectionData":[B
    const/16 v18, -0x1

    .line 1152
    .local v18, "stereoMode":I
    const/16 v19, 0x0

    .line 1155
    .local v19, "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    const/16 v20, -0x1

    .line 1156
    .local v20, "colorSpace":I
    const/16 v21, -0x1

    .line 1157
    .local v21, "colorRange":I
    const/16 v22, -0x1

    .line 1159
    .local v22, "colorTransfer":I
    const/16 v23, 0x0

    move/from16 p1, v7

    move-object/from16 v1, v17

    move/from16 v7, v18

    move/from16 v18, v9

    move/from16 v17, v10

    move/from16 v10, v20

    move/from16 v20, v21

    move/from16 v9, v22

    .line 1161
    .end local v21    # "colorRange":I
    .end local v22    # "colorTransfer":I
    .local v1, "projectionData":[B
    .local v7, "stereoMode":I
    .local v9, "colorTransfer":I
    .local v10, "colorSpace":I
    .local v17, "bitdepthChroma":I
    .local v18, "bitdepthLuma":I
    .local v20, "colorRange":I
    .local v23, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local p1, "pixelWidthHeightRatioFromPasp":Z
    :goto_4
    move-object/from16 v21, v15

    .end local v15    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v21, "drmInitData":Landroidx/media3/common/DrmInitData;
    sub-int v15, v11, p2

    if-ge v15, v2, :cond_29

    .line 1162
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1163
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 1164
    .local v15, "childStartPosition":I
    move/from16 p6, v11

    .end local v11    # "childPosition":I
    .local p6, "childPosition":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 1165
    .local v11, "childAtomSize":I
    if-nez v11, :cond_5

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v22

    move-object/from16 v24, v12

    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v24, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    sub-int v12, v22, p2

    if-ne v12, v2, :cond_6

    .line 1167
    move-object/from16 v28, v1

    move-object/from16 v35, v3

    move/from16 v31, v5

    move/from16 v30, v6

    move/from16 v26, v7

    move/from16 v29, v8

    move-object/from16 v32, v13

    move/from16 v27, v14

    const/4 v7, 0x0

    goto/16 :goto_1a

    .line 1165
    .end local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_5
    move-object/from16 v24, v12

    .line 1169
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_6
    if-lez v11, :cond_7

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    :goto_5
    const-string v2, "childAtomSize must be positive"

    invoke-static {v12, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1170
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1171
    .local v2, "childAtomType":I
    const v12, 0x61766343

    if-ne v2, v12, :cond_a

    .line 1172
    if-nez v3, :cond_8

    const/4 v12, 0x1

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    move/from16 v26, v7

    const/4 v7, 0x0

    .end local v7    # "stereoMode":I
    .local v26, "stereoMode":I
    invoke-static {v12, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1173
    const-string/jumbo v3, "video/avc"

    .line 1174
    add-int/lit8 v7, v15, 0x8

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1175
    invoke-static {v0}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v7

    .line 1176
    .local v7, "avcConfig":Landroidx/media3/extractor/AvcConfig;
    iget-object v12, v7, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 1177
    .end local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v22, v3

    .end local v3    # "mimeType":Ljava/lang/String;
    .local v22, "mimeType":Ljava/lang/String;
    iget v3, v7, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v3, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 1178
    if-nez p1, :cond_9

    .line 1179
    iget v8, v7, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    .line 1181
    :cond_9
    iget-object v3, v7, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 1182
    .end local v13    # "codecs":Ljava/lang/String;
    .local v3, "codecs":Ljava/lang/String;
    iget v10, v7, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    .line 1183
    iget v13, v7, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    .line 1184
    .end local v20    # "colorRange":I
    .local v13, "colorRange":I
    iget v9, v7, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    .line 1185
    move-object/from16 v24, v3

    .end local v3    # "codecs":Ljava/lang/String;
    .local v24, "codecs":Ljava/lang/String;
    iget v3, v7, Landroidx/media3/extractor/AvcConfig;->bitdepthLuma:I

    .line 1186
    .end local v18    # "bitdepthLuma":I
    .local v3, "bitdepthLuma":I
    iget v7, v7, Landroidx/media3/extractor/AvcConfig;->bitdepthChroma:I

    .line 1187
    .end local v17    # "bitdepthChroma":I
    .local v7, "bitdepthChroma":I
    move/from16 v18, v3

    move/from16 v31, v5

    move/from16 v30, v6

    move/from16 v17, v7

    move/from16 v20, v13

    move/from16 v27, v14

    move-object/from16 v35, v22

    move-object/from16 v13, v24

    const/4 v7, 0x0

    move/from16 v3, p1

    goto/16 :goto_19

    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v26    # "stereoMode":I
    .local v3, "mimeType":Ljava/lang/String;
    .local v7, "stereoMode":I
    .local v13, "codecs":Ljava/lang/String;
    .restart local v17    # "bitdepthChroma":I
    .restart local v18    # "bitdepthLuma":I
    .restart local v20    # "colorRange":I
    .local v24, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_a
    move/from16 v26, v7

    .end local v7    # "stereoMode":I
    .restart local v26    # "stereoMode":I
    const v7, 0x68766343

    if-ne v2, v7, :cond_d

    .line 1188
    if-nez v3, :cond_b

    const/4 v12, 0x1

    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    :goto_7
    const/4 v7, 0x0

    invoke-static {v12, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1189
    const-string/jumbo v3, "video/hevc"

    .line 1190
    add-int/lit8 v7, v15, 0x8

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1191
    invoke-static {v0}, Landroidx/media3/extractor/HevcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v7

    .line 1192
    .local v7, "hevcConfig":Landroidx/media3/extractor/HevcConfig;
    iget-object v12, v7, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 1193
    .end local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v22, v3

    .end local v3    # "mimeType":Ljava/lang/String;
    .restart local v22    # "mimeType":Ljava/lang/String;
    iget v3, v7, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput v3, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 1194
    if-nez p1, :cond_c

    .line 1195
    iget v8, v7, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    .line 1197
    :cond_c
    iget-object v3, v7, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 1198
    .end local v13    # "codecs":Ljava/lang/String;
    .local v3, "codecs":Ljava/lang/String;
    iget v10, v7, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    .line 1199
    iget v13, v7, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    .line 1200
    .end local v20    # "colorRange":I
    .local v13, "colorRange":I
    iget v9, v7, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    .line 1201
    move-object/from16 v24, v3

    .end local v3    # "codecs":Ljava/lang/String;
    .local v24, "codecs":Ljava/lang/String;
    iget v3, v7, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    .line 1202
    .end local v18    # "bitdepthLuma":I
    .local v3, "bitdepthLuma":I
    iget v7, v7, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 1203
    .end local v17    # "bitdepthChroma":I
    .local v7, "bitdepthChroma":I
    move/from16 v18, v3

    move/from16 v31, v5

    move/from16 v30, v6

    move/from16 v17, v7

    move/from16 v20, v13

    move/from16 v27, v14

    move-object/from16 v35, v22

    move-object/from16 v13, v24

    const/4 v7, 0x0

    move/from16 v3, p1

    goto/16 :goto_19

    .end local v7    # "bitdepthChroma":I
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v22    # "mimeType":Ljava/lang/String;
    .local v3, "mimeType":Ljava/lang/String;
    .local v13, "codecs":Ljava/lang/String;
    .restart local v17    # "bitdepthChroma":I
    .restart local v18    # "bitdepthLuma":I
    .restart local v20    # "colorRange":I
    .local v24, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_d
    const v7, 0x64766343

    if-eq v2, v7, :cond_27

    const v7, 0x64767643

    if-ne v2, v7, :cond_e

    move-object/from16 v28, v1

    move-object/from16 v35, v3

    move/from16 v31, v5

    move/from16 v30, v6

    move/from16 v29, v8

    move-object/from16 v32, v13

    move/from16 v27, v14

    const/4 v7, 0x0

    goto/16 :goto_17

    .line 1209
    :cond_e
    const v7, 0x76706343

    if-ne v2, v7, :cond_13

    .line 1210
    if-nez v3, :cond_f

    const/4 v7, 0x1

    goto :goto_8

    :cond_f
    const/4 v7, 0x0

    :goto_8
    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1211
    const v7, 0x76703038

    if-ne v14, v7, :cond_10

    const-string/jumbo v7, "video/x-vnd.on2.vp8"

    goto :goto_9

    :cond_10
    const-string/jumbo v7, "video/x-vnd.on2.vp9"

    .line 1212
    .end local v3    # "mimeType":Ljava/lang/String;
    .local v7, "mimeType":Ljava/lang/String;
    :goto_9
    add-int/lit8 v3, v15, 0xc

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1214
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1215
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 1216
    .local v3, "byte3":I
    shr-int/lit8 v12, v3, 0x4

    .line 1217
    .end local v18    # "bitdepthLuma":I
    .local v12, "bitdepthLuma":I
    move/from16 v17, v12

    .line 1218
    and-int/lit8 v18, v3, 0x1

    if-eqz v18, :cond_11

    const/16 v22, 0x1

    goto :goto_a

    :cond_11
    const/16 v22, 0x0

    .line 1219
    .local v22, "fullRangeFlag":Z
    :goto_a
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v18

    .line 1220
    .local v18, "colorPrimaries":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v27

    .line 1221
    .local v27, "transferCharacteristics":I
    invoke-static/range {v18 .. v18}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v10

    .line 1222
    if-eqz v22, :cond_12

    const/16 v25, 0x1

    goto :goto_b

    :cond_12
    const/16 v25, 0x2

    .line 1223
    .end local v20    # "colorRange":I
    .local v25, "colorRange":I
    :goto_b
    nop

    .line 1224
    invoke-static/range {v27 .. v27}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v3

    .line 1225
    .end local v9    # "colorTransfer":I
    .end local v18    # "colorPrimaries":I
    .end local v22    # "fullRangeFlag":Z
    .end local v27    # "transferCharacteristics":I
    .local v3, "colorTransfer":I
    move v9, v3

    move/from16 v31, v5

    move/from16 v30, v6

    move-object/from16 v35, v7

    move/from16 v18, v12

    move/from16 v27, v14

    move-object/from16 v12, v24

    move/from16 v20, v25

    const/4 v7, 0x0

    move/from16 v3, p1

    goto/16 :goto_19

    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v12    # "bitdepthLuma":I
    .end local v25    # "colorRange":I
    .local v3, "mimeType":Ljava/lang/String;
    .restart local v9    # "colorTransfer":I
    .local v18, "bitdepthLuma":I
    .restart local v20    # "colorRange":I
    :cond_13
    const v7, 0x61763143

    if-ne v2, v7, :cond_14

    .line 1226
    const-string/jumbo v3, "video/av01"

    .line 1227
    add-int/lit8 v7, v15, 0x8

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1228
    invoke-static {v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseAv1c(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;

    move-result-object v7

    .line 1230
    .local v7, "colorInfo":Landroidx/media3/common/ColorInfo;
    iget v12, v7, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    .line 1231
    .end local v18    # "bitdepthLuma":I
    .restart local v12    # "bitdepthLuma":I
    move-object/from16 v22, v3

    .end local v3    # "mimeType":Ljava/lang/String;
    .local v22, "mimeType":Ljava/lang/String;
    iget v3, v7, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    .line 1232
    .end local v17    # "bitdepthChroma":I
    .local v3, "bitdepthChroma":I
    iget v10, v7, Landroidx/media3/common/ColorInfo;->colorSpace:I

    .line 1233
    move/from16 v17, v3

    .end local v3    # "bitdepthChroma":I
    .restart local v17    # "bitdepthChroma":I
    iget v3, v7, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 1234
    .end local v20    # "colorRange":I
    .local v3, "colorRange":I
    iget v7, v7, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 1235
    .end local v9    # "colorTransfer":I
    .local v7, "colorTransfer":I
    move/from16 v20, v3

    move/from16 v31, v5

    move/from16 v30, v6

    move v9, v7

    move/from16 v18, v12

    move/from16 v27, v14

    move-object/from16 v35, v22

    move-object/from16 v12, v24

    const/4 v7, 0x0

    move/from16 v3, p1

    goto/16 :goto_19

    .end local v7    # "colorTransfer":I
    .end local v12    # "bitdepthLuma":I
    .end local v22    # "mimeType":Ljava/lang/String;
    .local v3, "mimeType":Ljava/lang/String;
    .restart local v9    # "colorTransfer":I
    .restart local v18    # "bitdepthLuma":I
    .restart local v20    # "colorRange":I
    :cond_14
    const v7, 0x636c6c69

    if-ne v2, v7, :cond_16

    .line 1236
    if-nez v23, :cond_15

    .line 1237
    invoke-static {}, Landroidx/media3/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v23

    move-object/from16 v7, v23

    goto :goto_c

    .line 1236
    :cond_15
    move-object/from16 v7, v23

    .line 1241
    .end local v23    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local v7, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :goto_c
    const/16 v12, 0x15

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1242
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1243
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v35, v3

    move/from16 v31, v5

    move/from16 v30, v6

    move-object/from16 v23, v7

    move/from16 v27, v14

    move-object/from16 v12, v24

    const/4 v7, 0x0

    move/from16 v3, p1

    goto/16 :goto_19

    .line 1244
    .end local v7    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v23    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_16
    const v7, 0x6d646376

    if-ne v2, v7, :cond_18

    .line 1245
    if-nez v23, :cond_17

    .line 1246
    invoke-static {}, Landroidx/media3/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v23

    move-object/from16 v7, v23

    goto :goto_d

    .line 1245
    :cond_17
    move-object/from16 v7, v23

    .line 1250
    .end local v23    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v7    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :goto_d
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    .line 1251
    .local v12, "displayPrimariesGX":S
    move/from16 v27, v14

    .end local v14    # "atomType":I
    .local v27, "atomType":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v14

    .line 1252
    .local v14, "displayPrimariesGY":S
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    .line 1253
    .local v4, "displayPrimariesBX":S
    move-object/from16 v28, v1

    .end local v1    # "projectionData":[B
    .local v28, "projectionData":[B
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v1

    .line 1254
    .local v1, "displayPrimariesBY":S
    move/from16 v29, v8

    .end local v8    # "pixelWidthHeightRatio":F
    .local v29, "pixelWidthHeightRatio":F
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v8

    .line 1255
    .local v8, "displayPrimariesRX":S
    move/from16 v30, v6

    .end local v6    # "height":I
    .local v30, "height":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v6

    .line 1256
    .local v6, "displayPrimariesRY":S
    move/from16 v31, v5

    .end local v5    # "width":I
    .local v31, "width":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v5

    .line 1257
    .local v5, "whitePointX":S
    move-object/from16 v32, v13

    .end local v13    # "codecs":Ljava/lang/String;
    .local v32, "codecs":Ljava/lang/String;
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v13

    .line 1258
    .local v13, "whitePointY":S
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v22

    .line 1259
    .local v22, "maxDisplayMasteringLuminance":J
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v33

    .line 1261
    .local v33, "minDisplayMasteringLuminance":J
    move-object/from16 v35, v3

    const/4 v3, 0x1

    .end local v3    # "mimeType":Ljava/lang/String;
    .local v35, "mimeType":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1262
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1263
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1264
    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1265
    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1266
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1267
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1268
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1269
    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1270
    const-wide/16 v36, 0x2710

    move/from16 v25, v4

    .end local v4    # "displayPrimariesBX":S
    .local v25, "displayPrimariesBX":S
    div-long v3, v22, v36

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1271
    div-long v3, v33, v36

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1272
    .end local v1    # "displayPrimariesBY":S
    .end local v5    # "whitePointX":S
    .end local v6    # "displayPrimariesRY":S
    .end local v8    # "displayPrimariesRX":S
    .end local v12    # "displayPrimariesGX":S
    .end local v13    # "whitePointY":S
    .end local v14    # "displayPrimariesGY":S
    .end local v22    # "maxDisplayMasteringLuminance":J
    .end local v25    # "displayPrimariesBX":S
    .end local v33    # "minDisplayMasteringLuminance":J
    move/from16 v3, p1

    move-object/from16 v23, v7

    move-object/from16 v12, v24

    move-object/from16 v1, v28

    move/from16 v8, v29

    move-object/from16 v13, v32

    const/4 v7, 0x0

    goto/16 :goto_19

    .end local v7    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .end local v27    # "atomType":I
    .end local v28    # "projectionData":[B
    .end local v29    # "pixelWidthHeightRatio":F
    .end local v30    # "height":I
    .end local v31    # "width":I
    .end local v32    # "codecs":Ljava/lang/String;
    .end local v35    # "mimeType":Ljava/lang/String;
    .local v1, "projectionData":[B
    .restart local v3    # "mimeType":Ljava/lang/String;
    .local v5, "width":I
    .local v6, "height":I
    .local v8, "pixelWidthHeightRatio":F
    .local v13, "codecs":Ljava/lang/String;
    .local v14, "atomType":I
    .restart local v23    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_18
    move-object/from16 v28, v1

    move-object/from16 v35, v3

    move/from16 v31, v5

    move/from16 v30, v6

    move/from16 v29, v8

    move-object/from16 v32, v13

    move/from16 v27, v14

    const/4 v3, 0x1

    .end local v1    # "projectionData":[B
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v13    # "codecs":Ljava/lang/String;
    .end local v14    # "atomType":I
    .restart local v27    # "atomType":I
    .restart local v28    # "projectionData":[B
    .restart local v29    # "pixelWidthHeightRatio":F
    .restart local v30    # "height":I
    .restart local v31    # "width":I
    .restart local v32    # "codecs":Ljava/lang/String;
    .restart local v35    # "mimeType":Ljava/lang/String;
    const v1, 0x64323633

    if-ne v2, v1, :cond_1a

    .line 1273
    if-nez v35, :cond_19

    move v12, v3

    goto :goto_e

    :cond_19
    const/4 v12, 0x0

    :goto_e
    const/4 v7, 0x0

    invoke-static {v12, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1274
    const-string/jumbo v1, "video/3gpp"

    move/from16 v3, p1

    move-object/from16 v35, v1

    move-object/from16 v12, v24

    move-object/from16 v1, v28

    move/from16 v8, v29

    move-object/from16 v13, v32

    const/4 v7, 0x0

    .end local v35    # "mimeType":Ljava/lang/String;
    .local v1, "mimeType":Ljava/lang/String;
    goto/16 :goto_19

    .line 1275
    .end local v1    # "mimeType":Ljava/lang/String;
    .restart local v35    # "mimeType":Ljava/lang/String;
    :cond_1a
    const v1, 0x65736473

    if-ne v2, v1, :cond_1d

    .line 1276
    if-nez v35, :cond_1b

    move v12, v3

    goto :goto_f

    :cond_1b
    const/4 v12, 0x0

    :goto_f
    const/4 v7, 0x0

    invoke-static {v12, v7}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1277
    invoke-static {v0, v15}, Landroidx/media3/extractor/mp4/AtomParsers;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v1

    .line 1278
    .end local v19    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .local v1, "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    invoke-static {v1}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$300(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    move-result-object v3

    .line 1279
    .end local v35    # "mimeType":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v1}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$400(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)[B

    move-result-object v4

    .line 1280
    .local v4, "initializationDataBytes":[B
    if-eqz v4, :cond_1c

    .line 1281
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    .end local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_10

    .line 1280
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1c
    move-object/from16 v12, v24

    .line 1283
    .end local v4    # "initializationDataBytes":[B
    .end local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_10
    move-object/from16 v19, v1

    move-object/from16 v35, v3

    move-object/from16 v1, v28

    move/from16 v8, v29

    move-object/from16 v13, v32

    move/from16 v3, p1

    goto/16 :goto_19

    .end local v1    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v19    # "esdsData":Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .restart local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v35    # "mimeType":Ljava/lang/String;
    :cond_1d
    const/4 v7, 0x0

    const v1, 0x70617370

    if-ne v2, v1, :cond_1e

    .line 1284
    invoke-static {v0, v15}, Landroidx/media3/extractor/mp4/AtomParsers;->parsePaspFromParent(Landroidx/media3/common/util/ParsableByteArray;I)F

    move-result v1

    .line 1285
    .end local v29    # "pixelWidthHeightRatio":F
    .local v1, "pixelWidthHeightRatio":F
    const/4 v3, 0x1

    move v8, v1

    move-object/from16 v12, v24

    move-object/from16 v1, v28

    move-object/from16 v13, v32

    .end local p1    # "pixelWidthHeightRatioFromPasp":Z
    .local v3, "pixelWidthHeightRatioFromPasp":Z
    goto/16 :goto_19

    .line 1286
    .end local v1    # "pixelWidthHeightRatio":F
    .end local v3    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v29    # "pixelWidthHeightRatio":F
    .restart local p1    # "pixelWidthHeightRatioFromPasp":Z
    :cond_1e
    const v1, 0x73763364

    if-ne v2, v1, :cond_1f

    .line 1287
    invoke-static {v0, v15, v11}, Landroidx/media3/extractor/mp4/AtomParsers;->parseProjFromParent(Landroidx/media3/common/util/ParsableByteArray;II)[B

    move-result-object v1

    move/from16 v3, p1

    move-object/from16 v12, v24

    move/from16 v8, v29

    move-object/from16 v13, v32

    .end local v28    # "projectionData":[B
    .local v1, "projectionData":[B
    goto/16 :goto_19

    .line 1288
    .end local v1    # "projectionData":[B
    .restart local v28    # "projectionData":[B
    :cond_1f
    const v1, 0x73743364

    if-ne v2, v1, :cond_21

    .line 1289
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1290
    .local v1, "version":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1291
    if-nez v1, :cond_20

    .line 1292
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 1293
    .local v3, "layout":I
    packed-switch v3, :pswitch_data_0

    goto :goto_11

    .line 1304
    :pswitch_0
    const/4 v4, 0x3

    .line 1305
    .end local v26    # "stereoMode":I
    .local v4, "stereoMode":I
    goto :goto_12

    .line 1301
    .end local v4    # "stereoMode":I
    .restart local v26    # "stereoMode":I
    :pswitch_1
    const/4 v4, 0x2

    .line 1302
    .end local v26    # "stereoMode":I
    .restart local v4    # "stereoMode":I
    goto :goto_12

    .line 1298
    .end local v4    # "stereoMode":I
    .restart local v26    # "stereoMode":I
    :pswitch_2
    const/4 v4, 0x1

    .line 1299
    .end local v26    # "stereoMode":I
    .restart local v4    # "stereoMode":I
    goto :goto_12

    .line 1295
    .end local v4    # "stereoMode":I
    .restart local v26    # "stereoMode":I
    :pswitch_3
    const/4 v4, 0x0

    .line 1296
    .end local v26    # "stereoMode":I
    .restart local v4    # "stereoMode":I
    goto :goto_12

    .line 1310
    .end local v1    # "version":I
    .end local v3    # "layout":I
    .end local v4    # "stereoMode":I
    .restart local v26    # "stereoMode":I
    :cond_20
    :goto_11
    move/from16 v4, v26

    .end local v26    # "stereoMode":I
    .restart local v4    # "stereoMode":I
    :goto_12
    move/from16 v3, p1

    move/from16 v26, v4

    move-object/from16 v12, v24

    move-object/from16 v1, v28

    move/from16 v8, v29

    move-object/from16 v13, v32

    goto/16 :goto_19

    .end local v4    # "stereoMode":I
    .restart local v26    # "stereoMode":I
    :cond_21
    const v1, 0x636f6c72

    if-ne v2, v1, :cond_26

    .line 1317
    const/4 v1, -0x1

    if-ne v10, v1, :cond_26

    if-ne v9, v1, :cond_26

    .line 1318
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1319
    .local v1, "colorType":I
    const v4, 0x6e636c78

    if-eq v1, v4, :cond_23

    const v4, 0x6e636c63

    if-ne v1, v4, :cond_22

    goto :goto_13

    .line 1337
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported color type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AtomParsers"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 1322
    :cond_23
    :goto_13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1323
    .local v4, "colorPrimaries":I
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1324
    .local v5, "transferCharacteristics":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1330
    const/16 v8, 0x13

    if-ne v11, v8, :cond_24

    .line 1331
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_24

    move v12, v3

    goto :goto_14

    :cond_24
    const/4 v12, 0x0

    .line 1332
    .local v12, "fullRangeFlag":Z
    :goto_14
    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v8

    .line 1333
    .end local v10    # "colorSpace":I
    .local v8, "colorSpace":I
    if-eqz v12, :cond_25

    goto :goto_15

    :cond_25
    move v3, v6

    .line 1334
    .end local v20    # "colorRange":I
    .local v3, "colorRange":I
    :goto_15
    nop

    .line 1335
    invoke-static {v5}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v4

    .line 1336
    .end local v5    # "transferCharacteristics":I
    .end local v9    # "colorTransfer":I
    .end local v12    # "fullRangeFlag":Z
    .local v4, "colorTransfer":I
    move/from16 v20, v3

    move v9, v4

    move v10, v8

    move-object/from16 v12, v24

    move-object/from16 v1, v28

    move/from16 v8, v29

    move-object/from16 v13, v32

    move/from16 v3, p1

    goto :goto_19

    .line 1341
    .end local v1    # "colorType":I
    .end local v3    # "colorRange":I
    .end local v4    # "colorTransfer":I
    .end local v8    # "colorSpace":I
    .restart local v9    # "colorTransfer":I
    .restart local v10    # "colorSpace":I
    .restart local v20    # "colorRange":I
    :cond_26
    :goto_16
    move/from16 v3, p1

    move-object/from16 v12, v24

    move-object/from16 v1, v28

    move/from16 v8, v29

    move-object/from16 v13, v32

    goto :goto_19

    .line 1203
    .end local v27    # "atomType":I
    .end local v28    # "projectionData":[B
    .end local v29    # "pixelWidthHeightRatio":F
    .end local v30    # "height":I
    .end local v31    # "width":I
    .end local v32    # "codecs":Ljava/lang/String;
    .end local v35    # "mimeType":Ljava/lang/String;
    .local v1, "projectionData":[B
    .local v3, "mimeType":Ljava/lang/String;
    .local v5, "width":I
    .restart local v6    # "height":I
    .local v8, "pixelWidthHeightRatio":F
    .restart local v13    # "codecs":Ljava/lang/String;
    .restart local v14    # "atomType":I
    :cond_27
    move-object/from16 v28, v1

    move-object/from16 v35, v3

    move/from16 v31, v5

    move/from16 v30, v6

    move/from16 v29, v8

    move-object/from16 v32, v13

    move/from16 v27, v14

    const/4 v7, 0x0

    .line 1204
    .end local v1    # "projectionData":[B
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v13    # "codecs":Ljava/lang/String;
    .end local v14    # "atomType":I
    .restart local v27    # "atomType":I
    .restart local v28    # "projectionData":[B
    .restart local v29    # "pixelWidthHeightRatio":F
    .restart local v30    # "height":I
    .restart local v31    # "width":I
    .restart local v32    # "codecs":Ljava/lang/String;
    .restart local v35    # "mimeType":Ljava/lang/String;
    :goto_17
    invoke-static {v0}, Landroidx/media3/extractor/DolbyVisionConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/DolbyVisionConfig;

    move-result-object v1

    .line 1205
    .local v1, "dolbyVisionConfig":Landroidx/media3/extractor/DolbyVisionConfig;
    if-eqz v1, :cond_28

    .line 1206
    iget-object v13, v1, Landroidx/media3/extractor/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 1207
    .end local v32    # "codecs":Ljava/lang/String;
    .restart local v13    # "codecs":Ljava/lang/String;
    const-string/jumbo v3, "video/dolby-vision"

    .end local v35    # "mimeType":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_18

    .line 1205
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v13    # "codecs":Ljava/lang/String;
    .restart local v32    # "codecs":Ljava/lang/String;
    .restart local v35    # "mimeType":Ljava/lang/String;
    :cond_28
    move-object/from16 v13, v32

    move-object/from16 v3, v35

    .line 1209
    .end local v1    # "dolbyVisionConfig":Landroidx/media3/extractor/DolbyVisionConfig;
    .end local v32    # "codecs":Ljava/lang/String;
    .end local v35    # "mimeType":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    .restart local v13    # "codecs":Ljava/lang/String;
    :goto_18
    move-object/from16 v35, v3

    move-object/from16 v12, v24

    move-object/from16 v1, v28

    move/from16 v8, v29

    move/from16 v3, p1

    .line 1341
    .end local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v28    # "projectionData":[B
    .end local v29    # "pixelWidthHeightRatio":F
    .end local p1    # "pixelWidthHeightRatioFromPasp":Z
    .local v1, "projectionData":[B
    .local v3, "pixelWidthHeightRatioFromPasp":Z
    .restart local v8    # "pixelWidthHeightRatio":F
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v35    # "mimeType":Ljava/lang/String;
    :goto_19
    add-int v11, p6, v11

    .line 1342
    .end local v2    # "childAtomType":I
    .end local v15    # "childStartPosition":I
    .end local p6    # "childPosition":I
    .local v11, "childPosition":I
    move/from16 v2, p3

    move-object/from16 v4, p7

    move/from16 p1, v3

    move-object/from16 v15, v21

    move/from16 v7, v26

    move/from16 v14, v27

    move/from16 v6, v30

    move/from16 v5, v31

    move-object/from16 v3, v35

    goto/16 :goto_4

    .line 1161
    .end local v26    # "stereoMode":I
    .end local v27    # "atomType":I
    .end local v30    # "height":I
    .end local v31    # "width":I
    .end local v35    # "mimeType":Ljava/lang/String;
    .local v3, "mimeType":Ljava/lang/String;
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .local v7, "stereoMode":I
    .restart local v14    # "atomType":I
    .restart local p1    # "pixelWidthHeightRatioFromPasp":Z
    :cond_29
    move-object/from16 v28, v1

    move-object/from16 v35, v3

    move/from16 v31, v5

    move/from16 v30, v6

    move/from16 v26, v7

    move/from16 v29, v8

    move/from16 p6, v11

    move-object/from16 v24, v12

    move-object/from16 v32, v13

    move/from16 v27, v14

    const/4 v7, 0x0

    .line 1345
    .end local v1    # "projectionData":[B
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "stereoMode":I
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v11    # "childPosition":I
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v13    # "codecs":Ljava/lang/String;
    .end local v14    # "atomType":I
    .restart local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v26    # "stereoMode":I
    .restart local v27    # "atomType":I
    .restart local v28    # "projectionData":[B
    .restart local v29    # "pixelWidthHeightRatio":F
    .restart local v30    # "height":I
    .restart local v31    # "width":I
    .restart local v32    # "codecs":Ljava/lang/String;
    .restart local v35    # "mimeType":Ljava/lang/String;
    .restart local p6    # "childPosition":I
    :goto_1a
    if-nez v35, :cond_2a

    .line 1346
    return-void

    .line 1349
    :cond_2a
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1351
    move/from16 v2, p4

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1352
    move-object/from16 v3, v35

    .end local v35    # "mimeType":Ljava/lang/String;
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1353
    move-object/from16 v13, v32

    .end local v32    # "codecs":Ljava/lang/String;
    .restart local v13    # "codecs":Ljava/lang/String;
    invoke-virtual {v1, v13}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1354
    move/from16 v4, v31

    .end local v31    # "width":I
    .local v4, "width":I
    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1355
    move/from16 v5, v30

    .end local v30    # "height":I
    .local v5, "height":I
    invoke-virtual {v1, v5}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1356
    move/from16 v8, v29

    .end local v29    # "pixelWidthHeightRatio":F
    .restart local v8    # "pixelWidthHeightRatio":F
    invoke-virtual {v1, v8}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1357
    move/from16 v6, p5

    invoke-virtual {v1, v6}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1358
    move-object/from16 v11, v28

    .end local v28    # "projectionData":[B
    .local v11, "projectionData":[B
    invoke-virtual {v1, v11}, Landroidx/media3/common/Format$Builder;->setProjectionData([B)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1359
    move/from16 v12, v26

    .end local v26    # "stereoMode":I
    .local v12, "stereoMode":I
    invoke-virtual {v1, v12}, Landroidx/media3/common/Format$Builder;->setStereoMode(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1360
    move-object/from16 v14, v24

    .end local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v14, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v1, v14}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1361
    move-object/from16 v15, v21

    .end local v21    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .local v15, "drmInitData":Landroidx/media3/common/DrmInitData;
    invoke-virtual {v1, v15}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    new-instance v7, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v7}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1366
    invoke-virtual {v7, v10}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v7

    .line 1367
    move/from16 v0, v20

    .end local v20    # "colorRange":I
    .local v0, "colorRange":I
    invoke-virtual {v7, v0}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v7

    .line 1368
    invoke-virtual {v7, v9}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v7

    .line 1369
    if-eqz v23, :cond_2b

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    move/from16 v20, v0

    move-object/from16 v0, v16

    goto :goto_1b

    :cond_2b
    move/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "colorRange":I
    .restart local v20    # "colorRange":I
    :goto_1b
    invoke-virtual {v7, v0}, Landroidx/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1370
    move/from16 v7, v18

    .end local v18    # "bitdepthLuma":I
    .local v7, "bitdepthLuma":I
    invoke-virtual {v0, v7}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1371
    move/from16 v2, v17

    .end local v17    # "bitdepthChroma":I
    .local v2, "bitdepthChroma":I
    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 1372
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v0

    .line 1364
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1374
    .local v0, "formatBuilder":Landroidx/media3/common/Format$Builder;
    if-eqz v19, :cond_2c

    .line 1375
    nop

    .line 1376
    invoke-static/range {v19 .. v19}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$600(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1377
    invoke-static/range {v19 .. v19}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$500(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v16

    move-object/from16 v18, v0

    .end local v0    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .local v18, "formatBuilder":Landroidx/media3/common/Format$Builder;
    invoke-static/range {v16 .. v17}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    goto :goto_1c

    .line 1374
    .end local v18    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .restart local v0    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    :cond_2c
    move-object/from16 v18, v0

    .line 1380
    .end local v0    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .restart local v18    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    :goto_1c
    invoke-virtual/range {v18 .. v18}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    move-object/from16 v1, p7

    iput-object v0, v1, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    .line 1381
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseXyz(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata;
    .locals 11
    .param p0, "xyzBox"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 812
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v0

    .line 813
    .local v0, "length":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 814
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "location":Ljava/lang/String;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 817
    .local v2, "plusSignIndex":I
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 818
    .local v3, "minusSignIndex":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 820
    .local v4, "latitudeEndIndex":I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 821
    .local v6, "latitude":F
    nop

    .line 822
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 823
    .local v7, "longitude":F
    new-instance v9, Landroidx/media3/common/Metadata;

    new-array v8, v8, [Landroidx/media3/common/Metadata$Entry;

    new-instance v10, Landroidx/media3/container/Mp4LocationData;

    invoke-direct {v10, v6, v7}, Landroidx/media3/container/Mp4LocationData;-><init>(FF)V

    aput-object v10, v8, v5

    invoke-direct {v9, v8}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 824
    .end local v6    # "latitude":F
    .end local v7    # "longitude":F
    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    .line 826
    .local v5, "exception":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v6, 0x0

    return-object v6
.end method

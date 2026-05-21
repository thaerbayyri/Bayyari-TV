.class public final Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/hls/HlsExtractorFactory;


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I


# instance fields
.field private final exposeCea608WhenMissingDeclarations:Z

.field private parseSubtitlesDuringExtraction:Z

.field private final payloadReaderFactoryFlags:I

.field private subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    .line 84
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "payloadReaderFactoryFlags"    # I
    .param p2, "exposeCea608WhenMissingDeclarations"    # Z

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 100
    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 101
    new-instance v0, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 102
    return-void
.end method

.method private static addFileTypeIfValidAndNotPresent(ILjava/util/List;)V
    .locals 2
    .param p0, "fileType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "fileTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    invoke-static {v0, p0}, Lcom/google/common/primitives/Ints;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-void

    .line 211
    :cond_1
    :goto_0
    return-void
.end method

.method private createExtractorByFileType(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/Extractor;
    .locals 11
    .param p1, "fileType"    # I
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p4, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            ")",
            "Landroidx/media3/extractor/Extractor;"
        }
    .end annotation

    .line 224
    .local p3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    sparse-switch p1, :sswitch_data_0

    .line 256
    move-object v6, p2

    .end local p2    # "format":Landroidx/media3/common/Format;
    .local v6, "format":Landroidx/media3/common/Format;
    const/4 p2, 0x0

    return-object p2

    .line 226
    .end local v6    # "format":Landroidx/media3/common/Format;
    .restart local p2    # "format":Landroidx/media3/common/Format;
    :sswitch_0
    new-instance v0, Landroidx/media3/exoplayer/hls/WebvttExtractor;

    iget-object v1, p2, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v3, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    invoke-direct {v0, v1, p4, v2, v3}, Landroidx/media3/exoplayer/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)V

    return-object v0

    .line 247
    :sswitch_1
    iget v4, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean v5, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    iget-object v9, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v10, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .end local p2    # "format":Landroidx/media3/common/Format;
    .end local p3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .end local p4    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .restart local v6    # "format":Landroidx/media3/common/Format;
    .local v7, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local v8, "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    invoke-static/range {v4 .. v10}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)Landroidx/media3/extractor/ts/TsExtractor;

    move-result-object p2

    return-object p2

    .line 240
    .end local v6    # "format":Landroidx/media3/common/Format;
    .end local v7    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .end local v8    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .restart local p2    # "format":Landroidx/media3/common/Format;
    .restart local p3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local p4    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    :sswitch_2
    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .end local p2    # "format":Landroidx/media3/common/Format;
    .end local p3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .end local p4    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .restart local v6    # "format":Landroidx/media3/common/Format;
    .restart local v7    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local v8    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean p3, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    invoke-static {p2, p3, v8, v6, v7}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Landroidx/media3/extractor/text/SubtitleParser$Factory;ZLandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/common/Format;Ljava/util/List;)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    move-result-object p2

    return-object p2

    .line 238
    .end local v6    # "format":Landroidx/media3/common/Format;
    .end local v7    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .end local v8    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .restart local p2    # "format":Landroidx/media3/common/Format;
    .restart local p3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local p4    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    :sswitch_3
    move-object v6, p2

    move-object v7, p3

    .end local p2    # "format":Landroidx/media3/common/Format;
    .end local p3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local v6    # "format":Landroidx/media3/common/Format;
    .restart local v7    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    new-instance p2, Landroidx/media3/extractor/mp3/Mp3Extractor;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p2, p3, v0, v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object p2

    .line 232
    .end local v6    # "format":Landroidx/media3/common/Format;
    .end local v7    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local p2    # "format":Landroidx/media3/common/Format;
    .restart local p3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    :sswitch_4
    move-object v6, p2

    .end local p2    # "format":Landroidx/media3/common/Format;
    .restart local v6    # "format":Landroidx/media3/common/Format;
    new-instance p2, Landroidx/media3/extractor/ts/AdtsExtractor;

    invoke-direct {p2}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>()V

    return-object p2

    .line 236
    .end local v6    # "format":Landroidx/media3/common/Format;
    .restart local p2    # "format":Landroidx/media3/common/Format;
    :sswitch_5
    move-object v6, p2

    .end local p2    # "format":Landroidx/media3/common/Format;
    .restart local v6    # "format":Landroidx/media3/common/Format;
    new-instance p2, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {p2}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    return-object p2

    .line 234
    .end local v6    # "format":Landroidx/media3/common/Format;
    .restart local p2    # "format":Landroidx/media3/common/Format;
    :sswitch_6
    move-object v6, p2

    .end local p2    # "format":Landroidx/media3/common/Format;
    .restart local v6    # "format":Landroidx/media3/common/Format;
    new-instance p2, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {p2}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    return-object p2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0xb -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private static createFragmentedMp4Extractor(Landroidx/media3/extractor/text/SubtitleParser$Factory;ZLandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/common/Format;Ljava/util/List;)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
    .locals 8
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .param p1, "parseSubtitlesDuringExtraction"    # Z
    .param p2, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p3, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/SubtitleParser$Factory;",
            "Z",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;"
        }
    .end annotation

    .line 319
    .local p4, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    invoke-static {p3}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->isFmp4Variant(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 320
    .local v0, "flags":I
    :goto_0
    if-nez p1, :cond_1

    .line 321
    sget-object p0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 322
    or-int/lit8 v0, v0, 0x20

    move-object v2, p0

    move v3, v0

    goto :goto_1

    .line 320
    :cond_1
    move-object v2, p0

    move v3, v0

    .line 324
    .end local v0    # "flags":I
    .end local p0    # "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .local v2, "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .local v3, "flags":I
    :goto_1
    new-instance v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    .line 329
    if-eqz p4, :cond_2

    move-object v6, p4

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    move-object v6, p0

    :goto_2
    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    .end local p2    # "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    .local v4, "timestampAdjuster":Landroidx/media3/common/util/TimestampAdjuster;
    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    .line 324
    return-object v1
.end method

.method private static createTsExtractor(IZLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)Landroidx/media3/extractor/ts/TsExtractor;
    .locals 12
    .param p0, "userProvidedPayloadReaderFactoryFlags"    # I
    .param p1, "exposeCea608WhenMissingDeclarations"    # Z
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p4, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p5, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .param p6, "parseSubtitlesDuringExtraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/text/SubtitleParser$Factory;",
            "Z)",
            "Landroidx/media3/extractor/ts/TsExtractor;"
        }
    .end annotation

    .line 269
    .local p3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    or-int/lit8 v0, p0, 0x10

    .line 272
    .local v0, "payloadReaderFactoryFlags":I
    if-eqz p3, :cond_0

    .line 274
    or-int/lit8 v0, v0, 0x20

    move-object v1, p3

    goto :goto_0

    .line 275
    :cond_0
    if-eqz p1, :cond_1

    .line 278
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 280
    const-string v2, "application/cea-608"

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 279
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .end local p3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local v1, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    goto :goto_0

    .line 282
    .end local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local p3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 284
    .end local p3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local v1    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    :goto_0
    iget-object v2, p2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 285
    .local v2, "codecs":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 289
    const-string v3, "audio/mp4a-latm"

    invoke-static {v2, v3}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 290
    or-int/lit8 v0, v0, 0x2

    .line 292
    :cond_2
    const-string/jumbo v3, "video/avc"

    invoke-static {v2, v3}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 293
    or-int/lit8 v0, v0, 0x4

    .line 296
    :cond_3
    const/4 v3, 0x0

    .line 297
    .local v3, "extractorFlags":I
    if-nez p6, :cond_4

    .line 298
    sget-object v4, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 299
    .end local p5    # "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .local v4, "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    or-int/lit8 v3, v3, 0x1

    move-object v8, v4

    move v7, v3

    goto :goto_1

    .line 297
    .end local v4    # "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .restart local p5    # "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    :cond_4
    move-object/from16 v8, p5

    move v7, v3

    .line 301
    .end local v3    # "extractorFlags":I
    .end local p5    # "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .local v7, "extractorFlags":I
    .local v8, "subtitleParserFactory":Landroidx/media3/extractor/text/SubtitleParser$Factory;
    :goto_1
    new-instance v5, Landroidx/media3/extractor/ts/TsExtractor;

    new-instance v10, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v10, v0, v1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const v11, 0x1b8a0

    const/4 v6, 0x2

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v11}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    return-object v5
.end method

.method private static isFmp4Variant(Landroidx/media3/common/Format;)Z
    .locals 5
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 335
    iget-object v0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 336
    .local v0, "metadata":Landroidx/media3/common/Metadata;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 337
    return v1

    .line 339
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/Metadata;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 340
    invoke-virtual {v0, v2}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v3

    .line 341
    .local v3, "entry":Landroidx/media3/common/Metadata$Entry;
    instance-of v4, v3, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    if-eqz v4, :cond_1

    .line 342
    move-object v1, v3

    check-cast v1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 339
    .end local v3    # "entry":Landroidx/media3/common/Metadata$Entry;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private static sniffQuietly(Landroidx/media3/extractor/Extractor;Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 2
    .param p0, "extractor"    # Landroidx/media3/extractor/Extractor;
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, "result":Z
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/media3/extractor/Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 356
    :goto_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 357
    goto :goto_1

    .line 356
    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 357
    throw v1

    .line 353
    :catch_0
    move-exception v1

    goto :goto_0

    .line 358
    :goto_1
    return v0
.end method


# virtual methods
.method public createExtractor(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p4, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p6, "sniffingExtractorInput"    # Landroidx/media3/extractor/ExtractorInput;
    .param p7, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroidx/media3/extractor/ExtractorInput;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            ")",
            "Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    .local p3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local p5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    iget-object v1, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result v7

    .line 117
    .local v7, "formatInferredFileType":I
    nop

    .line 118
    invoke-static/range {p5 .. p5}, Landroidx/media3/common/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result v8

    .line 119
    .local v8, "responseHeadersInferredFileType":I
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result v9

    .line 122
    .local v9, "uriInferredFileType":I
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v1

    .line 124
    .local v10, "fileTypeOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v7, v10}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 125
    invoke-static {v8, v10}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 126
    invoke-static {v9, v10}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 127
    sget-object v1, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 128
    .local v5, "fileType":I
    invoke-static {v5, v10}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 127
    .end local v5    # "fileType":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    :cond_0
    const/4 v1, 0x0

    .line 133
    .local v1, "fallBackExtractor":Landroidx/media3/extractor/Extractor;
    invoke-interface/range {p6 .. p6}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 134
    const/4 v2, 0x0

    move-object v11, v1

    move v12, v2

    .end local v1    # "fallBackExtractor":Landroidx/media3/extractor/Extractor;
    .local v11, "fallBackExtractor":Landroidx/media3/extractor/Extractor;
    .local v12, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_4

    .line 135
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 136
    .local v13, "fileType":I
    nop

    .line 138
    move-object/from16 v14, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v13, v3, v14, v4}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createExtractorByFileType(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/Extractor;

    move-result-object v1

    .line 137
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media3/extractor/Extractor;

    .line 139
    .local v2, "extractor":Landroidx/media3/extractor/Extractor;
    move-object/from16 v15, p6

    invoke-static {v2, v15}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media3/extractor/Extractor;Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    new-instance v1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v6, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)V

    return-object v1

    .line 147
    :cond_1
    if-nez v11, :cond_3

    if-eq v13, v7, :cond_2

    if-eq v13, v8, :cond_2

    if-eq v13, v9, :cond_2

    const/16 v1, 0xb

    if-ne v13, v1, :cond_3

    .line 154
    :cond_2
    move-object v1, v2

    move-object v11, v1

    .line 134
    .end local v2    # "extractor":Landroidx/media3/extractor/Extractor;
    .end local v13    # "fileType":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p2

    goto :goto_1

    :cond_4
    move-object/from16 v14, p3

    move-object/from16 v15, p6

    .line 158
    .end local v12    # "i":I
    new-instance v1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    .line 159
    invoke-static {v11}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/Extractor;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v6, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)V

    .line 158
    return-object v1
.end method

.method public bridge synthetic createExtractor(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createExtractor(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    move-result-object p1

    return-object p1
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;
    .locals 0
    .param p1, "parseSubtitlesDuringExtraction"    # Z

    .line 178
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    .line 179
    return-object p0
.end method

.method public bridge synthetic experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/hls/HlsExtractorFactory;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    move-result-object p1

    return-object p1
.end method

.method public getOutputTextFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 4
    .param p1, "sourceFormat"    # Landroidx/media3/common/Format;

    .line 193
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    nop

    .line 195
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 196
    const-string v1, "application/x-media3-cues"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 197
    invoke-interface {v1, p1}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->getCueReplacementBehavior(Landroidx/media3/common/Format;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setCueReplacementBehavior(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    iget-object v2, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 201
    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 194
    return-object v0

    .line 204
    :cond_1
    return-object p1
.end method

.method public setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;
    .locals 0
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 170
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 171
    return-object p0
.end method

.method public bridge synthetic setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/hls/HlsExtractorFactory;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    move-result-object p1

    return-object p1
.end method

.class final Landroidx/media3/exoplayer/hls/HlsMediaChunk;
.super Landroidx/media3/exoplayer/source/chunk/MediaChunk;
.source "HlsMediaChunk.java"


# static fields
.field public static final PRIV_TIMESTAMP_FRAME_OWNER:Ljava/lang/String; = "com.apple.streaming.transportStreamTimestamp"

.field private static final uidSource:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final discontinuitySequenceNumber:I

.field private final drmInitData:Landroidx/media3/common/DrmInitData;

.field private extractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

.field private final extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

.field private extractorInvalidated:Z

.field private final hasGapTag:Z

.field private final id3Decoder:Landroidx/media3/extractor/metadata/id3/Id3Decoder;

.field private initDataLoadRequired:Z

.field private final initDataSource:Landroidx/media3/datasource/DataSource;

.field private final initDataSpec:Landroidx/media3/datasource/DataSpec;

.field private final initSegmentEncrypted:Z

.field private final isPrimaryTimestampSource:Z

.field private isPublished:Z

.field private volatile loadCanceled:Z

.field private loadCompleted:Z

.field private final mediaSegmentEncrypted:Z

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private nextLoadPosition:I

.field private output:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public final partIndex:I

.field private final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final playlistUrl:Landroid/net/Uri;

.field private final previousExtractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

.field private sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

.field public final shouldSpliceIn:Z

.field private final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

.field private final timestampAdjusterInitializationTimeoutMs:J

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 258
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ZLandroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLandroidx/media3/common/util/TimestampAdjuster;JLandroidx/media3/common/DrmInitData;Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;Landroidx/media3/extractor/metadata/id3/Id3Decoder;Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 16
    .param p1, "extractorFactory"    # Landroidx/media3/exoplayer/hls/HlsExtractorFactory;
    .param p2, "mediaDataSource"    # Landroidx/media3/datasource/DataSource;
    .param p3, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p4, "format"    # Landroidx/media3/common/Format;
    .param p5, "mediaSegmentEncrypted"    # Z
    .param p6, "initDataSource"    # Landroidx/media3/datasource/DataSource;
    .param p7, "initDataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p8, "initSegmentEncrypted"    # Z
    .param p9, "playlistUrl"    # Landroid/net/Uri;
    .param p11, "trackSelectionReason"    # I
    .param p12, "trackSelectionData"    # Ljava/lang/Object;
    .param p13, "startTimeUs"    # J
    .param p15, "endTimeUs"    # J
    .param p17, "chunkMediaSequence"    # J
    .param p19, "partIndex"    # I
    .param p20, "isPublished"    # Z
    .param p21, "discontinuitySequenceNumber"    # I
    .param p22, "hasGapTag"    # Z
    .param p23, "isPrimaryTimestampSource"    # Z
    .param p24, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p25, "timestampAdjusterInitializationTimeoutMs"    # J
    .param p27, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p28, "previousExtractor"    # Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .param p29, "id3Decoder"    # Landroidx/media3/extractor/metadata/id3/Id3Decoder;
    .param p30, "scratchId3Data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p31, "shouldSpliceIn"    # Z
    .param p32, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsExtractorFactory;",
            "Landroidx/media3/datasource/DataSource;",
            "Landroidx/media3/datasource/DataSpec;",
            "Landroidx/media3/common/Format;",
            "Z",
            "Landroidx/media3/datasource/DataSource;",
            "Landroidx/media3/datasource/DataSpec;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZIZZ",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "J",
            "Landroidx/media3/common/DrmInitData;",
            "Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;",
            "Landroidx/media3/extractor/metadata/id3/Id3Decoder;",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Z",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 333
    .local p10, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    move-object/from16 v12, p7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/source/chunk/MediaChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJ)V

    .line 342
    move/from16 v1, p5

    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->mediaSegmentEncrypted:Z

    .line 343
    move/from16 v2, p19

    iput v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    .line 344
    move/from16 v3, p20

    iput-boolean v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->isPublished:Z

    .line 345
    move/from16 v4, p21

    iput v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    .line 346
    iput-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 347
    move-object/from16 v5, p6

    iput-object v5, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataSource:Landroidx/media3/datasource/DataSource;

    .line 348
    if-eqz v12, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataLoadRequired:Z

    .line 349
    move/from16 v6, p8

    iput-boolean v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initSegmentEncrypted:Z

    .line 350
    move-object/from16 v7, p9

    iput-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    .line 351
    move/from16 v8, p23

    iput-boolean v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->isPrimaryTimestampSource:Z

    .line 352
    move-object/from16 v9, p24

    iput-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 353
    move-wide/from16 v10, p25

    iput-wide v10, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjusterInitializationTimeoutMs:J

    .line 354
    move/from16 v13, p22

    iput-boolean v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->hasGapTag:Z

    .line 355
    move-object/from16 v14, p1

    iput-object v14, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    .line 356
    move-object/from16 v15, p10

    iput-object v15, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->muxedCaptionFormats:Ljava/util/List;

    .line 357
    move-object/from16 v1, p27

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 358
    move-object/from16 v1, p28

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->previousExtractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    .line 359
    move-object/from16 v1, p29

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->id3Decoder:Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    .line 360
    move-object/from16 v1, p30

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    .line 361
    move/from16 v1, p31

    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->shouldSpliceIn:Z

    .line 362
    move-object/from16 v1, p32

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 363
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    .line 364
    sget-object v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->uid:I

    .line 365
    return-void
.end method

.method private static buildDataSource(Landroidx/media3/datasource/DataSource;[B[B)Landroidx/media3/datasource/DataSource;
    .locals 1
    .param p0, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p1, "fullSegmentEncryptionKey"    # [B
    .param p2, "encryptionIv"    # [B

    .line 657
    if-eqz p1, :cond_0

    .line 658
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v0, Landroidx/media3/exoplayer/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/hls/Aes128DataSource;-><init>(Landroidx/media3/datasource/DataSource;[B[B)V

    return-object v0

    .line 661
    :cond_0
    return-object p0
.end method

.method public static createInstance(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/datasource/DataSource;Landroidx/media3/common/Format;JLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;Landroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLandroidx/media3/exoplayer/hls/TimestampAdjusterProvider;JLandroidx/media3/exoplayer/hls/HlsMediaChunk;[B[BZLandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdData$Factory;)Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .locals 44
    .param p0, "extractorFactory"    # Landroidx/media3/exoplayer/hls/HlsExtractorFactory;
    .param p1, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p3, "startOfPlaylistInPeriodUs"    # J
    .param p5, "mediaPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .param p6, "segmentBaseHolder"    # Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .param p7, "playlistUrl"    # Landroid/net/Uri;
    .param p9, "trackSelectionReason"    # I
    .param p10, "trackSelectionData"    # Ljava/lang/Object;
    .param p11, "isPrimaryTimestampSource"    # Z
    .param p12, "timestampAdjusterProvider"    # Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;
    .param p13, "timestampAdjusterInitializationTimeoutMs"    # J
    .param p15, "previousChunk"    # Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .param p16, "mediaSegmentKey"    # [B
    .param p17, "initSegmentKey"    # [B
    .param p18, "shouldSpliceIn"    # Z
    .param p19, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p20, "cmcdDataFactory"    # Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsExtractorFactory;",
            "Landroidx/media3/datasource/DataSource;",
            "Landroidx/media3/common/Format;",
            "J",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;",
            "J",
            "Landroidx/media3/exoplayer/hls/HlsMediaChunk;",
            "[B[BZ",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "Landroidx/media3/exoplayer/upstream/CmcdData$Factory;",
            ")",
            "Landroidx/media3/exoplayer/hls/HlsMediaChunk;"
        }
    .end annotation

    .line 106
    .local p8, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v4, p16

    move-object/from16 v5, p17

    move-object/from16 v6, p20

    iget-object v7, v2, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 107
    .local v7, "mediaSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;
    new-instance v8, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v8}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object v9, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v10, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    .line 109
    invoke-static {v9, v10}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v8

    iget-wide v9, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    .line 110
    invoke-virtual {v8, v9, v10}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v8

    iget-wide v9, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    .line 111
    invoke-virtual {v8, v9, v10}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v8

    .line 112
    iget-boolean v9, v2, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    if-eqz v9, :cond_0

    const/16 v9, 0x8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v8, v9}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v8

    .line 113
    invoke-virtual {v8}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v8

    .line 114
    .local v8, "dataSpec":Landroidx/media3/datasource/DataSpec;
    if-eqz v6, :cond_1

    .line 115
    iget-wide v11, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    .line 116
    invoke-virtual {v6, v11, v12}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->setChunkDurationUs(J)Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->createCmcdData()Landroidx/media3/exoplayer/upstream/CmcdData;

    move-result-object v9

    .line 117
    .local v9, "cmcdData":Landroidx/media3/exoplayer/upstream/CmcdData;
    invoke-virtual {v9, v8}, Landroidx/media3/exoplayer/upstream/CmcdData;->addToDataSpec(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;

    move-result-object v8

    move-object v14, v8

    goto :goto_1

    .line 114
    .end local v9    # "cmcdData":Landroidx/media3/exoplayer/upstream/CmcdData;
    :cond_1
    move-object v14, v8

    .line 120
    .end local v8    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .local v14, "dataSpec":Landroidx/media3/datasource/DataSpec;
    :goto_1
    if-eqz v4, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    .line 123
    .local v16, "mediaSegmentEncrypted":Z
    :goto_2
    if-eqz v16, :cond_3

    .line 124
    iget-object v11, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    invoke-static {v11}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->getEncryptionIvArray(Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_3

    .line 125
    :cond_3
    const/4 v11, 0x0

    :goto_3
    nop

    .line 126
    .local v11, "mediaSegmentIv":[B
    invoke-static {v0, v4, v11}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->buildDataSource(Landroidx/media3/datasource/DataSource;[B[B)Landroidx/media3/datasource/DataSource;

    move-result-object v13

    .line 129
    .local v13, "mediaDataSource":Landroidx/media3/datasource/DataSource;
    iget-object v12, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 130
    .local v12, "initSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    const/4 v15, 0x0

    .line 131
    .local v15, "initDataSpec":Landroidx/media3/datasource/DataSpec;
    const/16 v17, 0x0

    .line 132
    .local v17, "initSegmentEncrypted":Z
    const/16 v18, 0x0

    .line 133
    .local v18, "initDataSource":Landroidx/media3/datasource/DataSource;
    if-eqz v12, :cond_7

    .line 134
    if-eqz v5, :cond_4

    const/16 v19, 0x1

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    :goto_4
    move/from16 v17, v19

    .line 137
    if-eqz v17, :cond_5

    .line 138
    const/16 v19, 0x1

    iget-object v8, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->getEncryptionIvArray(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_5

    .line 139
    :cond_5
    const/16 v19, 0x1

    const/4 v8, 0x0

    :goto_5
    nop

    .line 140
    .local v8, "initSegmentIv":[B
    iget-object v9, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v10, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v9, v10}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 141
    .local v9, "initSegmentUri":Landroid/net/Uri;
    new-instance v10, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v10}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 143
    invoke-virtual {v10, v9}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v10

    iget-wide v2, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeOffset:J

    .line 144
    invoke-virtual {v10, v2, v3}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v2

    iget-wide v3, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    .line 145
    invoke-virtual {v2, v3, v4}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v2

    .line 147
    .end local v15    # "initDataSpec":Landroidx/media3/datasource/DataSpec;
    .local v2, "initDataSpec":Landroidx/media3/datasource/DataSpec;
    if-eqz v6, :cond_6

    .line 148
    nop

    .line 150
    const-string v3, "i"

    invoke-virtual {v6, v3}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->setObjectType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->createCmcdData()Landroidx/media3/exoplayer/upstream/CmcdData;

    move-result-object v3

    .line 152
    .local v3, "cmcdData":Landroidx/media3/exoplayer/upstream/CmcdData;
    invoke-virtual {v3, v14}, Landroidx/media3/exoplayer/upstream/CmcdData;->addToDataSpec(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;

    move-result-object v2

    move-object v15, v2

    goto :goto_6

    .line 147
    .end local v3    # "cmcdData":Landroidx/media3/exoplayer/upstream/CmcdData;
    :cond_6
    move-object v15, v2

    .line 155
    .end local v2    # "initDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v15    # "initDataSpec":Landroidx/media3/datasource/DataSpec;
    :goto_6
    invoke-static {v0, v5, v8}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->buildDataSource(Landroidx/media3/datasource/DataSource;[B[B)Landroidx/media3/datasource/DataSource;

    move-result-object v18

    goto :goto_7

    .line 133
    .end local v8    # "initSegmentIv":[B
    .end local v9    # "initSegmentUri":Landroid/net/Uri;
    :cond_7
    const/16 v19, 0x1

    .line 158
    :goto_7
    iget-wide v2, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long v24, p3, v2

    .line 159
    .local v24, "segmentStartTimeInPeriodUs":J
    iget-wide v2, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long v26, v24, v2

    .line 160
    .local v26, "segmentEndTimeInPeriodUs":J
    iget v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v3, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    add-int/2addr v2, v3

    .line 163
    .local v2, "discontinuitySequenceNumber":I
    const/4 v3, 0x0

    .line 167
    .local v3, "previousExtractor":Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
    if-eqz p15, :cond_d

    .line 168
    move-object/from16 v4, p15

    iget-object v8, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Landroidx/media3/datasource/DataSpec;

    if-eq v15, v8, :cond_9

    if-eqz v15, :cond_8

    iget-object v8, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Landroidx/media3/datasource/DataSpec;

    if-eqz v8, :cond_8

    iget-object v8, v15, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v9, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v9, v9, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 172
    invoke-virtual {v8, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-wide v8, v15, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v10, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v0, v10, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v0, v8, v0

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    move/from16 v0, v19

    .line 174
    .local v0, "isSameInitData":Z
    :goto_9
    iget-object v1, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    .line 175
    move-object/from16 v8, p7

    invoke-virtual {v8, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->loadCompleted:Z

    if-eqz v1, :cond_a

    move/from16 v10, v19

    goto :goto_a

    :cond_a
    const/4 v10, 0x0

    .line 176
    .local v10, "isFollowingChunk":Z
    :goto_a
    iget-object v1, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->id3Decoder:Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    .line 177
    .local v1, "id3Decoder":Landroidx/media3/extractor/metadata/id3/Id3Decoder;
    iget-object v9, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    .line 182
    .local v9, "scratchId3Data":Landroidx/media3/common/util/ParsableByteArray;
    if-eqz v0, :cond_b

    if-eqz v10, :cond_b

    move/from16 v21, v0

    .end local v0    # "isSameInitData":Z
    .local v21, "isSameInitData":Z
    iget-boolean v0, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractorInvalidated:Z

    if-nez v0, :cond_c

    iget v0, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    if-ne v0, v2, :cond_c

    .line 183
    iget-object v0, v4, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    goto :goto_b

    .line 182
    .end local v21    # "isSameInitData":Z
    .restart local v0    # "isSameInitData":Z
    :cond_b
    move/from16 v21, v0

    .line 184
    .end local v0    # "isSameInitData":Z
    .restart local v21    # "isSameInitData":Z
    :cond_c
    const/4 v0, 0x0

    :goto_b
    move-object v3, v0

    .line 185
    .end local v10    # "isFollowingChunk":Z
    .end local v21    # "isSameInitData":Z
    move-object/from16 v40, v1

    move-object/from16 v39, v3

    move-object/from16 v41, v9

    goto :goto_c

    .line 186
    .end local v1    # "id3Decoder":Landroidx/media3/extractor/metadata/id3/Id3Decoder;
    .end local v9    # "scratchId3Data":Landroidx/media3/common/util/ParsableByteArray;
    :cond_d
    move-object/from16 v8, p7

    move-object/from16 v4, p15

    new-instance v0, Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;-><init>()V

    move-object v1, v0

    .line 187
    .restart local v1    # "id3Decoder":Landroidx/media3/extractor/metadata/id3/Id3Decoder;
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0xa

    invoke-direct {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    move-object v9, v0

    move-object/from16 v40, v1

    move-object/from16 v39, v3

    move-object/from16 v41, v9

    .line 189
    .end local v1    # "id3Decoder":Landroidx/media3/extractor/metadata/id3/Id3Decoder;
    .end local v3    # "previousExtractor":Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .local v39, "previousExtractor":Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .local v40, "id3Decoder":Landroidx/media3/extractor/metadata/id3/Id3Decoder;
    .local v41, "scratchId3Data":Landroidx/media3/common/util/ParsableByteArray;
    :goto_c
    move-object v0, v11

    .end local v11    # "mediaSegmentIv":[B
    .local v0, "mediaSegmentIv":[B
    new-instance v11, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    move-object/from16 v1, p6

    iget-wide v9, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->mediaSequence:J

    iget v3, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->partIndex:I

    move-object/from16 v20, v0

    .end local v0    # "mediaSegmentIv":[B
    .local v20, "mediaSegmentIv":[B
    iget-boolean v0, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    xor-int/lit8 v31, v0, 0x1

    iget-boolean v0, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->hasGapTag:Z

    .line 210
    move/from16 v33, v0

    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;->getAdjuster(I)Landroidx/media3/common/util/TimestampAdjuster;

    move-result-object v35

    iget-object v0, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->drmInitData:Landroidx/media3/common/DrmInitData;

    move-object/from16 v21, p8

    move/from16 v22, p9

    move-object/from16 v23, p10

    move/from16 v34, p11

    move-wide/from16 v36, p13

    move/from16 v42, p18

    move-object/from16 v43, p19

    move-object/from16 v38, v0

    move/from16 v32, v2

    move/from16 v30, v3

    move-wide/from16 v28, v9

    move-object v2, v12

    move/from16 v19, v17

    move-object/from16 v17, v18

    move-object/from16 v0, v20

    move-object/from16 v12, p0

    move-object/from16 v20, v8

    move-object/from16 v18, v15

    move-object/from16 v15, p2

    .end local v12    # "initSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v15    # "initDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v20    # "mediaSegmentIv":[B
    .restart local v0    # "mediaSegmentIv":[B
    .local v2, "initSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .local v17, "initDataSource":Landroidx/media3/datasource/DataSource;
    .local v18, "initDataSpec":Landroidx/media3/datasource/DataSpec;
    .local v19, "initSegmentEncrypted":Z
    .local v32, "discontinuitySequenceNumber":I
    invoke-direct/range {v11 .. v43}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;-><init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ZLandroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLandroidx/media3/common/util/TimestampAdjuster;JLandroidx/media3/common/DrmInitData;Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;Landroidx/media3/extractor/metadata/id3/Id3Decoder;Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 189
    return-object v11
.end method

.method private feedDataToExtractor(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZZ)V
    .locals 8
    .param p1, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p3, "dataIsEncrypted"    # Z
    .param p4, "initializeTimestampAdjuster"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 489
    nop

    .line 493
    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I

    .line 489
    if-eqz p3, :cond_1

    .line 490
    move-object v1, p2

    .line 491
    .local v1, "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "skipLoadedBytes":Z
    :goto_0
    goto :goto_1

    .line 493
    .end local v0    # "skipLoadedBytes":Z
    .end local v1    # "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_1
    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroidx/media3/datasource/DataSpec;->subrange(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    .line 494
    .restart local v1    # "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    const/4 v0, 0x0

    .line 497
    .restart local v0    # "skipLoadedBytes":Z
    :goto_1
    nop

    .line 498
    :try_start_0
    invoke-direct {p0, p1, v1, p4}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->prepareExtraction(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/extractor/DefaultExtractorInput;

    move-result-object v2

    .line 499
    .local v2, "input":Landroidx/media3/extractor/ExtractorInput;
    if-eqz v0, :cond_2

    .line 500
    iget v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 503
    :cond_2
    :goto_2
    :try_start_1
    iget-boolean v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->read(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_2

    .line 513
    :cond_3
    :try_start_2
    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, p2, Landroidx/media3/datasource/DataSpec;->position:J

    :goto_3
    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 514
    goto :goto_4

    .line 513
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 504
    :catch_0
    move-exception v3

    .line 505
    .local v3, "e":Ljava/io/EOFException;
    :try_start_3
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget v4, v4, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_4

    .line 508
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    invoke-interface {v4}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->onTruncatedSegmentParsed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    .end local v3    # "e":Ljava/io/EOFException;
    :try_start_4
    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, p2, Landroidx/media3/datasource/DataSpec;->position:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 516
    .end local v2    # "input":Landroidx/media3/extractor/ExtractorInput;
    :goto_4
    invoke-static {p1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 517
    nop

    .line 518
    return-void

    .line 510
    .restart local v2    # "input":Landroidx/media3/extractor/ExtractorInput;
    .restart local v3    # "e":Ljava/io/EOFException;
    :cond_4
    nop

    .end local v0    # "skipLoadedBytes":Z
    .end local v1    # "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v2    # "input":Landroidx/media3/extractor/ExtractorInput;
    .end local p1    # "dataSource":Landroidx/media3/datasource/DataSource;
    .end local p2    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local p3    # "dataIsEncrypted":Z
    .end local p4    # "initializeTimestampAdjuster":Z
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 513
    .end local v3    # "e":Ljava/io/EOFException;
    .restart local v0    # "skipLoadedBytes":Z
    .restart local v1    # "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v2    # "input":Landroidx/media3/extractor/ExtractorInput;
    .restart local p1    # "dataSource":Landroidx/media3/datasource/DataSource;
    .restart local p2    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local p3    # "dataIsEncrypted":Z
    .restart local p4    # "initializeTimestampAdjuster":Z
    :goto_5
    :try_start_6
    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-wide v6, p2, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I

    .line 514
    nop

    .end local v0    # "skipLoadedBytes":Z
    .end local v1    # "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local p1    # "dataSource":Landroidx/media3/datasource/DataSource;
    .end local p2    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local p3    # "dataIsEncrypted":Z
    .end local p4    # "initializeTimestampAdjuster":Z
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 516
    .end local v2    # "input":Landroidx/media3/extractor/ExtractorInput;
    .restart local v0    # "skipLoadedBytes":Z
    .restart local v1    # "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local p1    # "dataSource":Landroidx/media3/datasource/DataSource;
    .restart local p2    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local p3    # "dataIsEncrypted":Z
    .restart local p4    # "initializeTimestampAdjuster":Z
    :catchall_1
    move-exception v2

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 517
    throw v2
.end method

.method private static getEncryptionIvArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "ivString"    # Ljava/lang/String;

    .line 629
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "trimmedIv":Ljava/lang/String;
    goto :goto_0

    .line 632
    .end local v0    # "trimmedIv":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 635
    .restart local v0    # "trimmedIv":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 636
    .local v1, "ivData":[B
    new-array v3, v2, [B

    .line 637
    .local v3, "ivDataWithPadding":[B
    array-length v4, v1

    if-le v4, v2, :cond_1

    array-length v4, v1

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 638
    .local v4, "offset":I
    :goto_1
    array-length v2, v3

    array-length v5, v1

    sub-int/2addr v2, v5

    add-int/2addr v2, v4

    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-static {v1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    return-object v3
.end method

.method private static isIndependent(Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Z
    .locals 1
    .param p0, "segmentBaseHolder"    # Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .param p1, "mediaPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 666
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    instance-of v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz v0, :cond_2

    .line 667
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->partIndex:I

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 670
    :cond_2
    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    return v0
.end method

.method private loadMedia()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->mediaSegmentEncrypted:Z

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->feedDataToExtractor(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZZ)V

    .line 469
    return-void
.end method

.method private maybeLoadInitData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 450
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataLoadRequired:Z

    if-nez v0, :cond_0

    .line 451
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataSource:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Landroidx/media3/datasource/DataSpec;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initSegmentEncrypted:Z

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->feedDataToExtractor(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZZ)V

    .line 461
    iput v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I

    .line 462
    iput-boolean v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataLoadRequired:Z

    .line 463
    return-void
.end method

.method private peekId3PrivTimestamp(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 13
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 583
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 584
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    nop

    .line 589
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    .line 590
    .local v2, "id":I
    const v5, 0x494433

    if-eq v2, v5, :cond_0

    .line 591
    return-wide v0

    .line 593
    :cond_0
    iget-object v5, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 594
    iget-object v5, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    .line 595
    .local v5, "id3Size":I
    add-int/lit8 v6, v5, 0xa

    .line 596
    .local v6, "requiredCapacity":I
    iget-object v7, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 597
    iget-object v7, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    .line 598
    .local v7, "data":[B
    iget-object v8, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 599
    iget-object v8, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    invoke-static {v7, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    .end local v7    # "data":[B
    :cond_1
    iget-object v7, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-interface {p1, v7, v3, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 602
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->id3Decoder:Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    iget-object v7, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decode([BI)Landroidx/media3/common/Metadata;

    move-result-object v3

    .line 603
    .local v3, "metadata":Landroidx/media3/common/Metadata;
    if-nez v3, :cond_2

    .line 604
    return-wide v0

    .line 606
    :cond_2
    invoke-virtual {v3}, Landroidx/media3/common/Metadata;->length()I

    move-result v7

    .line 607
    .local v7, "metadataLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 608
    invoke-virtual {v3, v8}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v9

    .line 609
    .local v9, "frame":Landroidx/media3/common/Metadata$Entry;
    instance-of v10, v9, Landroidx/media3/extractor/metadata/id3/PrivFrame;

    if-eqz v10, :cond_3

    .line 610
    move-object v10, v9

    check-cast v10, Landroidx/media3/extractor/metadata/id3/PrivFrame;

    .line 611
    .local v10, "privFrame":Landroidx/media3/extractor/metadata/id3/PrivFrame;
    const-string v11, "com.apple.streaming.transportStreamTimestamp"

    iget-object v12, v10, Landroidx/media3/extractor/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 612
    iget-object v0, v10, Landroidx/media3/extractor/metadata/id3/PrivFrame;->privateData:[B

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    .line 613
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    .line 612
    const/16 v11, 0x8

    invoke-static {v0, v4, v1, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 615
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 618
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    const-wide v11, 0x1ffffffffL

    and-long/2addr v0, v11

    return-wide v0

    .line 607
    .end local v9    # "frame":Landroidx/media3/common/Metadata$Entry;
    .end local v10    # "privFrame":Landroidx/media3/extractor/metadata/id3/PrivFrame;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 622
    .end local v8    # "i":I
    :cond_4
    return-wide v0

    .line 585
    .end local v2    # "id":I
    .end local v3    # "metadata":Landroidx/media3/common/Metadata;
    .end local v5    # "id3Size":I
    .end local v6    # "requiredCapacity":I
    .end local v7    # "metadataLength":I
    :catch_0
    move-exception v2

    .line 587
    .local v2, "e":Ljava/io/EOFException;
    return-wide v0
.end method

.method private prepareExtraction(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/extractor/DefaultExtractorInput;
    .locals 17
    .param p1, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p3, "initializeTimestampAdjuster"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractor"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 525
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p2}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v7

    .line 526
    .local v7, "bytesToRead":J
    if-eqz p3, :cond_0

    .line 528
    :try_start_0
    iget-object v9, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-boolean v10, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->isPrimaryTimestampSource:Z

    iget-wide v11, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->startTimeUs:J

    iget-wide v13, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjusterInitializationTimeoutMs:J

    invoke-virtual/range {v9 .. v14}, Landroidx/media3/common/util/TimestampAdjuster;->sharedInitializeOrWait(ZJJ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 530
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 536
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    new-instance v3, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-wide v5, v2, Landroidx/media3/datasource/DataSpec;->position:J

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    move-object v15, v3

    .line 539
    .local v15, "extractorInput":Landroidx/media3/extractor/DefaultExtractorInput;
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    if-nez v0, :cond_4

    .line 540
    invoke-direct {v1, v15}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->peekId3PrivTimestamp(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v3

    .line 541
    .local v3, "id3Timestamp":J
    invoke-virtual {v15}, Landroidx/media3/extractor/DefaultExtractorInput;->resetPeekPosition()V

    .line 543
    nop

    .line 544
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->previousExtractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->previousExtractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->recreate()Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    move-result-object v0

    goto :goto_1

    .line 546
    :cond_1
    iget-object v9, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    iget-object v10, v2, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v11, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget-object v12, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->muxedCaptionFormats:Ljava/util/List;

    iget-object v13, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 551
    invoke-interface/range {p1 .. p1}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v14

    iget-object v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 546
    move-object/from16 v16, v0

    invoke-interface/range {v9 .. v16}, Landroidx/media3/exoplayer/hls/HlsExtractorFactory;->createExtractor(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    .line 554
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->isPackedAudioExtractor()Z

    move-result v0

    .line 562
    iget-object v5, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->output:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 554
    if-eqz v0, :cond_3

    .line 555
    nop

    .line 556
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v9

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v9

    goto :goto_2

    .line 558
    :cond_2
    iget-wide v9, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->startTimeUs:J

    .line 555
    :goto_2
    invoke-virtual {v5, v9, v10}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->setSampleOffsetUs(J)V

    goto :goto_3

    .line 562
    :cond_3
    const-wide/16 v9, 0x0

    invoke-virtual {v5, v9, v10}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->setSampleOffsetUs(J)V

    .line 564
    :goto_3
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->output:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->onNewExtractor()V

    .line 565
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    iget-object v5, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->output:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-interface {v0, v5}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 567
    .end local v3    # "id3Timestamp":J
    :cond_4
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->output:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object v3, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->setDrmInitData(Landroidx/media3/common/DrmInitData;)V

    .line 568
    return-object v15
.end method

.method public static shouldSpliceIn(Landroidx/media3/exoplayer/hls/HlsMediaChunk;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;J)Z
    .locals 5
    .param p0, "previousChunk"    # Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .param p1, "playlistUrl"    # Landroid/net/Uri;
    .param p2, "mediaPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .param p3, "segmentBaseHolder"    # Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .param p4, "startOfPlaylistInPeriodUs"    # J

    .line 238
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 240
    return v0

    .line 242
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->loadCompleted:Z

    if-eqz v1, :cond_1

    .line 245
    return v0

    .line 249
    :cond_1
    iget-object v1, p3, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-wide v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long/2addr v1, p4

    .line 251
    .local v1, "segmentStartTimeInPeriodUs":J
    invoke-static {p3, p2}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->isIndependent(Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->endTimeUs:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->loadCanceled:Z

    .line 411
    return-void
.end method

.method public getFirstSampleIndex(I)I
    .locals 1
    .param p1, "sampleQueueIndex"    # I

    .line 388
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->shouldSpliceIn:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 389
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 391
    const/4 v0, 0x0

    return v0

    .line 393
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public init(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .param p1, "output"    # Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 375
    .local p2, "sampleQueueWriteIndices":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->output:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 376
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    .line 377
    return-void
.end method

.method public invalidateExtractor()V
    .locals 1

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractorInvalidated:Z

    .line 399
    return-void
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public isPublished()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->isPublished:Z

    return v0
.end method

.method public load()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->output:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->previousExtractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->previousExtractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->previousExtractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->extractor:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->initDataLoadRequired:Z

    .line 421
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->maybeLoadInitData()V

    .line 422
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_2

    .line 423
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->hasGapTag:Z

    if-nez v0, :cond_1

    .line 424
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->loadMedia()V

    .line 426
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->loadCanceled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->loadCompleted:Z

    .line 428
    :cond_2
    return-void
.end method

.method public publish()V
    .locals 1

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->isPublished:Z

    .line 444
    return-void
.end method

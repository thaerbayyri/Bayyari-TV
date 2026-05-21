.class Landroidx/media3/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;
    }
.end annotation


# static fields
.field public static final CHUNK_PUBLICATION_STATE_PRELOAD:I = 0x0

.field public static final CHUNK_PUBLICATION_STATE_PUBLISHED:I = 0x1

.field public static final CHUNK_PUBLICATION_STATE_REMOVED:I = 0x2

.field private static final KEY_CACHE_SIZE:I = 0x4


# instance fields
.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

.field private final encryptionDataSource:Landroidx/media3/datasource/DataSource;

.field private expectedPlaylistUrl:Landroid/net/Uri;

.field private final extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

.field private fatalError:Ljava/io/IOException;

.field private independentSegments:Z

.field private isPrimaryTimestampSource:Z

.field private final keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

.field private lastChunkRequestRealtimeMs:J

.field private liveEdgeInPeriodTimeUs:J

.field private final mediaDataSource:Landroidx/media3/datasource/DataSource;

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private final playlistFormats:[Landroidx/media3/common/Format;

.field private final playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final playlistUrls:[Landroid/net/Uri;

.field private scratchSpace:[B

.field private seenExpectedPlaylistError:Z

.field private final timestampAdjusterInitializationTimeoutMs:J

.field private final timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

.field private final trackGroup:Landroidx/media3/common/TrackGroup;

.field private trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;JLjava/util/List;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;)V
    .locals 16
    .param p1, "extractorFactory"    # Landroidx/media3/exoplayer/hls/HlsExtractorFactory;
    .param p2, "playlistTracker"    # Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
    .param p3, "playlistUrls"    # [Landroid/net/Uri;
    .param p4, "playlistFormats"    # [Landroidx/media3/common/Format;
    .param p5, "dataSourceFactory"    # Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;
    .param p6, "mediaTransferListener"    # Landroidx/media3/datasource/TransferListener;
    .param p7, "timestampAdjusterProvider"    # Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;
    .param p8, "timestampAdjusterInitializationTimeoutMs"    # J
    .param p11, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p12, "cmcdConfiguration"    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsExtractorFactory;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;",
            "Landroidx/media3/datasource/TransferListener;",
            "Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "Landroidx/media3/exoplayer/upstream/CmcdConfiguration;",
            ")V"
        }
    .end annotation

    .line 194
    .local p10, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 195
    move-object/from16 v5, p1

    iput-object v5, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    .line 196
    move-object/from16 v6, p2

    iput-object v6, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 197
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 198
    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistFormats:[Landroidx/media3/common/Format;

    .line 199
    move-object/from16 v7, p7

    iput-object v7, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    .line 200
    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterInitializationTimeoutMs:J

    .line 201
    move-object/from16 v10, p10

    iput-object v10, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    .line 202
    move-object/from16 v11, p11

    iput-object v11, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 203
    move-object/from16 v12, p12

    iput-object v12, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 204
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v13, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->lastChunkRequestRealtimeMs:J

    .line 205
    new-instance v15, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    const/4 v13, 0x4

    invoke-direct {v15, v13}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;-><init>(I)V

    iput-object v15, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 206
    sget-object v13, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v13, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 207
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v13, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    .line 208
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;->createDataSource(I)Landroidx/media3/datasource/DataSource;

    move-result-object v13

    iput-object v13, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->mediaDataSource:Landroidx/media3/datasource/DataSource;

    .line 209
    if-eqz v4, :cond_0

    .line 210
    iget-object v13, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->mediaDataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v13, v4}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    .line 212
    :cond_0
    const/4 v13, 0x3

    invoke-interface {v3, v13}, Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;->createDataSource(I)Landroidx/media3/datasource/DataSource;

    move-result-object v13

    iput-object v13, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->encryptionDataSource:Landroidx/media3/datasource/DataSource;

    .line 213
    new-instance v13, Landroidx/media3/common/TrackGroup;

    invoke-direct {v13, v2}, Landroidx/media3/common/TrackGroup;-><init>([Landroidx/media3/common/Format;)V

    iput-object v13, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 215
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v13, "initialTrackSelection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v15, v1

    if-ge v14, v15, :cond_2

    .line 217
    aget-object v15, v2, v14

    iget v15, v15, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v15, v15, 0x4000

    if-nez v15, :cond_1

    .line 218
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 221
    .end local v14    # "i":I
    :cond_2
    new-instance v14, Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object v15, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 222
    invoke-static {v13}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-direct {v14, v15, v1}, Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    iput-object v14, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 223
    return-void
.end method

.method private static getFullEncryptionKeyUri(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;
    .locals 2
    .param p0, "playlist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .param p1, "segmentBase"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 941
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 942
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIsMuxedAudioAndVideo()Z
    .locals 4

    .line 591
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v0

    .line 592
    .local v0, "format":Landroidx/media3/common/Format;
    iget-object v1, v0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "audioMimeType":Ljava/lang/String;
    iget-object v2, v0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "videoMimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private getNextMediaSequenceAndPartIndex(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;
    .locals 19
    .param p1, "previous"    # Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .param p2, "switchingTrack"    # Z
    .param p3, "mediaPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .param p4, "startOfPlaylistInPeriodUs"    # J
    .param p6, "loadPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsMediaChunk;",
            "Z",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "JJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 836
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_0

    goto :goto_3

    .line 877
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 878
    new-instance v5, Landroid/util/Pair;

    .line 879
    iget v6, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    if-ne v6, v4, :cond_1

    .line 880
    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->getNextChunkIndex()J

    move-result-wide v6

    goto :goto_0

    .line 881
    :cond_1
    iget-wide v6, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->chunkIndex:J

    .line 879
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 882
    iget v7, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    if-ne v7, v4, :cond_2

    goto :goto_1

    :cond_2
    iget v4, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    add-int/2addr v4, v3

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 883
    :cond_3
    new-instance v5, Landroid/util/Pair;

    iget-wide v3, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->chunkIndex:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 877
    :goto_2
    return-object v5

    .line 837
    :cond_4
    :goto_3
    iget-wide v5, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v5, p4, v5

    .line 839
    .local v5, "endOfPlaylistInPeriodUs":J
    if-eqz v1, :cond_6

    iget-boolean v7, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    iget-wide v7, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->startTimeUs:J

    goto :goto_5

    :cond_6
    :goto_4
    move-wide/from16 v7, p6

    .line 840
    .local v7, "targetPositionInPeriodUs":J
    :goto_5
    iget-boolean v9, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v9, :cond_7

    cmp-long v9, v7, v5

    if-ltz v9, :cond_7

    .line 842
    new-instance v3, Landroid/util/Pair;

    iget-wide v9, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object v11, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 843
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 844
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 842
    return-object v3

    .line 846
    :cond_7
    sub-long v9, v7, p4

    .line 847
    .local v9, "targetPositionInPlaylistUs":J
    iget-object v4, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 850
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 852
    invoke-interface {v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v12

    if-eqz v12, :cond_9

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move v12, v3

    .line 848
    :goto_7
    invoke-static {v4, v11, v3, v12}, Landroidx/media3/common/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v3

    .line 853
    .local v3, "segmentIndexInPlaylist":I
    int-to-long v11, v3

    iget-wide v13, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    add-long/2addr v11, v13

    .line 854
    .local v11, "mediaSequence":J
    const/4 v4, -0x1

    .line 855
    .local v4, "partIndex":I
    if-ltz v3, :cond_e

    .line 857
    iget-object v13, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 859
    .local v13, "segment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    iget-wide v14, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    iget-wide v0, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v14, v0

    cmp-long v0, v9, v14

    if-gez v0, :cond_a

    .line 860
    iget-object v0, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_8

    .line 861
    :cond_a
    iget-object v0, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    :goto_8
    nop

    .line 862
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v1, v14, :cond_d

    .line 863
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 864
    .local v14, "part":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;
    move v15, v3

    move/from16 v16, v4

    .end local v3    # "segmentIndexInPlaylist":I
    .end local v4    # "partIndex":I
    .local v15, "segmentIndexInPlaylist":I
    .local v16, "partIndex":I
    iget-wide v3, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    move-wide/from16 v17, v3

    iget-wide v3, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->durationUs:J

    add-long v3, v17, v3

    cmp-long v3, v9, v3

    if-gez v3, :cond_c

    .line 865
    iget-boolean v3, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    if-eqz v3, :cond_f

    .line 866
    move v4, v1

    .line 868
    .end local v16    # "partIndex":I
    .restart local v4    # "partIndex":I
    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    if-ne v0, v3, :cond_b

    const-wide/16 v16, 0x1

    goto :goto_a

    :cond_b
    const-wide/16 v16, 0x0

    :goto_a
    add-long v11, v11, v16

    goto :goto_c

    .line 862
    .end local v4    # "partIndex":I
    .end local v14    # "part":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;
    .restart local v16    # "partIndex":I
    :cond_c
    add-int/lit8 v1, v1, 0x1

    move v3, v15

    move/from16 v4, v16

    goto :goto_9

    .end local v15    # "segmentIndexInPlaylist":I
    .end local v16    # "partIndex":I
    .restart local v3    # "segmentIndexInPlaylist":I
    .restart local v4    # "partIndex":I
    :cond_d
    move v15, v3

    move/from16 v16, v4

    .end local v3    # "segmentIndexInPlaylist":I
    .end local v4    # "partIndex":I
    .restart local v15    # "segmentIndexInPlaylist":I
    .restart local v16    # "partIndex":I
    goto :goto_b

    .line 855
    .end local v0    # "parts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v1    # "i":I
    .end local v13    # "segment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v15    # "segmentIndexInPlaylist":I
    .end local v16    # "partIndex":I
    .restart local v3    # "segmentIndexInPlaylist":I
    .restart local v4    # "partIndex":I
    :cond_e
    move v15, v3

    move/from16 v16, v4

    .line 874
    .end local v3    # "segmentIndexInPlaylist":I
    .end local v4    # "partIndex":I
    .restart local v15    # "segmentIndexInPlaylist":I
    .restart local v16    # "partIndex":I
    :cond_f
    :goto_b
    move/from16 v4, v16

    .end local v16    # "partIndex":I
    .restart local v4    # "partIndex":I
    :goto_c
    new-instance v0, Landroid/util/Pair;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getNextSegmentHolder(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .locals 9
    .param p0, "mediaPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .param p1, "nextMediaSequence"    # J
    .param p3, "nextPartIndex"    # I

    .line 600
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 601
    .local v0, "segmentIndexInPlaylist":I
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v1, :cond_2

    .line 602
    if-eq p3, v4, :cond_0

    move v3, p3

    .line 603
    .local v3, "index":I
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 604
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-direct {v2, v1, p1, p2, v3}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    goto :goto_0

    .line 605
    :cond_1
    nop

    .line 603
    :goto_0
    return-object v2

    .line 608
    .end local v3    # "index":I
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 609
    .local v1, "mediaSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    if-ne p3, v4, :cond_3

    .line 610
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    invoke-direct {v2, v1, p1, p2, v4}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object v2

    .line 613
    :cond_3
    iget-object v5, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p3, v5, :cond_4

    .line 615
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v3, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 616
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-direct {v2, v3, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 615
    return-object v2

    .line 617
    :cond_4
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-wide/16 v7, 0x1

    if-ge v5, v6, :cond_5

    .line 619
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    .line 620
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    add-long/2addr v7, p1

    invoke-direct {v2, v3, v7, v8, v4}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 619
    return-object v2

    .line 623
    :cond_5
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 625
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 626
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    add-long/2addr v7, p1

    invoke-direct {v2, v4, v7, v8, v3}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 625
    return-object v2

    .line 629
    :cond_6
    return-object v2
.end method

.method static getSegmentBaseList(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Ljava/util/List;
    .locals 8
    .param p0, "playlist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .param p1, "mediaSequence"    # J
    .param p3, "partIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "JI)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;",
            ">;"
        }
    .end annotation

    .line 775
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 776
    .local v0, "firstSegmentIndexInPlaylist":I
    if-ltz v0, :cond_7

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto/16 :goto_2

    .line 780
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v1, "segmentBases":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;>;"
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v0, v2, :cond_4

    .line 782
    if-eq p3, v3, :cond_3

    .line 784
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 785
    .local v2, "firstSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    if-nez p3, :cond_1

    .line 787
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 788
    :cond_1
    iget-object v4, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p3, v4, :cond_2

    .line 790
    iget-object v4, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    iget-object v5, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, p3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 792
    :cond_2
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 794
    .end local v2    # "firstSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    :cond_3
    const/4 p3, 0x0

    .line 796
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 797
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 796
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 800
    :cond_4
    iget-wide v4, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    .line 802
    if-ne p3, v3, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move v2, p3

    :goto_1
    move p3, v2

    .line 803
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_6

    .line 804
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 805
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, p3, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 804
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 808
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 778
    .end local v1    # "segmentBases":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;>;"
    :cond_7
    :goto_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method private maybeCreateEncryptionChunkFor(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/CmcdData$Factory;)Landroidx/media3/exoplayer/source/chunk/Chunk;
    .locals 10
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "selectedTrackIndex"    # I
    .param p3, "isInitSegment"    # Z
    .param p4, "cmcdDataFactory"    # Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    .line 906
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 907
    return-object v0

    .line 910
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->remove(Landroid/net/Uri;)[B

    move-result-object v1

    .line 911
    .local v1, "encryptionKey":[B
    if-eqz v1, :cond_1

    .line 915
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    invoke-virtual {v2, p1, v1}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    .line 916
    return-object v0

    .line 919
    :cond_1
    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 920
    invoke-virtual {v0, p1}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    .line 921
    .local v0, "dataSpec":Landroidx/media3/datasource/DataSpec;
    if-eqz p4, :cond_3

    .line 922
    if-eqz p3, :cond_2

    .line 923
    const-string v2, "i"

    invoke-virtual {p4, v2}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->setObjectType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    .line 925
    :cond_2
    invoke-virtual {p4}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->createCmcdData()Landroidx/media3/exoplayer/upstream/CmcdData;

    move-result-object v2

    .line 926
    .local v2, "cmcdData":Landroidx/media3/exoplayer/upstream/CmcdData;
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/upstream/CmcdData;->addToDataSpec(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 921
    .end local v2    # "cmcdData":Landroidx/media3/exoplayer/upstream/CmcdData;
    :cond_3
    move-object v5, v0

    .line 929
    .end local v0    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .local v5, "dataSpec":Landroidx/media3/datasource/DataSpec;
    :goto_0
    new-instance v3, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->encryptionDataSource:Landroidx/media3/datasource/DataSource;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistFormats:[Landroidx/media3/common/Format;

    aget-object v6, v0, p2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 933
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v7

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 934
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;[B)V

    .line 929
    return-object v3
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .locals 4
    .param p1, "playbackPositionUs"    # J

    .line 887
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 888
    .local v0, "resolveTimeToLiveEdgePossible":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 889
    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    sub-long/2addr v1, p1

    move-wide v2, v1

    goto :goto_1

    .line 890
    :cond_1
    nop

    .line 888
    :goto_1
    return-wide v2
.end method

.method private updateLiveEdgeTimeUs(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .locals 4
    .param p1, "mediaPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 894
    nop

    .line 895
    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_0

    .line 896
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 897
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    .line 898
    return-void
.end method


# virtual methods
.method public createMediaChunkIterators(Landroidx/media3/exoplayer/hls/HlsMediaChunk;J)[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    .locals 16
    .param p1, "previous"    # Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .param p2, "loadPositionUs"    # J

    .line 698
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v3, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    move-result v2

    :goto_0
    move v8, v2

    .line 699
    .local v8, "oldTrackIndex":I
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v2

    new-array v9, v2, [Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    .line 700
    .local v9, "chunkIterators":[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_1
    array-length v2, v9

    if-ge v10, v2, :cond_3

    .line 701
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v2, v10}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v11

    .line 702
    .local v11, "trackIndex":I
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v12, v2, v11

    .line 703
    .local v12, "playlistUrl":Landroid/net/Uri;
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    sget-object v2, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->EMPTY:Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    aput-object v2, v9, v10

    .line 705
    goto :goto_2

    .line 708
    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 709
    const/4 v3, 0x0

    invoke-interface {v2, v12, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v2

    .line 711
    .local v2, "playlist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-wide v4, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 713
    invoke-interface {v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 714
    .local v4, "startOfPlaylistInPeriodUs":J
    if-eq v11, v8, :cond_2

    const/4 v3, 0x1

    .line 715
    .local v3, "switchingTrack":Z
    :cond_2
    nop

    .line 716
    move v6, v3

    move-object v3, v2

    move v2, v6

    move-wide/from16 v6, p2

    .local v2, "switchingTrack":Z
    .local v3, "playlist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->getNextMediaSequenceAndPartIndex(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v13

    .line 718
    .local v13, "chunkMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 719
    .local v0, "chunkMediaSequence":J
    iget-object v6, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 720
    .local v6, "partIndex":I
    new-instance v7, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;

    iget-object v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    .line 724
    invoke-static {v3, v0, v1, v6}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->getSegmentBaseList(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Ljava/util/List;

    move-result-object v15

    invoke-direct {v7, v14, v4, v5, v15}, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;-><init>(Ljava/lang/String;JLjava/util/List;)V

    aput-object v7, v9, v10

    .line 700
    .end local v0    # "chunkMediaSequence":J
    .end local v2    # "switchingTrack":Z
    .end local v3    # "playlist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .end local v4    # "startOfPlaylistInPeriodUs":J
    .end local v6    # "partIndex":I
    .end local v11    # "trackIndex":I
    .end local v12    # "playlistUrl":Landroid/net/Uri;
    .end local v13    # "chunkMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1

    .line 726
    .end local v10    # "i":I
    :cond_3
    return-object v9
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 16
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v1

    .line 290
    .local v1, "selectedIndex":I
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 291
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 292
    invoke-interface {v5}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v5

    aget-object v4, v4, v5

    .line 291
    invoke-interface {v2, v4, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v2

    goto :goto_0

    .line 294
    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    .line 296
    .local v2, "mediaPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    if-eqz v2, :cond_3

    iget-object v4, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 297
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    if-nez v4, :cond_1

    goto :goto_1

    .line 309
    :cond_1
    iget-wide v4, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 310
    invoke-interface {v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 311
    .local v4, "startOfPlaylistInPeriodUs":J
    sub-long v7, p1, v4

    .line 312
    .local v7, "relativePositionUs":J
    iget-object v6, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 315
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 313
    invoke-static {v6, v9, v3, v3}, Landroidx/media3/common/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v13

    .line 318
    .local v13, "segmentIndex":I
    iget-object v6, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v9, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    .line 319
    .local v9, "firstSyncUs":J
    move-wide v11, v9

    .line 320
    .local v11, "secondSyncUs":J
    iget-object v6, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-eq v13, v6, :cond_2

    .line 321
    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    add-int/lit8 v6, v13, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v11, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    .line 323
    :cond_2
    move-object/from16 v6, p3

    invoke-virtual/range {v6 .. v12}, Landroidx/media3/exoplayer/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide v14

    add-long/2addr v14, v4

    return-wide v14

    .line 299
    .end local v4    # "startOfPlaylistInPeriodUs":J
    .end local v7    # "relativePositionUs":J
    .end local v9    # "firstSyncUs":J
    .end local v11    # "secondSyncUs":J
    .end local v13    # "segmentIndex":I
    :cond_3
    :goto_1
    return-wide p1
.end method

.method public getChunkPublicationState(Landroidx/media3/exoplayer/hls/HlsMediaChunk;)I
    .locals 9
    .param p1, "mediaChunk"    # Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    .line 336
    iget v0, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 338
    return v2

    .line 340
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    invoke-virtual {v1, v3}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    move-result v1

    aget-object v0, v0, v1

    .line 341
    .local v0, "playlistUrl":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 342
    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 343
    .local v1, "mediaPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    iget-wide v4, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->chunkIndex:J

    iget-wide v6, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 344
    .local v4, "segmentIndexInPlaylist":I
    if-gez v4, :cond_1

    .line 346
    return v2

    .line 349
    :cond_1
    iget-object v5, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 350
    iget-object v5, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v5, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_0

    .line 351
    :cond_2
    iget-object v5, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    :goto_0
    nop

    .line 352
    .local v5, "partsInCurrentPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    iget v6, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v6, v7, :cond_3

    .line 360
    return v8

    .line 362
    :cond_3
    iget v6, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 363
    .local v6, "newPart":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;
    iget-boolean v7, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    if-eqz v7, :cond_4

    .line 365
    return v3

    .line 367
    :cond_4
    iget-object v3, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v7, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->url:Ljava/lang/String;

    invoke-static {v3, v7}, Landroidx/media3/common/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 368
    .local v3, "newUri":Landroid/net/Uri;
    iget-object v7, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v7, v7, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v3, v7}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 369
    goto :goto_1

    .line 370
    :cond_5
    move v2, v8

    .line 368
    :goto_1
    return v2
.end method

.method public getNextChunk(Landroidx/media3/exoplayer/LoadingInfo;JLjava/util/List;ZLandroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 52
    .param p1, "loadingInfo"    # Landroidx/media3/exoplayer/LoadingInfo;
    .param p2, "loadPositionUs"    # J
    .param p5, "allowEndOfStream"    # Z
    .param p6, "out"    # Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/LoadingInfo;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/HlsMediaChunk;",
            ">;Z",
            "Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;",
            ")V"
        }
    .end annotation

    .line 395
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/HlsMediaChunk;>;"
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-wide/from16 v6, p2

    move-object/from16 v9, p6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    .line 396
    .local v1, "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    :goto_0
    if-nez v1, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v3, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    move-result v2

    :goto_1
    move v12, v2

    .line 397
    .local v12, "oldTrackIndex":I
    iget-wide v14, v8, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    .line 398
    .local v14, "playbackPositionUs":J
    sub-long v2, v6, v14

    .line 399
    .local v2, "bufferedDurationUs":J
    invoke-direct {v0, v14, v15}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v4

    .line 400
    .local v4, "timeToLiveEdgeUs":J
    const-wide/16 v10, 0x0

    if-eqz v1, :cond_3

    iget-boolean v13, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    if-nez v13, :cond_3

    .line 407
    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->getDurationUs()J

    move-result-wide v16

    .line 408
    .local v16, "subtractedDurationUs":J
    move-wide/from16 v18, v2

    .end local v2    # "bufferedDurationUs":J
    .local v18, "bufferedDurationUs":J
    sub-long v2, v18, v16

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 409
    .end local v18    # "bufferedDurationUs":J
    .restart local v2    # "bufferedDurationUs":J
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v4, v18

    if-eqz v13, :cond_2

    .line 410
    move-wide/from16 v18, v2

    .end local v2    # "bufferedDurationUs":J
    .restart local v18    # "bufferedDurationUs":J
    sub-long v2, v4, v16

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide/from16 v16, v18

    move-wide/from16 v18, v4

    goto :goto_2

    .line 409
    .end local v18    # "bufferedDurationUs":J
    .restart local v2    # "bufferedDurationUs":J
    :cond_2
    move-wide/from16 v18, v2

    .end local v2    # "bufferedDurationUs":J
    .restart local v18    # "bufferedDurationUs":J
    move-wide/from16 v16, v18

    move-wide/from16 v18, v4

    goto :goto_2

    .line 400
    .end local v16    # "subtractedDurationUs":J
    .end local v18    # "bufferedDurationUs":J
    .restart local v2    # "bufferedDurationUs":J
    :cond_3
    move-wide/from16 v18, v2

    .line 415
    .end local v2    # "bufferedDurationUs":J
    .restart local v18    # "bufferedDurationUs":J
    move-wide/from16 v16, v18

    move-wide/from16 v18, v4

    .end local v4    # "timeToLiveEdgeUs":J
    .local v16, "bufferedDurationUs":J
    .local v18, "timeToLiveEdgeUs":J
    :goto_2
    invoke-virtual {v0, v1, v6, v7}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->createMediaChunkIterators(Landroidx/media3/exoplayer/hls/HlsMediaChunk;J)[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    move-result-object v21

    .line 416
    .local v21, "mediaChunkIterators":[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    iget-object v13, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-object/from16 v20, p4

    invoke-interface/range {v13 .. v21}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    .line 418
    move-wide/from16 v32, v14

    move-wide/from16 v13, v16

    move-wide/from16 v35, v18

    move-object/from16 v34, v21

    .end local v14    # "playbackPositionUs":J
    .end local v16    # "bufferedDurationUs":J
    .end local v18    # "timeToLiveEdgeUs":J
    .end local v21    # "mediaChunkIterators":[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    .local v13, "bufferedDurationUs":J
    .local v32, "playbackPositionUs":J
    .local v34, "mediaChunkIterators":[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    .local v35, "timeToLiveEdgeUs":J
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v15

    .line 419
    .local v15, "selectedTrackIndex":I
    const/4 v3, 0x1

    if-eq v12, v15, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 420
    .local v4, "switchingTrack":Z
    :goto_3
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v5, v5, v15

    .line 421
    .local v5, "selectedPlaylistUrl":Landroid/net/Uri;
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 422
    iput-object v5, v9, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 423
    iget-boolean v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 424
    iput-object v5, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 426
    return-void

    .line 429
    :cond_5
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 430
    invoke-interface {v2, v5, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v2

    .line 432
    .local v2, "playlist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-boolean v3, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    iput-boolean v3, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    .line 435
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->updateLiveEdgeTimeUs(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    .line 438
    iget-wide v10, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v20

    sub-long v10, v10, v20

    .line 439
    .local v10, "startOfPlaylistInPeriodUs":J
    nop

    .line 440
    move-object v3, v2

    move v2, v4

    move-wide/from16 v48, v10

    move-object v10, v5

    move-wide/from16 v4, v48

    .end local v5    # "selectedPlaylistUrl":Landroid/net/Uri;
    .local v2, "switchingTrack":Z
    .local v3, "playlist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .local v4, "startOfPlaylistInPeriodUs":J
    .local v10, "selectedPlaylistUrl":Landroid/net/Uri;
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->getNextMediaSequenceAndPartIndex(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v11

    .line 442
    move/from16 v37, v2

    .end local v2    # "switchingTrack":Z
    .local v11, "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local v37, "switchingTrack":Z
    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 443
    .local v20, "chunkMediaSequence":J
    iget-object v2, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 444
    .local v24, "partIndex":I
    iget-wide v6, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v2, v20, v6

    if-gez v2, :cond_6

    if-eqz v1, :cond_6

    if-eqz v37, :cond_6

    .line 447
    move v15, v12

    .line 448
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v10, v2, v15

    .line 449
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 450
    const/4 v6, 0x1

    invoke-interface {v2, v10, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    .line 452
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-wide v6, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v25

    sub-long v4, v6, v25

    .line 455
    nop

    .line 456
    const/4 v2, 0x0

    move-wide/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->getNextMediaSequenceAndPartIndex(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v2

    .line 462
    .local v2, "nextMediaSequenceAndPartIndexWithoutAdapting":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 463
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-wide v6, v4

    move/from16 v2, v24

    move-object v4, v3

    move-object v3, v10

    move v10, v15

    move-wide/from16 v48, v20

    move-object/from16 v20, v11

    move-wide/from16 v11, v48

    goto :goto_4

    .line 466
    .end local v2    # "nextMediaSequenceAndPartIndexWithoutAdapting":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_6
    move-wide v6, v4

    move/from16 v2, v24

    move-object v4, v3

    move-object v3, v10

    move v10, v15

    move v15, v12

    move-wide/from16 v48, v20

    move-object/from16 v20, v11

    move-wide/from16 v11, v48

    .end local v12    # "oldTrackIndex":I
    .end local v24    # "partIndex":I
    .local v2, "partIndex":I
    .local v3, "selectedPlaylistUrl":Landroid/net/Uri;
    .local v4, "playlist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .local v6, "startOfPlaylistInPeriodUs":J
    .local v10, "selectedTrackIndex":I
    .local v11, "chunkMediaSequence":J
    .local v15, "oldTrackIndex":I
    .local v20, "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_4
    move-wide/from16 v24, v6

    .end local v6    # "startOfPlaylistInPeriodUs":J
    .local v24, "startOfPlaylistInPeriodUs":J
    iget-wide v5, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v5, v11, v5

    if-gez v5, :cond_7

    .line 467
    new-instance v5, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v5}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    iput-object v5, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 468
    return-void

    .line 472
    :cond_7
    nop

    .line 473
    invoke-static {v4, v11, v12, v2}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->getNextSegmentHolder(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    move-result-object v5

    .line 474
    .local v5, "segmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    if-nez v5, :cond_b

    .line 475
    const-wide/16 v26, 0x1

    iget-boolean v6, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v6, :cond_8

    .line 477
    iput-object v3, v9, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 478
    iget-boolean v6, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v3, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    and-int/2addr v6, v7

    iput-boolean v6, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 479
    iput-object v3, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 480
    return-void

    .line 481
    :cond_8
    if-nez p5, :cond_a

    iget-object v6, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v21, v1

    move-wide/from16 v28, v11

    goto :goto_5

    .line 486
    :cond_9
    new-instance v6, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v7, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 488
    invoke-static {v7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    move-wide/from16 v28, v11

    .end local v11    # "chunkMediaSequence":J
    .local v28, "chunkMediaSequence":J
    iget-wide v11, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    move-object/from16 v21, v1

    .end local v1    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .local v21, "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    iget-object v1, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 489
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-wide/from16 v30, v11

    int-to-long v11, v1

    add-long v11, v30, v11

    sub-long v11, v11, v26

    const/4 v1, -0x1

    invoke-direct {v6, v7, v11, v12, v1}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    move-object v5, v6

    goto :goto_6

    .line 481
    .end local v21    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .end local v28    # "chunkMediaSequence":J
    .restart local v1    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .restart local v11    # "chunkMediaSequence":J
    :cond_a
    move-object/from16 v21, v1

    move-wide/from16 v28, v11

    .line 482
    .end local v1    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .end local v11    # "chunkMediaSequence":J
    .restart local v21    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .restart local v28    # "chunkMediaSequence":J
    :goto_5
    const/4 v6, 0x1

    iput-boolean v6, v9, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 483
    return-void

    .line 474
    .end local v21    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .end local v28    # "chunkMediaSequence":J
    .restart local v1    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .restart local v11    # "chunkMediaSequence":J
    :cond_b
    move-object/from16 v21, v1

    move-wide/from16 v28, v11

    const-wide/16 v26, 0x1

    .line 494
    .end local v1    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .end local v11    # "chunkMediaSequence":J
    .restart local v21    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .restart local v28    # "chunkMediaSequence":J
    :goto_6
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 495
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "cmcdDataFactory":Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    if-eqz v6, :cond_12

    .line 499
    new-instance v38, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 503
    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v41

    iget v11, v8, Landroidx/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    iget-boolean v12, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    const/16 v17, 0x1

    xor-int/lit8 v45, v12, 0x1

    move-object/from16 v39, v6

    move-object/from16 v40, v7

    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->lastChunkRequestRealtimeMs:J

    .line 507
    invoke-virtual {v8, v6, v7}, Landroidx/media3/exoplayer/LoadingInfo;->rebufferedSince(J)Z

    move-result v46

    .line 508
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v47

    const-string v44, "h"

    move/from16 v43, v11

    invoke-direct/range {v38 .. v47}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;-><init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;JFLjava/lang/String;ZZZ)V

    .line 510
    move-object/from16 v6, v38

    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->getIsMuxedAudioAndVideo()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 511
    const-string v7, "av"

    goto :goto_7

    .line 512
    :cond_c
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-static {v7}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->getObjectType(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Ljava/lang/String;

    move-result-object v7

    .line 509
    :goto_7
    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->setObjectType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    move-result-object v1

    .line 515
    const-wide/16 v6, -0x1

    const/4 v11, -0x1

    if-ne v2, v11, :cond_e

    .line 516
    cmp-long v11, v28, v6

    if-nez v11, :cond_d

    move-wide v11, v6

    goto :goto_8

    :cond_d
    add-long v11, v28, v26

    goto :goto_8

    .line 517
    :cond_e
    move-wide/from16 v11, v28

    :goto_8
    nop

    .line 518
    .local v11, "nextChunkMediaSequence":J
    move-wide/from16 v18, v6

    const/4 v6, -0x1

    if-ne v2, v6, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v6, v2, 0x1

    .line 519
    .local v6, "nextPartIndex":I
    :goto_9
    nop

    .line 520
    invoke-static {v4, v11, v12, v6}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->getNextSegmentHolder(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    move-result-object v7

    .line 521
    .local v7, "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    if-eqz v7, :cond_11

    .line 522
    move/from16 v22, v2

    .end local v2    # "partIndex":I
    .local v22, "partIndex":I
    iget-object v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v23, v3

    .end local v3    # "selectedPlaylistUrl":Landroid/net/Uri;
    .local v23, "selectedPlaylistUrl":Landroid/net/Uri;
    iget-object v3, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-object v3, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 523
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move/from16 v26, v6

    .end local v6    # "nextPartIndex":I
    .local v26, "nextPartIndex":I
    iget-object v6, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-object v6, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    invoke-static {v3, v6}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 524
    .local v3, "nextUri":Landroid/net/Uri;
    invoke-static {v2, v3}, Landroidx/media3/common/util/UriUtil;->getRelativePath(Landroid/net/Uri;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->setNextObjectRequest(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    .line 526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v2

    .end local v2    # "uri":Landroid/net/Uri;
    .local v27, "uri":Landroid/net/Uri;
    iget-object v2, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    move-object/from16 v30, v3

    .end local v3    # "nextUri":Landroid/net/Uri;
    .local v30, "nextUri":Landroid/net/Uri;
    iget-wide v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "nextRangeRequest":Ljava/lang/String;
    iget-object v3, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    move-wide/from16 v38, v11

    .end local v11    # "nextChunkMediaSequence":J
    .local v38, "nextChunkMediaSequence":J
    iget-wide v11, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    cmp-long v3, v11, v18

    if-eqz v3, :cond_10

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-wide v11, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    iget-object v6, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    move-object/from16 v18, v7

    .end local v7    # "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .local v18, "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    iget-wide v6, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    add-long/2addr v11, v6

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 527
    .end local v18    # "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .restart local v7    # "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    :cond_10
    move-object/from16 v18, v7

    .line 532
    .end local v7    # "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .restart local v18    # "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    :goto_a
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->setNextRangeRequest(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    goto :goto_b

    .line 521
    .end local v18    # "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .end local v22    # "partIndex":I
    .end local v23    # "selectedPlaylistUrl":Landroid/net/Uri;
    .end local v26    # "nextPartIndex":I
    .end local v27    # "uri":Landroid/net/Uri;
    .end local v30    # "nextUri":Landroid/net/Uri;
    .end local v38    # "nextChunkMediaSequence":J
    .local v2, "partIndex":I
    .local v3, "selectedPlaylistUrl":Landroid/net/Uri;
    .restart local v6    # "nextPartIndex":I
    .restart local v7    # "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .restart local v11    # "nextChunkMediaSequence":J
    :cond_11
    move/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v26, v6

    move-object/from16 v18, v7

    move-wide/from16 v38, v11

    .end local v2    # "partIndex":I
    .end local v3    # "selectedPlaylistUrl":Landroid/net/Uri;
    .end local v6    # "nextPartIndex":I
    .end local v7    # "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .end local v11    # "nextChunkMediaSequence":J
    .restart local v18    # "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .restart local v22    # "partIndex":I
    .restart local v23    # "selectedPlaylistUrl":Landroid/net/Uri;
    .restart local v26    # "nextPartIndex":I
    .restart local v38    # "nextChunkMediaSequence":J
    goto :goto_b

    .line 498
    .end local v18    # "nextSegmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .end local v22    # "partIndex":I
    .end local v23    # "selectedPlaylistUrl":Landroid/net/Uri;
    .end local v26    # "nextPartIndex":I
    .end local v38    # "nextChunkMediaSequence":J
    .restart local v2    # "partIndex":I
    .restart local v3    # "selectedPlaylistUrl":Landroid/net/Uri;
    :cond_12
    move/from16 v22, v2

    move-object/from16 v23, v3

    .line 535
    .end local v2    # "partIndex":I
    .end local v3    # "selectedPlaylistUrl":Landroid/net/Uri;
    .restart local v22    # "partIndex":I
    .restart local v23    # "selectedPlaylistUrl":Landroid/net/Uri;
    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->lastChunkRequestRealtimeMs:J

    .line 539
    iget-object v2, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-object v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 540
    invoke-static {v4, v2}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->getFullEncryptionKeyUri(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;

    move-result-object v11

    .line 541
    .local v11, "initSegmentKeyUri":Landroid/net/Uri;
    nop

    .line 542
    const/4 v6, 0x1

    invoke-direct {v0, v11, v10, v6, v1}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->maybeCreateEncryptionChunkFor(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/CmcdData$Factory;)Landroidx/media3/exoplayer/source/chunk/Chunk;

    move-result-object v2

    iput-object v2, v9, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 544
    iget-object v2, v9, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    if-eqz v2, :cond_13

    .line 545
    return-void

    .line 548
    :cond_13
    iget-object v2, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-static {v4, v2}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->getFullEncryptionKeyUri(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;

    move-result-object v12

    .line 549
    .local v12, "mediaSegmentKeyUri":Landroid/net/Uri;
    nop

    .line 550
    const/4 v2, 0x0

    invoke-direct {v0, v12, v10, v2, v1}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->maybeCreateEncryptionChunkFor(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/CmcdData$Factory;)Landroidx/media3/exoplayer/source/chunk/Chunk;

    move-result-object v2

    iput-object v2, v9, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 552
    iget-object v2, v9, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    if-eqz v2, :cond_14

    .line 553
    return-void

    .line 556
    :cond_14
    nop

    .line 557
    move-object/from16 v2, v21

    move/from16 v38, v22

    move-object/from16 v3, v23

    move-wide/from16 v6, v24

    move-wide/from16 v16, v28

    .end local v21    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .end local v22    # "partIndex":I
    .end local v23    # "selectedPlaylistUrl":Landroid/net/Uri;
    .end local v24    # "startOfPlaylistInPeriodUs":J
    .end local v28    # "chunkMediaSequence":J
    .local v2, "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .restart local v3    # "selectedPlaylistUrl":Landroid/net/Uri;
    .local v6, "startOfPlaylistInPeriodUs":J
    .local v16, "chunkMediaSequence":J
    .local v38, "partIndex":I
    invoke-static/range {v2 .. v7}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->shouldSpliceIn(Landroidx/media3/exoplayer/hls/HlsMediaChunk;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;J)Z

    move-result v29

    .line 559
    move-object/from16 v26, v2

    move-object/from16 v18, v3

    .end local v2    # "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .end local v3    # "selectedPlaylistUrl":Landroid/net/Uri;
    .local v18, "selectedPlaylistUrl":Landroid/net/Uri;
    .local v26, "previous":Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .local v29, "shouldSpliceIn":Z
    if-eqz v29, :cond_15

    iget-boolean v2, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    if-eqz v2, :cond_15

    .line 564
    return-void

    .line 567
    :cond_15
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->mediaDataSource:Landroidx/media3/datasource/DataSource;

    move-object/from16 v31, v1

    .end local v1    # "cmcdDataFactory":Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
    .local v31, "cmcdDataFactory":Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistFormats:[Landroidx/media3/common/Format;

    aget-object v1, v1, v10

    move-object/from16 v19, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 577
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v1

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 578
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->isPrimaryTimestampSource:Z

    move/from16 v24, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    move-object/from16 v27, v1

    move-object/from16 v25, v2

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterInitializationTimeoutMs:J

    move-wide/from16 v39, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 583
    invoke-virtual {v1, v12}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->get(Landroid/net/Uri;)[B

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 584
    invoke-virtual {v2, v11}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->get(Landroid/net/Uri;)[B

    move-result-object v28

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 568
    move-object/from16 v30, v2

    move v2, v15

    move-object/from16 v48, v27

    move-object/from16 v27, v1

    move-object/from16 v1, v20

    move/from16 v20, v22

    move/from16 v22, v24

    move-object/from16 v49, v12

    move-object v12, v3

    move-wide/from16 v50, v16

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-wide v3, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v48

    move-wide v14, v6

    move-object v7, v11

    move-wide/from16 v5, v50

    move-object/from16 v11, v25

    move-wide/from16 v24, v39

    move-object/from16 v39, v49

    .end local v4    # "playlist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .end local v6    # "startOfPlaylistInPeriodUs":J
    .end local v11    # "initSegmentKeyUri":Landroid/net/Uri;
    .end local v12    # "mediaSegmentKeyUri":Landroid/net/Uri;
    .end local v13    # "bufferedDurationUs":J
    .end local v15    # "oldTrackIndex":I
    .end local v20    # "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local v1, "nextMediaSequenceAndPartIndex":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local v2, "oldTrackIndex":I
    .local v3, "bufferedDurationUs":J
    .local v5, "chunkMediaSequence":J
    .local v7, "initSegmentKeyUri":Landroid/net/Uri;
    .local v14, "startOfPlaylistInPeriodUs":J
    .local v16, "playlist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .local v17, "segmentBaseHolder":Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .local v39, "mediaSegmentKeyUri":Landroid/net/Uri;
    invoke-static/range {v11 .. v31}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->createInstance(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/datasource/DataSource;Landroidx/media3/common/Format;JLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;Landroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLandroidx/media3/exoplayer/hls/TimestampAdjusterProvider;JLandroidx/media3/exoplayer/hls/HlsMediaChunk;[B[BZLandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdData$Factory;)Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v11

    iput-object v11, v9, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 588
    return-void
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 2
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 743
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    return v0

    .line 744
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTrackGroup()Landroidx/media3/common/TrackGroup;
    .locals 1

    .line 242
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    return-object v0
.end method

.method public getTrackSelection()Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    return-object v0
.end method

.method public hasIndependentSegments()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    return v0
.end method

.method public maybeExcludeTrack(Landroidx/media3/exoplayer/source/chunk/Chunk;J)Z
    .locals 4
    .param p1, "chunk"    # Landroidx/media3/exoplayer/source/chunk/Chunk;
    .param p2, "exclusionDurationMs"    # J

    .line 656
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v3, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    .line 657
    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->indexOf(I)I

    move-result v1

    .line 656
    invoke-interface {v0, v1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->excludeTrack(IJ)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V

    .line 238
    :cond_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0
.end method

.method public obtainsChunksForPlaylist(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "playlistUrl"    # Landroid/net/Uri;

    .line 813
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onChunkLoadCompleted(Landroidx/media3/exoplayer/source/chunk/Chunk;)V
    .locals 4
    .param p1, "chunk"    # Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 639
    instance-of v0, p1, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_0

    .line 640
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 641
    .local v0, "encryptionKeyChunk":Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 642
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v2, v2, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    .line 644
    .end local v0    # "encryptionKeyChunk":Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    :cond_0
    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;J)Z
    .locals 6
    .param p1, "playlistUrl"    # Landroid/net/Uri;
    .param p2, "exclusionDurationMs"    # J

    .line 669
    const/4 v0, -0x1

    .line 670
    .local v0, "trackGroupIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 671
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    move v0, v1

    .line 673
    goto :goto_1

    .line 670
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 677
    return v2

    .line 679
    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->indexOf(I)I

    move-result v3

    .line 680
    .local v3, "trackSelectionIndex":I
    if-ne v3, v1, :cond_3

    .line 681
    return v2

    .line 683
    :cond_3
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    iput-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 684
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 685
    invoke-interface {v1, v3, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->excludeTrack(IJ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 686
    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->excludeMediaPlaylist(Landroid/net/Uri;J)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    nop

    .line 684
    :goto_3
    return v2
.end method

.method public reset()V
    .locals 1

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 267
    return-void
.end method

.method public setIsPrimaryTimestampSource(Z)V
    .locals 0
    .param p1, "isPrimaryTimestampSource"    # Z

    .line 276
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->isPrimaryTimestampSource:Z

    .line 277
    return-void
.end method

.method public setTrackSelection(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 0
    .param p1, "trackSelection"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 256
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 257
    return-void
.end method

.method public shouldCancelLoad(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 1
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadingChunk"    # Landroidx/media3/exoplayer/source/chunk/Chunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/media3/exoplayer/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 759
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 760
    const/4 v0, 0x0

    return v0

    .line 762
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.class public final Landroidx/media3/exoplayer/hls/offline/HlsDownloader;
.super Landroidx/media3/exoplayer/offline/SegmentDownloader;
.source "HlsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/offline/SegmentDownloader<",
        "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/cache/CacheDataSource$Factory;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "cacheDataSourceFactory"    # Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 78
    new-instance v0, Landroidx/media3/exoplayer/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 7
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "cacheDataSourceFactory"    # Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 93
    new-instance v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    invoke-direct {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>()V

    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local p2    # "cacheDataSourceFactory":Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .local v1, "mediaItem":Landroidx/media3/common/MediaItem;
    .local v3, "cacheDataSourceFactory":Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 7
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "cacheDataSourceFactory"    # Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;",
            "Landroidx/media3/datasource/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    .local p2, "manifestParser":Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;>;"
    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local p2    # "manifestParser":Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;>;"
    .end local p3    # "cacheDataSourceFactory":Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .local v1, "mediaItem":Landroidx/media3/common/MediaItem;
    .local v2, "manifestParser":Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;>;"
    .local v3, "cacheDataSourceFactory":Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "cacheDataSourceFactory"    # Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "maxMergedSegmentStartTimeDiffMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;",
            "Landroidx/media3/datasource/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            "J)V"
        }
    .end annotation

    .line 139
    .local p2, "manifestParser":Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;>;"
    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/offline/SegmentDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    .line 145
    return-void
.end method

.method private addMediaPlaylistDataSpecs(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/datasource/DataSpec;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p1, "mediaPlaylistUrls":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/datasource/DataSpec;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private addSegment(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "mediaPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .param p2, "segment"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p3, "seenEncryptionKeyUris":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .local p4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    iget-object v0, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    .line 200
    .local v0, "baseUri":Ljava/lang/String;
    iget-wide v1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v3, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long/2addr v1, v3

    .line 201
    .local v1, "startTimeUs":J
    iget-object v3, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    invoke-static {v0, v3}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 203
    .local v3, "keyUri":Landroid/net/Uri;
    invoke-virtual {p3, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    new-instance v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    invoke-static {v3}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;

    move-result-object v5

    invoke-direct {v4, v1, v2, v5}, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;-><init>(JLandroidx/media3/datasource/DataSpec;)V

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v3    # "keyUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v0, v3}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 208
    .local v5, "segmentUri":Landroid/net/Uri;
    new-instance v4, Landroidx/media3/datasource/DataSpec;

    iget-wide v6, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeOffset:J

    iget-wide v8, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    invoke-direct/range {v4 .. v9}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JJ)V

    .line 209
    .local v4, "dataSpec":Landroidx/media3/datasource/DataSpec;
    new-instance v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    invoke-direct {v3, v1, v2, v4}, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;-><init>(JLandroidx/media3/datasource/DataSpec;)V

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method


# virtual methods
.method protected getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;Z)Ljava/util/List;
    .locals 11
    .param p1, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p2, "manifest"    # Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;
    .param p3, "removing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSource;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "mediaPlaylistDataSpecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/datasource/DataSpec;>;"
    instance-of v1, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    if-eqz v1, :cond_0

    .line 152
    move-object v1, p2

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 153
    .local v1, "multivariantPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->mediaPlaylistUrls:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;->addMediaPlaylistDataSpecs(Ljava/util/List;Ljava/util/List;)V

    .line 154
    .end local v1    # "multivariantPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    goto :goto_0

    .line 155
    :cond_0
    iget-object v1, p2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 156
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v1, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v2, "seenEncryptionKeyUris":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/datasource/DataSpec;

    .line 162
    .local v4, "mediaPlaylistDataSpec":Landroidx/media3/datasource/DataSpec;
    new-instance v5, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7, v4}, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;-><init>(JLandroidx/media3/datasource/DataSpec;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :try_start_0
    invoke-virtual {p0, p1, v4, p3}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;->getManifest(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/exoplayer/offline/FilterableManifest;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .local v5, "mediaPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    nop

    .line 173
    const/4 v6, 0x0

    .line 174
    .local v6, "lastInitSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    iget-object v7, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 175
    .local v7, "hlsSegments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 176
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 177
    .local v9, "segment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    iget-object v10, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 178
    .local v10, "initSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    if-eqz v10, :cond_1

    if-eq v10, v6, :cond_1

    .line 179
    move-object v6, v10

    .line 180
    invoke-direct {p0, v5, v10, v2, v1}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;->addSegment(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    .line 182
    :cond_1
    invoke-direct {p0, v5, v9, v2, v1}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;->addSegment(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    .line 175
    .end local v9    # "segment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v10    # "initSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 184
    .end local v4    # "mediaPlaylistDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v5    # "mediaPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .end local v6    # "lastInitSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v7    # "hlsSegments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v8    # "i":I
    :cond_2
    goto :goto_1

    .line 166
    .restart local v4    # "mediaPlaylistDataSpec":Landroidx/media3/datasource/DataSpec;
    :catch_0
    move-exception v5

    .line 167
    .local v5, "e":Ljava/io/IOException;
    if-eqz p3, :cond_3

    .line 171
    goto :goto_1

    .line 168
    :cond_3
    throw v5

    .line 185
    .end local v4    # "mediaPlaylistDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    return-object v1
.end method

.method protected bridge synthetic getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/offline/FilterableManifest;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 67
    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;->getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

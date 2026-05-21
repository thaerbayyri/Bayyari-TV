.class final Landroidx/media3/exoplayer/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;
    }
.end annotation


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private final allowChunklessPreparation:Z

.field private audioVideoSampleStreamWrapperCount:I

.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

.field private compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

.field private final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field private final extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private manifestUrlIndicesPerWrapper:[[I

.field private mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field private final mediaTransferListener:Landroidx/media3/datasource/TransferListener;

.field private final metadataType:I

.field private pendingPrepareCount:I

.field private final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private final playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final sampleStreamWrapperCallback:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

.field private sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media3/exoplayer/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterInitializationTimeoutMs:J

.field private final timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

.field private trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field private final useSessionKeys:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;ZIZLandroidx/media3/exoplayer/analytics/PlayerId;J)V
    .locals 16
    .param p1, "extractorFactory"    # Landroidx/media3/exoplayer/hls/HlsExtractorFactory;
    .param p2, "playlistTracker"    # Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
    .param p3, "dataSourceFactory"    # Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;
    .param p4, "mediaTransferListener"    # Landroidx/media3/datasource/TransferListener;
    .param p5, "cmcdConfiguration"    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
    .param p6, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p7, "drmEventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    .param p8, "loadErrorHandlingPolicy"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .param p9, "eventDispatcher"    # Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .param p10, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p11, "compositeSequenceableLoaderFactory"    # Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;
    .param p12, "allowChunklessPreparation"    # Z
    .param p13, "metadataType"    # I
    .param p14, "useSessionKeys"    # Z
    .param p15, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p16, "timestampAdjusterInitializationTimeoutMs"    # J

    .line 145
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    .line 147
    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 148
    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->dataSourceFactory:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    .line 149
    move-object/from16 v4, p4

    iput-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    .line 150
    move-object/from16 v5, p5

    iput-object v5, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 151
    move-object/from16 v6, p6

    iput-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 152
    move-object/from16 v7, p7

    iput-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 153
    move-object/from16 v8, p8

    iput-object v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 154
    move-object/from16 v9, p9

    iput-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 155
    move-object/from16 v10, p10

    iput-object v10, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 156
    move-object/from16 v11, p11

    iput-object v11, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 157
    move/from16 v12, p12

    iput-boolean v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    .line 158
    move/from16 v13, p13

    iput v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->metadataType:I

    .line 159
    move/from16 v14, p14

    iput-boolean v14, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->useSessionKeys:Z

    .line 160
    move-object/from16 v15, p15

    iput-object v15, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 161
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterInitializationTimeoutMs:J

    .line 162
    new-instance v1, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;-><init>(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;Landroidx/media3/exoplayer/hls/HlsMediaPeriod$1;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrapperCallback:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    .line 163
    invoke-interface {v11}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->empty()Landroidx/media3/exoplayer/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 164
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 165
    new-instance v1, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    invoke-direct {v1}, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    .line 166
    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 167
    new-array v2, v1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 168
    new-array v1, v1, [[I

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    .line 169
    return-void
.end method

.method static synthetic access$106(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/hls/HlsMediaPeriod;

    .line 69
    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    return v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;)[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/hls/HlsMediaPeriod;

    .line 69
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    return-object v0
.end method

.method static synthetic access$302(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;Landroidx/media3/exoplayer/source/TrackGroupArray;)Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/hls/HlsMediaPeriod;
    .param p1, "x1"    # Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 69
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;)Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/hls/HlsMediaPeriod;

    .line 69
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/hls/HlsMediaPeriod;

    .line 69
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    return-object v0
.end method

.method private buildAndPrepareAudioSampleStreamWrappers(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 22
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 731
    .local p3, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local p4, "sampleStreamWrappers":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    .local p5, "manifestUrlsIndicesPerWrapper":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p6, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/common/DrmInitData;>;"
    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    .line 732
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    .local v1, "scratchPlaylistUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v2, Ljava/util/ArrayList;

    .line 734
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 735
    .local v2, "scratchPlaylistFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/Format;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 736
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 737
    .local v3, "scratchIndicesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 738
    .local v4, "alreadyGroupedNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 739
    .local v5, "renditionByNameIndex":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 741
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    iget-object v6, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    .line 742
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 744
    move-object/from16 v14, p0

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    goto/16 :goto_3

    .line 747
    :cond_0
    const/4 v7, 0x1

    .line 748
    .local v7, "codecStringsAllowChunklessPreparation":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 749
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 750
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 752
    const/4 v8, 0x0

    .local v8, "renditionIndex":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ge v8, v9, :cond_3

    .line 753
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    iget-object v9, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    invoke-static {v6, v9}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 754
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 755
    .local v9, "rendition":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v12, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v12, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Landroidx/media3/common/Format;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v12, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Landroidx/media3/common/Format;

    iget-object v12, v12, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 759
    invoke-static {v12, v10}, Landroidx/media3/common/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_1

    goto :goto_2

    :cond_1
    move v10, v11

    :goto_2
    and-int/2addr v7, v10

    .line 752
    .end local v9    # "rendition":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 763
    .end local v8    # "renditionIndex":I
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audio:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 764
    .local v13, "sampleStreamWrapperUid":Ljava/lang/String;
    new-array v8, v11, [Landroid/net/Uri;

    .line 768
    invoke-static {v8}, Landroidx/media3/common/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/net/Uri;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, [Landroid/net/Uri;

    new-array v8, v11, [Landroidx/media3/common/Format;

    .line 769
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, [Landroidx/media3/common/Format;

    .line 771
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 765
    const/4 v14, 0x1

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-wide/from16 v20, p1

    move-object/from16 v19, p6

    invoke-direct/range {v12 .. v21}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v8

    .line 774
    .local v8, "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v9

    move-object/from16 v12, p5

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    move-object/from16 v9, p4

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    move-object/from16 v14, p0

    iget-boolean v15, v14, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v15, :cond_4

    if-eqz v7, :cond_4

    .line 778
    new-array v15, v11, [Landroidx/media3/common/Format;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroidx/media3/common/Format;

    .line 779
    .local v15, "renditionFormats":[Landroidx/media3/common/Format;
    new-array v10, v10, [Landroidx/media3/common/TrackGroup;

    move/from16 v16, v11

    new-instance v11, Landroidx/media3/common/TrackGroup;

    invoke-direct {v11, v13, v15}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v11, v10, v16

    move/from16 v11, v16

    new-array v0, v11, [I

    invoke-virtual {v8, v10, v11, v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepareWithMultivariantPlaylistInfo([Landroidx/media3/common/TrackGroup;I[I)V

    .line 740
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "codecStringsAllowChunklessPreparation":Z
    .end local v8    # "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .end local v13    # "sampleStreamWrapperUid":Ljava/lang/String;
    .end local v15    # "renditionFormats":[Landroidx/media3/common/Format;
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    goto/16 :goto_0

    .line 739
    :cond_5
    move-object/from16 v14, p0

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    .line 784
    .end local v5    # "renditionByNameIndex":I
    return-void
.end method

.method private buildAndPrepareMainSampleStreamWrapper(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 29
    .param p1, "multivariantPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .param p2, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 598
    .local p4, "sampleStreamWrappers":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    .local p5, "manifestUrlIndicesPerWrapper":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p6, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/common/DrmInitData;>;"
    move-object/from16 v10, p1

    iget-object v0, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v11, v0, [I

    .line 599
    .local v11, "variantTypes":[I
    const/4 v0, 0x0

    .line 600
    .local v0, "videoVariantCount":I
    const/4 v1, 0x0

    .line 601
    .local v1, "audioVariantCount":I
    const/4 v2, 0x0

    move v12, v0

    move v13, v1

    .end local v0    # "videoVariantCount":I
    .end local v1    # "audioVariantCount":I
    .local v2, "i":I
    .local v12, "videoVariantCount":I
    .local v13, "audioVariantCount":I
    :goto_0
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v14, 0x1

    if-ge v2, v0, :cond_3

    .line 602
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 603
    .local v0, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 604
    .local v3, "format":Landroidx/media3/common/Format;
    iget v4, v3, Landroidx/media3/common/Format;->height:I

    if-gtz v4, :cond_2

    iget-object v4, v3, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v4, v1}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 607
    :cond_0
    iget-object v1, v3, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v14}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 608
    aput v14, v11, v2

    .line 609
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 611
    :cond_1
    const/4 v1, -0x1

    aput v1, v11, v2

    goto :goto_2

    .line 605
    :cond_2
    :goto_1
    aput v1, v11, v2

    .line 606
    add-int/lit8 v12, v12, 0x1

    .line 601
    .end local v0    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v3    # "format":Landroidx/media3/common/Format;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x0

    .line 615
    .local v0, "useVideoVariantsOnly":Z
    const/4 v2, 0x0

    .line 616
    .local v2, "useNonAudioVariantsOnly":Z
    array-length v3, v11

    .line 617
    .local v3, "selectedVariantsCount":I
    if-lez v12, :cond_4

    .line 621
    const/4 v0, 0x1

    .line 622
    move v3, v12

    move v15, v0

    move/from16 v16, v2

    move v0, v3

    goto :goto_3

    .line 623
    :cond_4
    array-length v4, v11

    if-ge v13, v4, :cond_5

    .line 626
    const/4 v2, 0x1

    .line 627
    array-length v4, v11

    sub-int v3, v4, v13

    move v15, v0

    move/from16 v16, v2

    move v0, v3

    goto :goto_3

    .line 623
    :cond_5
    move v15, v0

    move/from16 v16, v2

    move v0, v3

    .line 629
    .end local v2    # "useNonAudioVariantsOnly":Z
    .end local v3    # "selectedVariantsCount":I
    .local v0, "selectedVariantsCount":I
    .local v15, "useVideoVariantsOnly":Z
    .local v16, "useNonAudioVariantsOnly":Z
    :goto_3
    new-array v3, v0, [Landroid/net/Uri;

    .line 630
    .local v3, "selectedPlaylistUrls":[Landroid/net/Uri;
    new-array v4, v0, [Landroidx/media3/common/Format;

    .line 631
    .local v4, "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    new-array v2, v0, [I

    .line 632
    .local v2, "selectedVariantIndices":[I
    const/4 v5, 0x0

    .line 633
    .local v5, "outIndex":I
    const/4 v6, 0x0

    move/from16 v17, v5

    .end local v5    # "outIndex":I
    .local v6, "i":I
    .local v17, "outIndex":I
    :goto_4
    iget-object v5, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_9

    .line 634
    if-eqz v15, :cond_6

    aget v5, v11, v6

    if-ne v5, v1, :cond_8

    :cond_6
    if-eqz v16, :cond_7

    aget v5, v11, v6

    if-eq v5, v14, :cond_8

    .line 636
    :cond_7
    iget-object v5, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 637
    .local v5, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v7, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    aput-object v7, v3, v17

    .line 638
    iget-object v7, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    aput-object v7, v4, v17

    .line 639
    add-int/lit8 v7, v17, 0x1

    .end local v17    # "outIndex":I
    .local v7, "outIndex":I
    aput v6, v2, v17

    move/from16 v17, v7

    .line 633
    .end local v5    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v7    # "outIndex":I
    .restart local v17    # "outIndex":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 642
    .end local v6    # "i":I
    :cond_9
    const/4 v5, 0x0

    aget-object v6, v4, v5

    iget-object v6, v6, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 643
    .local v6, "codecs":Ljava/lang/String;
    invoke-static {v6, v1}, Landroidx/media3/common/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v1

    .line 644
    .local v1, "numberOfVideoCodecs":I
    invoke-static {v6, v14}, Landroidx/media3/common/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v7

    .line 645
    .local v7, "numberOfAudioCodecs":I
    if-eq v7, v14, :cond_a

    if-nez v7, :cond_b

    iget-object v8, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 647
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    if-gt v1, v14, :cond_b

    add-int v8, v7, v1

    if-lez v8, :cond_b

    move v8, v14

    goto :goto_5

    :cond_b
    move v8, v5

    :goto_5
    move/from16 v18, v8

    .line 652
    .local v18, "codecsStringAllowsChunklessPreparation":Z
    if-nez v15, :cond_c

    if-lez v7, :cond_c

    .line 653
    move v8, v14

    goto :goto_6

    .line 654
    :cond_c
    move v8, v5

    :goto_6
    nop

    .line 655
    .local v8, "trackType":I
    move v9, v1

    .end local v1    # "numberOfVideoCodecs":I
    .local v9, "numberOfVideoCodecs":I
    const-string v1, "main"

    .line 656
    .local v1, "sampleStreamWrapperUid":Ljava/lang/String;
    move/from16 v19, v5

    iget-object v5, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Landroidx/media3/common/Format;

    move-object/from16 v20, v6

    .end local v6    # "codecs":Ljava/lang/String;
    .local v20, "codecs":Ljava/lang/String;
    iget-object v6, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 657
    move v14, v0

    move/from16 v22, v7

    move/from16 v21, v9

    move/from16 v23, v12

    move/from16 v12, v19

    move-object/from16 v0, p0

    move-object/from16 v7, p6

    move-object/from16 v19, v11

    move-object v11, v2

    move v2, v8

    move-wide/from16 v8, p2

    .end local v0    # "selectedVariantsCount":I
    .end local v7    # "numberOfAudioCodecs":I
    .end local v8    # "trackType":I
    .end local v9    # "numberOfVideoCodecs":I
    .end local v12    # "videoVariantCount":I
    .local v2, "trackType":I
    .local v11, "selectedVariantIndices":[I
    .local v14, "selectedVariantsCount":I
    .local v19, "variantTypes":[I
    .local v21, "numberOfVideoCodecs":I
    .local v22, "numberOfAudioCodecs":I
    .local v23, "videoVariantCount":I
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v5

    .line 666
    .local v5, "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    move-object/from16 v6, p4

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    move-object/from16 v7, p5

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    iget-boolean v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v8, :cond_14

    if-eqz v18, :cond_14

    .line 669
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v8, "muxedTrackGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/TrackGroup;>;"
    if-lez v21, :cond_12

    .line 671
    new-array v9, v14, [Landroidx/media3/common/Format;

    .line 672
    .local v9, "videoFormats":[Landroidx/media3/common/Format;
    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v12, v24

    .local v12, "i":I
    :goto_7
    move/from16 v24, v2

    .end local v2    # "trackType":I
    .local v24, "trackType":I
    array-length v2, v9

    if-ge v12, v2, :cond_d

    .line 673
    aget-object v2, v4, v12

    invoke-static {v2}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->deriveVideoFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v2

    aput-object v2, v9, v12

    .line 672
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v24

    goto :goto_7

    .line 675
    .end local v12    # "i":I
    :cond_d
    new-instance v2, Landroidx/media3/common/TrackGroup;

    invoke-direct {v2, v1, v9}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    if-lez v22, :cond_10

    iget-object v2, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Landroidx/media3/common/Format;

    if-nez v2, :cond_f

    iget-object v2, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 679
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_8

    :cond_e
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    goto :goto_9

    .line 680
    :cond_f
    :goto_8
    new-instance v2, Landroidx/media3/common/TrackGroup;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v26, v3

    .end local v3    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .local v26, "selectedPlaylistUrls":[Landroid/net/Uri;
    const-string v3, ":audio"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v4

    const/4 v12, 0x1

    .end local v4    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    .local v27, "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    new-array v4, v12, [Landroidx/media3/common/Format;

    aget-object v12, v27, v25

    iget-object v6, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Landroidx/media3/common/Format;

    .line 683
    move/from16 v7, v25

    invoke-static {v12, v6, v7}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->deriveAudioFormat(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-direct {v2, v3, v4}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 680
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 677
    .end local v26    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .end local v27    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    .restart local v3    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .restart local v4    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    :cond_10
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    .line 688
    .end local v3    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .end local v4    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    .restart local v26    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .restart local v27    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    :goto_9
    iget-object v2, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 689
    .local v2, "ccFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    if-eqz v2, :cond_11

    .line 690
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_11

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":cc:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "ccId":Ljava/lang/String;
    new-instance v6, Landroidx/media3/common/TrackGroup;

    const/4 v12, 0x1

    new-array v7, v12, [Landroidx/media3/common/Format;

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    .line 693
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Landroidx/media3/common/Format;

    invoke-interface {v12, v0}, Landroidx/media3/exoplayer/hls/HlsExtractorFactory;->getOutputTextFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v0

    const/16 v25, 0x0

    aput-object v0, v7, v25

    invoke-direct {v6, v4, v7}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 692
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    .end local v4    # "ccId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    .line 696
    .end local v2    # "ccFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .end local v3    # "i":I
    .end local v9    # "videoFormats":[Landroidx/media3/common/Format;
    :cond_11
    goto :goto_c

    .line 698
    .end local v24    # "trackType":I
    .end local v26    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .end local v27    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    .local v2, "trackType":I
    .local v3, "selectedPlaylistUrls":[Landroid/net/Uri;
    .local v4, "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    :cond_12
    move/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    .end local v2    # "trackType":I
    .end local v3    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .end local v4    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    .restart local v24    # "trackType":I
    .restart local v26    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .restart local v27    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    new-array v0, v14, [Landroidx/media3/common/Format;

    .line 699
    .local v0, "audioFormats":[Landroidx/media3/common/Format;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 700
    aget-object v3, v27, v2

    iget-object v4, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Landroidx/media3/common/Format;

    .line 701
    const/4 v12, 0x1

    invoke-static {v3, v4, v12}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->deriveAudioFormat(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;

    move-result-object v3

    aput-object v3, v0, v2

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 706
    .end local v2    # "i":I
    :cond_13
    new-instance v2, Landroidx/media3/common/TrackGroup;

    invoke-direct {v2, v1, v0}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v0    # "audioFormats":[Landroidx/media3/common/Format;
    :goto_c
    new-instance v0, Landroidx/media3/common/TrackGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":id3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    new-array v3, v12, [Landroidx/media3/common/Format;

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 713
    const-string v6, "ID3"

    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 714
    const-string v6, "application/id3"

    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 715
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v3, v12

    invoke-direct {v0, v2, v3}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 716
    .local v0, "id3TrackGroup":Landroidx/media3/common/TrackGroup;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    new-array v2, v12, [Landroidx/media3/common/TrackGroup;

    .line 719
    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/common/TrackGroup;

    .line 721
    invoke-interface {v8, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    .line 718
    invoke-virtual {v5, v2, v12, v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepareWithMultivariantPlaylistInfo([Landroidx/media3/common/TrackGroup;I[I)V

    goto :goto_d

    .line 668
    .end local v0    # "id3TrackGroup":Landroidx/media3/common/TrackGroup;
    .end local v8    # "muxedTrackGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/TrackGroup;>;"
    .end local v24    # "trackType":I
    .end local v26    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .end local v27    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    .local v2, "trackType":I
    .restart local v3    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .restart local v4    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    :cond_14
    move/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    .line 723
    .end local v2    # "trackType":I
    .end local v3    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .end local v4    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    .restart local v24    # "trackType":I
    .restart local v26    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .restart local v27    # "selectedPlaylistFormats":[Landroidx/media3/common/Format;
    :goto_d
    return-void
.end method

.method private buildAndPrepareSampleStreamWrappers(J)V
    .locals 21
    .param p1, "positionUs"    # J

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 488
    invoke-interface {v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getMultivariantPlaylist()Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 490
    .local v1, "multivariantPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    iget-boolean v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->useSessionKeys:Z

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    invoke-static {v2}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->deriveOverridingDrmInitData(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    move-object v6, v2

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move-object v6, v2

    :goto_0
    nop

    .line 494
    .local v6, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/common/DrmInitData;>;"
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v10, 0x1

    xor-int/2addr v2, v10

    move v11, v2

    .line 495
    .local v11, "hasVariants":Z
    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 496
    .local v7, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    iget-object v12, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    .line 498
    .local v12, "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    const/4 v13, 0x0

    iput v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 499
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v4, "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v5, "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    if-eqz v11, :cond_1

    .line 503
    move-wide/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->buildAndPrepareMainSampleStreamWrapper(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    move-object v14, v1

    .end local v1    # "multivariantPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .local v14, "multivariantPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    goto :goto_1

    .line 502
    .end local v14    # "multivariantPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .restart local v1    # "multivariantPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    :cond_1
    move-object v14, v1

    .line 513
    .end local v1    # "multivariantPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .restart local v14    # "multivariantPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v7

    .end local v7    # "audioRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v3, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->buildAndPrepareAudioSampleStreamWrappers(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 520
    move-object v15, v3

    .end local v3    # "audioRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v15, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    .line 524
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 525
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 526
    .local v2, "subtitleRendition":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subtitle:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, "sampleStreamWrapperUid":Ljava/lang/String;
    iget-object v7, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Landroidx/media3/common/Format;

    .line 529
    .local v7, "originalSubtitleFormat":Landroidx/media3/common/Format;
    move v8, v1

    move-object v1, v3

    .end local v3    # "sampleStreamWrapperUid":Ljava/lang/String;
    .local v1, "sampleStreamWrapperUid":Ljava/lang/String;
    .local v8, "i":I
    new-array v3, v10, [Landroid/net/Uri;

    iget-object v9, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    aput-object v9, v3, v13

    move-object v9, v4

    .end local v4    # "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    .local v9, "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    new-array v4, v10, [Landroidx/media3/common/Format;

    aput-object v7, v4, v13

    .line 536
    move-object/from16 v16, v7

    move-object v7, v6

    .end local v6    # "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/common/DrmInitData;>;"
    .local v7, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/common/DrmInitData;>;"
    .local v16, "originalSubtitleFormat":Landroidx/media3/common/Format;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 530
    move-object/from16 v17, v2

    .end local v2    # "subtitleRendition":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;
    .local v17, "subtitleRendition":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;
    const/4 v2, 0x3

    move-object/from16 v18, v5

    .end local v5    # "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .local v18, "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    const/4 v5, 0x0

    move/from16 v20, v11

    move/from16 v19, v13

    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object v13, v9

    move-object/from16 v18, v17

    move/from16 v17, v8

    move-wide/from16 v8, p1

    .end local v8    # "i":I
    .end local v9    # "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    .end local v16    # "originalSubtitleFormat":Landroidx/media3/common/Format;
    .local v10, "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .local v11, "originalSubtitleFormat":Landroidx/media3/common/Format;
    .local v13, "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    .local v17, "i":I
    .local v18, "subtitleRendition":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;
    .local v20, "hasVariants":Z
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v2

    .line 539
    move-object v6, v7

    .end local v7    # "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/common/DrmInitData;>;"
    .local v2, "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .restart local v6    # "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/common/DrmInitData;>;"
    filled-new-array/range {v17 .. v17}, [I

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    const/4 v3, 0x1

    new-array v4, v3, [Landroidx/media3/common/TrackGroup;

    new-instance v5, Landroidx/media3/common/TrackGroup;

    new-array v7, v3, [Landroidx/media3/common/Format;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    .line 545
    invoke-interface {v3, v11}, Landroidx/media3/exoplayer/hls/HlsExtractorFactory;->getOutputTextFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v3

    aput-object v3, v7, v19

    invoke-direct {v5, v1, v7}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v5, v4, v19

    move/from16 v3, v19

    new-array v5, v3, [I

    .line 541
    invoke-virtual {v2, v4, v3, v5}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepareWithMultivariantPlaylistInfo([Landroidx/media3/common/TrackGroup;I[I)V

    .line 524
    .end local v1    # "sampleStreamWrapperUid":Ljava/lang/String;
    .end local v2    # "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .end local v11    # "originalSubtitleFormat":Landroidx/media3/common/Format;
    .end local v18    # "subtitleRendition":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;
    add-int/lit8 v1, v17, 0x1

    move-object v5, v10

    move-object v4, v13

    move/from16 v11, v20

    const/4 v10, 0x1

    move v13, v3

    .end local v17    # "i":I
    .local v1, "i":I
    goto/16 :goto_2

    .end local v10    # "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .end local v13    # "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    .end local v20    # "hasVariants":Z
    .restart local v4    # "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    .restart local v5    # "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .local v11, "hasVariants":Z
    :cond_2
    move/from16 v17, v1

    move-object v10, v5

    move/from16 v20, v11

    move v3, v13

    move-object v13, v4

    .line 550
    .end local v1    # "i":I
    .end local v4    # "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    .end local v5    # "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .end local v11    # "hasVariants":Z
    .restart local v10    # "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .restart local v13    # "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    .restart local v20    # "hasVariants":Z
    new-array v1, v3, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 551
    new-array v1, v3, [[I

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    .line 552
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v1

    iput v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 554
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    .line 557
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 554
    if-ge v1, v2, :cond_3

    .line 555
    aget-object v2, v4, v1

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->setIsPrimaryTimestampSource(Z)V

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 557
    .end local v1    # "i":I
    :cond_3
    array-length v1, v4

    :goto_4
    if-ge v3, v1, :cond_4

    aget-object v2, v4, v3

    .line 558
    .restart local v2    # "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 557
    .end local v2    # "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 561
    :cond_4
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 562
    return-void
.end method

.method private buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .locals 17
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "trackType"    # I
    .param p3, "playlistUrls"    # [Landroid/net/Uri;
    .param p4, "playlistFormats"    # [Landroidx/media3/common/Format;
    .param p5, "muxedAudioFormat"    # Landroidx/media3/common/Format;
    .param p8, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;J)",
            "Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    .line 795
    .local p6, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local p7, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/common/DrmInitData;>;"
    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->dataSourceFactory:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    iget-wide v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterInitializationTimeoutMs:J

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v13}, Landroidx/media3/exoplayer/hls/HlsChunkSource;-><init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;JLjava/util/List;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;)V

    move-object v6, v1

    .line 808
    .local v6, "defaultChunkSource":Landroidx/media3/exoplayer/hls/HlsChunkSource;
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrapperCallback:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iget-object v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v14, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v15, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->metadataType:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v11, p5

    move-object/from16 v7, p7

    move-wide/from16 v9, p8

    move/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;-><init>(Ljava/lang/String;ILandroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;Landroidx/media3/exoplayer/hls/HlsChunkSource;Ljava/util/Map;Landroidx/media3/exoplayer/upstream/Allocator;JLandroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;I)V

    return-object v2
.end method

.method private static deriveAudioFormat(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;
    .locals 13
    .param p0, "variantFormat"    # Landroidx/media3/common/Format;
    .param p1, "mediaTagFormat"    # Landroidx/media3/common/Format;
    .param p2, "isPrimaryTrackInVariant"    # Z

    .line 875
    const/4 v0, -0x1

    .line 876
    .local v0, "channelCount":I
    const/4 v1, 0x0

    .line 877
    .local v1, "selectionFlags":I
    const/4 v2, 0x0

    .line 878
    .local v2, "roleFlags":I
    const/4 v3, 0x0

    .line 879
    .local v3, "language":Ljava/lang/String;
    const/4 v4, 0x0

    .line 880
    .local v4, "label":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 881
    .local v5, "labels":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Label;>;"
    if-eqz p1, :cond_0

    .line 882
    iget-object v6, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 883
    .local v6, "codecs":Ljava/lang/String;
    iget-object v7, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 884
    .local v7, "metadata":Landroidx/media3/common/Metadata;
    iget v0, p1, Landroidx/media3/common/Format;->channelCount:I

    .line 885
    iget v1, p1, Landroidx/media3/common/Format;->selectionFlags:I

    .line 886
    iget v2, p1, Landroidx/media3/common/Format;->roleFlags:I

    .line 887
    iget-object v3, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 888
    iget-object v4, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 889
    iget-object v5, p1, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    goto :goto_0

    .line 891
    .end local v6    # "codecs":Ljava/lang/String;
    .end local v7    # "metadata":Landroidx/media3/common/Metadata;
    :cond_0
    iget-object v6, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 892
    .restart local v6    # "codecs":Ljava/lang/String;
    iget-object v7, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 893
    .restart local v7    # "metadata":Landroidx/media3/common/Metadata;
    if-eqz p2, :cond_1

    .line 894
    iget v0, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 895
    iget v1, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 896
    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 897
    iget-object v3, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 898
    iget-object v4, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 899
    iget-object v5, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 902
    :cond_1
    :goto_0
    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 903
    .local v8, "sampleMimeType":Ljava/lang/String;
    const/4 v9, -0x1

    if-eqz p2, :cond_2

    iget v10, p0, Landroidx/media3/common/Format;->averageBitrate:I

    goto :goto_1

    :cond_2
    move v10, v9

    .line 904
    .local v10, "averageBitrate":I
    :goto_1
    if-eqz p2, :cond_3

    iget v9, p0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 905
    .local v9, "peakBitrate":I
    :cond_3
    new-instance v11, Landroidx/media3/common/Format$Builder;

    invoke-direct {v11}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v12, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 906
    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 907
    invoke-virtual {v11, v4}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 908
    invoke-virtual {v11, v5}, Landroidx/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    iget-object v12, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 909
    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 910
    invoke-virtual {v11, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 911
    invoke-virtual {v11, v6}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 912
    invoke-virtual {v11, v7}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 913
    invoke-virtual {v11, v10}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 914
    invoke-virtual {v11, v9}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 915
    invoke-virtual {v11, v0}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 916
    invoke-virtual {v11, v1}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 917
    invoke-virtual {v11, v2}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 918
    invoke-virtual {v11, v3}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 919
    invoke-virtual {v11}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v11

    .line 905
    return-object v11
.end method

.method private static deriveOverridingDrmInitData(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation

    .line 826
    .local p0, "sessionKeyDrmInitData":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/DrmInitData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 827
    .local v0, "mutableSessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 828
    .local v1, "drmInitDataBySchemeType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 829
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/DrmInitData;

    .line 830
    .local v3, "drmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v4, v3, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 835
    .local v4, "scheme":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    .line 836
    .local v5, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 837
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/DrmInitData;

    .line 838
    .local v6, "nextDrmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v7, v6, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 839
    invoke-virtual {v3, v6}, Landroidx/media3/common/DrmInitData;->merge(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    .line 840
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 842
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 844
    .end local v6    # "nextDrmInitData":Landroidx/media3/common/DrmInitData;
    :goto_2
    goto :goto_1

    .line 845
    :cond_1
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .end local v3    # "drmInitData":Landroidx/media3/common/DrmInitData;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 847
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private static deriveVideoFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 4
    .param p0, "variantFormat"    # Landroidx/media3/common/Format;

    .line 851
    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "codecs":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "sampleMimeType":Ljava/lang/String;
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v3, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 854
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 855
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 856
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 857
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 858
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 859
    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 860
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 861
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 862
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/Format;->width:I

    .line 863
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/Format;->height:I

    .line 864
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 865
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 866
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 867
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 868
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    .line 853
    return-object v2
.end method

.method static synthetic lambda$selectTracks$0(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "sampleStreamWrapper"    # Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 384
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/TrackGroupArray;->getTrackTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 5
    .param p1, "loadingInfo"    # Landroidx/media3/exoplayer/LoadingInfo;

    .line 402
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    if-nez v0, :cond_1

    .line 404
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 405
    .local v4, "wrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 404
    .end local v4    # "wrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_0
    return v2

    .line 409
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .locals 4
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 390
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 391
    .local v3, "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->discardBuffer(JZ)V

    .line 390
    .end local v3    # "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 7
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;

    .line 451
    move-wide v0, p1

    .line 452
    .local v0, "seekTargetUs":J
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 453
    .local v5, "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    invoke-virtual {v5}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->isVideoSampleStream()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 454
    invoke-virtual {v5, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide v0

    .line 455
    goto :goto_1

    .line 452
    .end local v5    # "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 458
    :cond_1
    :goto_1
    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 430
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 420
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation

    .line 205
    .local p1, "trackSelections":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 206
    invoke-interface {v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getMultivariantPlaylist()Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 207
    .local v1, "multivariantPlaylist":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 208
    .local v2, "hasVariants":Z
    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 210
    .local v5, "audioWrapperOffset":I
    :goto_0
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v6, v6

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    .line 215
    .local v6, "subtitleWrapperOffset":I
    if-eqz v2, :cond_1

    .line 216
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    aget-object v7, v7, v4

    .line 217
    .local v7, "mainWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    aget-object v8, v8, v4

    .line 218
    .local v8, "mainWrapperVariantIndices":[I
    invoke-virtual {v7}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v9

    .line 219
    .local v9, "mainWrapperTrackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    invoke-virtual {v7}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->getPrimaryTrackGroupIndex()I

    move-result v7

    .line 220
    .local v7, "mainWrapperPrimaryGroupIndex":I
    goto :goto_1

    .line 221
    .end local v7    # "mainWrapperPrimaryGroupIndex":I
    .end local v8    # "mainWrapperVariantIndices":[I
    .end local v9    # "mainWrapperTrackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    :cond_1
    new-array v8, v4, [I

    .line 222
    .restart local v8    # "mainWrapperVariantIndices":[I
    sget-object v9, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 223
    .restart local v9    # "mainWrapperTrackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    const/4 v7, 0x0

    .line 226
    .restart local v7    # "mainWrapperPrimaryGroupIndex":I
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v10, "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/StreamKey;>;"
    const/4 v11, 0x0

    .line 228
    .local v11, "needsPrimaryTrackGroupSelection":Z
    const/4 v12, 0x0

    .line 229
    .local v12, "hasPrimaryTrackGroupSelection":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 230
    .local v14, "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    invoke-interface {v14}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v15

    .line 231
    .local v15, "trackSelectionGroup":Landroidx/media3/common/TrackGroup;
    invoke-virtual {v9, v15}, Landroidx/media3/exoplayer/source/TrackGroupArray;->indexOf(Landroidx/media3/common/TrackGroup;)I

    move-result v3

    .line 232
    .local v3, "mainWrapperTrackGroupIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 233
    if-ne v3, v7, :cond_3

    .line 235
    const/4 v4, 0x1

    .line 236
    .end local v12    # "hasPrimaryTrackGroupSelection":Z
    .local v4, "hasPrimaryTrackGroupSelection":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move/from16 v17, v2

    .end local v2    # "hasVariants":Z
    .local v17, "hasVariants":Z
    invoke-interface {v14}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 237
    invoke-interface {v14, v12}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v2

    aget v2, v8, v2

    .line 238
    .local v2, "variantIndex":I
    move/from16 v18, v3

    .end local v3    # "mainWrapperTrackGroupIndex":I
    .local v18, "mainWrapperTrackGroupIndex":I
    new-instance v3, Landroidx/media3/common/StreamKey;

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "hasPrimaryTrackGroupSelection":Z
    .local v19, "hasPrimaryTrackGroupSelection":Z
    invoke-direct {v3, v4, v2}, Landroidx/media3/common/StreamKey;-><init>(II)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v2    # "variantIndex":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    goto :goto_3

    .end local v18    # "mainWrapperTrackGroupIndex":I
    .end local v19    # "hasPrimaryTrackGroupSelection":Z
    .restart local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v4    # "hasPrimaryTrackGroupSelection":Z
    :cond_2
    move/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "mainWrapperTrackGroupIndex":I
    .end local v4    # "hasPrimaryTrackGroupSelection":Z
    .restart local v18    # "mainWrapperTrackGroupIndex":I
    .restart local v19    # "hasPrimaryTrackGroupSelection":Z
    move/from16 v12, v19

    move/from16 v19, v5

    .end local v12    # "i":I
    goto/16 :goto_7

    .line 243
    .end local v17    # "hasVariants":Z
    .end local v18    # "mainWrapperTrackGroupIndex":I
    .end local v19    # "hasPrimaryTrackGroupSelection":Z
    .local v2, "hasVariants":Z
    .restart local v3    # "mainWrapperTrackGroupIndex":I
    .local v12, "hasPrimaryTrackGroupSelection":Z
    :cond_3
    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "hasVariants":Z
    .end local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v17    # "hasVariants":Z
    .restart local v18    # "mainWrapperTrackGroupIndex":I
    const/4 v2, 0x1

    move v11, v2

    move/from16 v19, v5

    .end local v11    # "needsPrimaryTrackGroupSelection":Z
    .local v2, "needsPrimaryTrackGroupSelection":Z
    goto :goto_7

    .line 247
    .end local v17    # "hasVariants":Z
    .end local v18    # "mainWrapperTrackGroupIndex":I
    .local v2, "hasVariants":Z
    .restart local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v11    # "needsPrimaryTrackGroupSelection":Z
    :cond_4
    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "hasVariants":Z
    .end local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v17    # "hasVariants":Z
    .restart local v18    # "mainWrapperTrackGroupIndex":I
    move v2, v5

    .local v2, "i":I
    :goto_4
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 248
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v3

    .line 249
    .local v3, "wrapperTrackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    move/from16 v19, v5

    .end local v5    # "audioWrapperOffset":I
    .local v19, "audioWrapperOffset":I
    invoke-virtual {v3, v15}, Landroidx/media3/exoplayer/source/TrackGroupArray;->indexOf(Landroidx/media3/common/TrackGroup;)I

    move-result v5

    .line 250
    .local v5, "selectedTrackGroupIndex":I
    if-eq v5, v4, :cond_7

    .line 252
    if-ge v2, v6, :cond_5

    .line 253
    const/4 v4, 0x1

    goto :goto_5

    .line 254
    :cond_5
    const/4 v4, 0x2

    :goto_5
    nop

    .line 255
    .local v4, "groupIndexType":I
    move/from16 v20, v2

    .end local v2    # "i":I
    .local v20, "i":I
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    aget-object v2, v2, v20

    .line 256
    .local v2, "selectedWrapperUrlIndices":[I
    const/16 v21, 0x0

    move/from16 v0, v21

    .local v0, "trackIndex":I
    :goto_6
    move-object/from16 v21, v2

    .end local v2    # "selectedWrapperUrlIndices":[I
    .local v21, "selectedWrapperUrlIndices":[I
    invoke-interface {v14}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 257
    nop

    .line 258
    invoke-interface {v14, v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v2

    aget v2, v21, v2

    .line 259
    .local v2, "renditionIndex":I
    move/from16 v22, v0

    .end local v0    # "trackIndex":I
    .local v22, "trackIndex":I
    new-instance v0, Landroidx/media3/common/StreamKey;

    invoke-direct {v0, v4, v2}, Landroidx/media3/common/StreamKey;-><init>(II)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v2    # "renditionIndex":I
    add-int/lit8 v0, v22, 0x1

    move-object/from16 v2, v21

    .end local v22    # "trackIndex":I
    .restart local v0    # "trackIndex":I
    goto :goto_6

    :cond_6
    move/from16 v22, v0

    .line 261
    .end local v0    # "trackIndex":I
    goto :goto_7

    .line 250
    .end local v4    # "groupIndexType":I
    .end local v20    # "i":I
    .end local v21    # "selectedWrapperUrlIndices":[I
    .local v2, "i":I
    :cond_7
    move/from16 v20, v2

    .line 247
    .end local v2    # "i":I
    .end local v3    # "wrapperTrackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v5    # "selectedTrackGroupIndex":I
    .restart local v20    # "i":I
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v19

    .end local v20    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .end local v19    # "audioWrapperOffset":I
    .local v5, "audioWrapperOffset":I
    :cond_8
    move/from16 v20, v2

    move/from16 v19, v5

    .line 265
    .end local v2    # "i":I
    .end local v5    # "audioWrapperOffset":I
    .end local v14    # "trackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .end local v15    # "trackSelectionGroup":Landroidx/media3/common/TrackGroup;
    .end local v18    # "mainWrapperTrackGroupIndex":I
    .restart local v19    # "audioWrapperOffset":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v5, v19

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 266
    .end local v17    # "hasVariants":Z
    .end local v19    # "audioWrapperOffset":I
    .local v2, "hasVariants":Z
    .restart local v5    # "audioWrapperOffset":I
    :cond_9
    move/from16 v17, v2

    move/from16 v19, v5

    .end local v2    # "hasVariants":Z
    .end local v5    # "audioWrapperOffset":I
    .restart local v17    # "hasVariants":Z
    .restart local v19    # "audioWrapperOffset":I
    if-eqz v11, :cond_c

    if-nez v12, :cond_c

    .line 269
    const/16 v16, 0x0

    aget v0, v8, v16

    .line 270
    .local v0, "lowestBitrateIndex":I
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    aget v3, v8, v16

    .line 271
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->bitrate:I

    .line 272
    .local v2, "lowestBitrate":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_8
    array-length v4, v8

    if-ge v3, v4, :cond_b

    .line 273
    iget-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    aget v5, v8, v3

    .line 274
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    iget v4, v4, Landroidx/media3/common/Format;->bitrate:I

    .line 275
    .local v4, "variantBitrate":I
    if-ge v4, v2, :cond_a

    .line 276
    move v2, v4

    .line 277
    aget v0, v8, v3

    .line 272
    .end local v4    # "variantBitrate":I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 280
    .end local v3    # "i":I
    :cond_b
    new-instance v3, Landroidx/media3/common/StreamKey;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Landroidx/media3/common/StreamKey;-><init>(II)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v0    # "lowestBitrateIndex":I
    .end local v2    # "lowestBitrate":I
    :cond_c
    return-object v10
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    .line 196
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 415
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 189
    .local v3, "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    .line 188
    .end local v3    # "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public onPlaylistChanged()V
    .locals 4

    .line 467
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 468
    .local v3, "streamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->onPlaylistUpdated()V

    .line 467
    .end local v3    # "streamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 471
    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "loadErrorInfo"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    .param p3, "forceRetry"    # Z

    .line 476
    const/4 v0, 0x1

    .line 477
    .local v0, "exclusionSucceeded":Z
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 478
    .local v4, "streamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->onPlaylistError(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    move-result v5

    and-int/2addr v0, v5

    .line 477
    .end local v4    # "streamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 481
    return v0
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 1
    .param p1, "callback"    # Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 181
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 182
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->addListener(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 183
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers(J)V

    .line 184
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 425
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .line 397
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 398
    return-void
.end method

.method public release()V
    .locals 4

    .line 172
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->removeListener(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 173
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 174
    .local v3, "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->release()V

    .line 173
    .end local v3    # "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 177
    return-void
.end method

.method public seekToUs(J)J
    .locals 3
    .param p1, "positionUs"    # J

    .line 435
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 438
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    move-result v0

    .line 439
    .local v0, "forceReset":Z
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 440
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 443
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;->reset()V

    .line 446
    .end local v0    # "forceReset":Z
    :cond_1
    return-wide p1
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 20
    .param p1, "selections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media3/exoplayer/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    .line 295
    .local v3, "streamChildIndices":[I
    array-length v4, v1

    new-array v4, v4, [I

    .line 296
    .local v4, "selectionChildIndices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 297
    nop

    .line 298
    aget-object v6, v2, v5

    const/4 v7, -0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v8, v2, v5

    invoke-virtual {v6, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    aput v6, v3, v5

    .line 299
    aput v7, v4, v5

    .line 300
    aget-object v6, v1, v5

    if-eqz v6, :cond_2

    .line 301
    aget-object v6, v1, v5

    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v6

    .line 302
    .local v6, "trackGroup":Landroidx/media3/common/TrackGroup;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v9, v9

    if-ge v8, v9, :cond_2

    .line 303
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->indexOf(Landroidx/media3/common/TrackGroup;)I

    move-result v9

    if-eq v9, v7, :cond_1

    .line 304
    aput v8, v4, v5

    .line 305
    goto :goto_3

    .line 302
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 296
    .end local v6    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v8    # "j":I
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 311
    .end local v5    # "i":I
    :cond_3
    const/4 v5, 0x0

    .line 312
    .local v5, "forceReset":Z
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 314
    array-length v6, v1

    new-array v6, v6, [Landroidx/media3/exoplayer/source/SampleStream;

    .line 315
    .local v6, "newStreams":[Landroidx/media3/exoplayer/source/SampleStream;
    array-length v7, v1

    new-array v11, v7, [Landroidx/media3/exoplayer/source/SampleStream;

    .line 316
    .local v11, "childStreams":[Landroidx/media3/exoplayer/source/SampleStream;
    array-length v7, v1

    new-array v9, v7, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 317
    .local v9, "childSelections":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    const/4 v7, 0x0

    .line 318
    .local v7, "newEnabledSampleStreamWrapperCount":I
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v8, v8

    new-array v8, v8, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 320
    .local v8, "newEnabledSampleStreamWrappers":[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    const/4 v10, 0x0

    move v15, v5

    move v5, v10

    .local v5, "i":I
    .local v15, "forceReset":Z
    :goto_4
    iget-object v10, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v10, v10

    const/4 v12, 0x0

    if-ge v5, v10, :cond_10

    .line 321
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    array-length v13, v1

    if-ge v10, v13, :cond_6

    .line 322
    aget v13, v3, v10

    const/4 v14, 0x0

    if-ne v13, v5, :cond_4

    aget-object v13, v2, v10

    goto :goto_6

    :cond_4
    move-object v13, v14

    :goto_6
    aput-object v13, v11, v10

    .line 323
    aget v13, v4, v10

    if-ne v13, v5, :cond_5

    aget-object v14, v1, v10

    :cond_5
    aput-object v14, v9, v10

    .line 321
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 325
    .end local v10    # "j":I
    :cond_6
    iget-object v10, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    aget-object v10, v10, v5

    .line 326
    .local v10, "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    nop

    .line 327
    move-wide/from16 v13, p5

    move-object/from16 v16, v3

    move-object v3, v8

    move-object v8, v10

    move/from16 v17, v12

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    .end local v10    # "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .local v3, "newEnabledSampleStreamWrappers":[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .local v8, "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .local v16, "streamChildIndices":[I
    invoke-virtual/range {v8 .. v15}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJZ)Z

    move-result v18

    .line 334
    .local v18, "wasReset":Z
    const/4 v10, 0x0

    .line 335
    .local v10, "wrapperEnabled":Z
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_7
    array-length v13, v1

    if-ge v12, v13, :cond_a

    .line 336
    aget-object v13, v11, v12

    .line 337
    .local v13, "childStream":Landroidx/media3/exoplayer/source/SampleStream;
    aget v14, v4, v12

    if-ne v14, v5, :cond_7

    .line 339
    invoke-static {v13}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    aput-object v13, v6, v12

    .line 341
    const/4 v10, 0x1

    .line 342
    iget-object v14, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v13, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 343
    :cond_7
    aget v1, v16, v12

    if-ne v1, v5, :cond_9

    .line 345
    if-nez v13, :cond_8

    const/16 v19, 0x1

    goto :goto_8

    :cond_8
    move/from16 v19, v17

    :goto_8
    invoke-static/range {v19 .. v19}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 335
    .end local v13    # "childStream":Landroidx/media3/exoplayer/source/SampleStream;
    :cond_9
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    goto :goto_7

    .line 348
    .end local v12    # "j":I
    :cond_a
    if-eqz v10, :cond_f

    .line 349
    aput-object v8, v3, v7

    .line 350
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "newEnabledSampleStreamWrapperCount":I
    .local v1, "newEnabledSampleStreamWrapperCount":I
    if-nez v7, :cond_c

    .line 354
    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->setIsPrimaryTimestampSource(Z)V

    .line 355
    if-nez v18, :cond_b

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v7, v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    aget-object v7, v7, v17

    if-eq v8, v7, :cond_e

    .line 360
    :cond_b
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;->reset()V

    .line 361
    const/4 v7, 0x1

    move v15, v7

    move v7, v1

    .end local v15    # "forceReset":Z
    .local v7, "forceReset":Z
    goto :goto_b

    .line 368
    .end local v7    # "forceReset":Z
    .restart local v15    # "forceReset":Z
    :cond_c
    const/4 v7, 0x1

    iget v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    if-ge v5, v12, :cond_d

    move v12, v7

    goto :goto_a

    :cond_d
    move/from16 v12, v17

    :goto_a
    invoke-virtual {v8, v12}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->setIsPrimaryTimestampSource(Z)V

    .line 320
    .end local v8    # "sampleStreamWrapper":Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .end local v10    # "wrapperEnabled":Z
    .end local v18    # "wasReset":Z
    :cond_e
    move v7, v1

    .end local v1    # "newEnabledSampleStreamWrapperCount":I
    .local v7, "newEnabledSampleStreamWrapperCount":I
    :cond_f
    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object v8, v3

    move-object/from16 v3, v16

    goto/16 :goto_4

    .end local v16    # "streamChildIndices":[I
    .local v3, "streamChildIndices":[I
    .local v8, "newEnabledSampleStreamWrappers":[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    :cond_10
    move-object/from16 v16, v3

    move-object v3, v8

    move/from16 v17, v12

    .line 373
    .end local v5    # "i":I
    .end local v8    # "newEnabledSampleStreamWrappers":[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .local v3, "newEnabledSampleStreamWrappers":[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .restart local v16    # "streamChildIndices":[I
    array-length v1, v6

    move/from16 v5, v17

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    nop

    .line 376
    invoke-static {v3, v7}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 377
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 378
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 379
    .local v1, "enabledSampleStreamWrappersList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;>;"
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    new-instance v8, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$$ExternalSyntheticLambda0;-><init>()V

    .line 382
    invoke-static {v1, v8}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v8

    .line 380
    invoke-interface {v5, v1, v8}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->create(Ljava/util/List;Ljava/util/List;)Landroidx/media3/exoplayer/source/SequenceableLoader;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 385
    return-wide p5
.end method

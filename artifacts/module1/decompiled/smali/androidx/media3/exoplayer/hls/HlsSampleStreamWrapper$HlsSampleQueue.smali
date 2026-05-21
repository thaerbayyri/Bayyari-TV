.class final Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;
.super Landroidx/media3/exoplayer/source/SampleQueue;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HlsSampleQueue"
.end annotation


# instance fields
.field private drmInitData:Landroidx/media3/common/DrmInitData;

.field private final overridingDrmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;)V
    .locals 0
    .param p1, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p2, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p3, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/Allocator;",
            "Landroidx/media3/exoplayer/drm/DrmSessionManager;",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1687
    .local p4, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/common/DrmInitData;>;"
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 1688
    iput-object p4, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->overridingDrmInitData:Ljava/util/Map;

    .line 1689
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p2, "x1"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p3, "x2"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    .param p4, "x3"    # Ljava/util/Map;
    .param p5, "x4"    # Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$1;

    .line 1657
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;)V

    return-void
.end method

.method private getAdjustedMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;
    .locals 8
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 1736
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1737
    return-object v0

    .line 1739
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->length()I

    move-result v1

    .line 1740
    .local v1, "length":I
    const/4 v2, -0x1

    .line 1741
    .local v2, "transportStreamTimestampMetadataIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1742
    invoke-virtual {p1, v3}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v4

    .line 1743
    .local v4, "metadataEntry":Landroidx/media3/common/Metadata$Entry;
    instance-of v5, v4, Landroidx/media3/extractor/metadata/id3/PrivFrame;

    if-eqz v5, :cond_1

    .line 1744
    move-object v5, v4

    check-cast v5, Landroidx/media3/extractor/metadata/id3/PrivFrame;

    .line 1745
    .local v5, "privFrame":Landroidx/media3/extractor/metadata/id3/PrivFrame;
    const-string v6, "com.apple.streaming.transportStreamTimestamp"

    iget-object v7, v5, Landroidx/media3/extractor/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1746
    move v2, v3

    .line 1747
    goto :goto_1

    .line 1741
    .end local v4    # "metadataEntry":Landroidx/media3/common/Metadata$Entry;
    .end local v5    # "privFrame":Landroidx/media3/extractor/metadata/id3/PrivFrame;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1751
    .end local v3    # "i":I
    :cond_2
    :goto_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1752
    return-object p1

    .line 1754
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 1755
    return-object v0

    .line 1757
    :cond_4
    add-int/lit8 v0, v1, -0x1

    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    .line 1758
    .local v0, "newMetadataEntries":[Landroidx/media3/common/Metadata$Entry;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_7

    .line 1759
    if-eq v3, v2, :cond_6

    .line 1760
    if-ge v3, v2, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v3, -0x1

    .line 1761
    .local v4, "newIndex":I
    :goto_3
    invoke-virtual {p1, v3}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1758
    .end local v4    # "newIndex":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1764
    .end local v3    # "i":I
    :cond_7
    new-instance v3, Landroidx/media3/common/Metadata;

    invoke-direct {v3, v0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object v3
.end method


# virtual methods
.method public getAdjustedUpstreamFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 3
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 1715
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->drmInitData:Landroidx/media3/common/DrmInitData;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 1716
    .local v0, "drmInitData":Landroidx/media3/common/DrmInitData;
    :goto_0
    if-eqz v0, :cond_1

    .line 1718
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->overridingDrmInitData:Ljava/util/Map;

    iget-object v2, v0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/DrmInitData;

    .line 1719
    .local v1, "overridingDrmInitData":Landroidx/media3/common/DrmInitData;
    if-eqz v1, :cond_1

    .line 1720
    move-object v0, v1

    .line 1723
    .end local v1    # "overridingDrmInitData":Landroidx/media3/common/DrmInitData;
    :cond_1
    iget-object v1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->getAdjustedMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    .line 1724
    .local v1, "metadata":Landroidx/media3/common/Metadata;
    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-ne v0, v2, :cond_2

    iget-object v2, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eq v1, v2, :cond_3

    .line 1725
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 1727
    :cond_3
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getAdjustedUpstreamFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v2

    return-object v2
.end method

.method public sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 0
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 1782
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/source/SampleQueue;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1783
    return-void
.end method

.method public setDrmInitData(Landroidx/media3/common/DrmInitData;)V
    .locals 0
    .param p1, "drmInitData"    # Landroidx/media3/common/DrmInitData;

    .line 1707
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 1708
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->invalidateUpstreamFormatAdjustment()V

    .line 1709
    return-void
.end method

.method public setSourceChunk(Landroidx/media3/exoplayer/hls/HlsMediaChunk;)V
    .locals 2
    .param p1, "chunk"    # Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    .line 1692
    iget v0, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->uid:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->sourceId(J)V

    .line 1704
    return-void
.end method

.class public final Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
.super Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# instance fields
.field public final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;",
            ">;"
        }
    .end annotation
.end field

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "byteRangeOffset"    # J
    .param p4, "byteRangeLength"    # J
    .param p6, "fullSegmentEncryptionKeyUri"    # Ljava/lang/String;
    .param p7, "encryptionIV"    # Ljava/lang/String;

    .line 121
    nop

    .line 134
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v17

    .line 121
    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v17}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "initializationSegment"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "durationUs"    # J
    .param p6, "relativeDiscontinuitySequence"    # I
    .param p7, "relativeStartTimeUs"    # J
    .param p9, "drmInitData"    # Landroidx/media3/common/DrmInitData;
    .param p10, "fullSegmentEncryptionKeyUri"    # Ljava/lang/String;
    .param p11, "encryptionIV"    # Ljava/lang/String;
    .param p12, "byteRangeOffset"    # J
    .param p14, "byteRangeLength"    # J
    .param p16, "hasGapTag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;",
            "Ljava/lang/String;",
            "JIJ",
            "Landroidx/media3/common/DrmInitData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p17, "parts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    move/from16 v15, p16

    invoke-direct/range {v0 .. v16}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$1;)V

    .line 180
    move-object/from16 v1, p3

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->title:Ljava/lang/String;

    .line 181
    invoke-static/range {p17 .. p17}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 182
    return-void
.end method


# virtual methods
.method public copyWith(JI)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .locals 22
    .param p1, "relativeStartTimeUs"    # J
    .param p3, "relativeDiscontinuitySequence"    # I

    .line 185
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "updatedParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    move-wide/from16 v2, p1

    .line 187
    .local v2, "relativePartStartTimeUs":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 188
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 189
    .local v5, "part":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;
    move/from16 v8, p3

    invoke-virtual {v5, v2, v3, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->copyWith(JI)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-wide v6, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->durationUs:J

    add-long/2addr v2, v6

    .line 187
    .end local v5    # "part":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move/from16 v8, p3

    .line 192
    .end local v4    # "i":I
    move-wide v3, v2

    .end local v2    # "relativePartStartTimeUs":J
    .local v3, "relativePartStartTimeUs":J
    new-instance v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-wide v4, v3

    .end local v3    # "relativePartStartTimeUs":J
    .local v4, "relativePartStartTimeUs":J
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    move-wide v5, v4

    .end local v4    # "relativePartStartTimeUs":J
    .local v5, "relativePartStartTimeUs":J
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-wide v6, v5

    .end local v5    # "relativePartStartTimeUs":J
    .local v6, "relativePartStartTimeUs":J
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->title:Ljava/lang/String;

    move-wide v9, v6

    .end local v6    # "relativePartStartTimeUs":J
    .local v9, "relativePartStartTimeUs":J
    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    iget-object v13, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-wide v14, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeOffset:J

    move-object/from16 v19, v1

    move-object/from16 v16, v2

    .end local v1    # "updatedParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v19, "updatedParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    move-wide/from16 v17, v1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->hasGapTag:Z

    move-wide/from16 v20, v9

    move-object/from16 v2, v16

    move-wide/from16 v16, v17

    move-wide/from16 v9, p1

    move/from16 v18, v1

    .end local v9    # "relativePartStartTimeUs":J
    .local v20, "relativePartStartTimeUs":J
    invoke-direct/range {v2 .. v19}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object/from16 v16, v2

    return-object v16
.end method

.class public final synthetic Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$-CC;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"


# direct methods
.method public static $default$getLatestBitrateEstimate(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)J
    .locals 2
    .param p0, "_this"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 303
    const-wide/32 v0, -0x7fffffff

    return-wide v0
.end method

.method public static $default$onDiscontinuity(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 158
    return-void
.end method

.method public static $default$onPlayWhenReadyChanged(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .param p1, "playWhenReady"    # Z

    .line 174
    return-void
.end method

.method public static $default$onRebuffer(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 167
    return-void
.end method

.method public static $default$shouldCancelChunkLoad(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadingChunk"    # Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 266
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    const/4 v0, 0x0

    return v0
.end method

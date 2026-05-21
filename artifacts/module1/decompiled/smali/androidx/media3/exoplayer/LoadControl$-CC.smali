.class public final synthetic Landroidx/media3/exoplayer/LoadControl$-CC;
.super Ljava/lang/Object;
.source "LoadControl.java"


# direct methods
.method public static $default$onTracksSelected(Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/LoadControl;
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "renderers"    # [Landroidx/media3/exoplayer/Renderer;
    .param p4, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p5, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 62
    invoke-interface {p0, p3, p4, p5}, Landroidx/media3/exoplayer/LoadControl;->onTracksSelected([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 63
    return-void
.end method

.method public static $default$onTracksSelected(Landroidx/media3/exoplayer/LoadControl;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 6
    .param p0, "_this"    # Landroidx/media3/exoplayer/LoadControl;
    .param p1, "renderers"    # [Landroidx/media3/exoplayer/Renderer;
    .param p2, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "trackSelections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    sget-object v1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    sget-object v2, Landroidx/media3/exoplayer/LoadControl;->EMPTY_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "renderers":[Landroidx/media3/exoplayer/Renderer;
    .end local p2    # "trackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local p3    # "trackSelections":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .local v3, "renderers":[Landroidx/media3/exoplayer/Renderer;
    .local v4, "trackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .local v5, "trackSelections":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/LoadControl;->onTracksSelected(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 75
    return-void
.end method

.method public static $default$shouldStartPlayback(Landroidx/media3/exoplayer/LoadControl;JFZJ)Z
    .locals 9
    .param p0, "_this"    # Landroidx/media3/exoplayer/LoadControl;
    .param p1, "bufferedDurationUs"    # J
    .param p3, "playbackSpeed"    # F
    .param p4, "rebuffering"    # Z
    .param p5, "targetLiveOffsetUs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    sget-object v1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    sget-object v2, Landroidx/media3/exoplayer/LoadControl;->EMPTY_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-wide v7, p5

    .end local p1    # "bufferedDurationUs":J
    .end local p3    # "playbackSpeed":F
    .end local p4    # "rebuffering":Z
    .end local p5    # "targetLiveOffsetUs":J
    .local v3, "bufferedDurationUs":J
    .local v5, "playbackSpeed":F
    .local v6, "rebuffering":Z
    .local v7, "targetLiveOffsetUs":J
    invoke-interface/range {v0 .. v8}, Landroidx/media3/exoplayer/LoadControl;->shouldStartPlayback(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)Z

    move-result p1

    return p1
.end method

.method public static $default$shouldStartPlayback(Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)Z
    .locals 7
    .param p0, "_this"    # Landroidx/media3/exoplayer/LoadControl;
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "bufferedDurationUs"    # J
    .param p5, "playbackSpeed"    # F
    .param p6, "rebuffering"    # Z
    .param p7, "targetLiveOffsetUs"    # J

    .line 165
    move-object v0, p0

    move-wide v1, p3

    move v3, p5

    move v4, p6

    move-wide v5, p7

    .end local p3    # "bufferedDurationUs":J
    .end local p5    # "playbackSpeed":F
    .end local p6    # "rebuffering":Z
    .end local p7    # "targetLiveOffsetUs":J
    .local v1, "bufferedDurationUs":J
    .local v3, "playbackSpeed":F
    .local v4, "rebuffering":Z
    .local v5, "targetLiveOffsetUs":J
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/LoadControl;->shouldStartPlayback(JFZJ)Z

    move-result p3

    return p3
.end method

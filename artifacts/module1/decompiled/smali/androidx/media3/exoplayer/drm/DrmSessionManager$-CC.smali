.class public final synthetic Landroidx/media3/exoplayer/drm/DrmSessionManager$-CC;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# direct methods
.method public static $default$preacquireSession(Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p1, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    .param p2, "format"    # Landroidx/media3/common/Format;

    .line 152
    sget-object v0, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    return-object v0
.end method

.method public static $default$prepare(Landroidx/media3/exoplayer/drm/DrmSessionManager;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 99
    return-void
.end method

.method public static $default$release(Landroidx/media3/exoplayer/drm/DrmSessionManager;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 104
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/drm/DrmSessionManager;->DRM_UNSUPPORTED:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    return-void
.end method

.method public static getDummyDrmSessionManager()Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    sget-object v0, Landroidx/media3/exoplayer/drm/DrmSessionManager;->DRM_UNSUPPORTED:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    return-object v0
.end method

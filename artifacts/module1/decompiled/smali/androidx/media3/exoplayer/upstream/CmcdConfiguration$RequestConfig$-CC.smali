.class public final synthetic Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig$-CC;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# direct methods
.method public static $default$getCustomData(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 210
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getRequestedMaximumThroughputKbps(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;I)I
    .locals 1
    .param p0, "_this"    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;
    .param p1, "throughputKbps"    # I

    .line 221
    const v0, -0x7fffffff

    return v0
.end method

.method public static $default$isKeyAllowed(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;Ljava/lang/String;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;
    .param p1, "key"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    return v0
.end method

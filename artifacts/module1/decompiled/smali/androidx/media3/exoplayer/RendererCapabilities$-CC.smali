.class public final synthetic Landroidx/media3/exoplayer/RendererCapabilities$-CC;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# direct methods
.method public static $default$clearListener(Landroidx/media3/exoplayer/RendererCapabilities;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/RendererCapabilities;

    .line 526
    return-void
.end method

.method public static $default$setListener(Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/RendererCapabilities$Listener;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/RendererCapabilities;
    .param p1, "listener"    # Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    .line 521
    return-void
.end method

.method public static create(I)I
    .locals 1
    .param p0, "formatSupport"    # I

    .line 287
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Landroidx/media3/exoplayer/RendererCapabilities$-CC;->create(IIII)I

    move-result v0

    return v0
.end method

.method public static create(III)I
    .locals 6
    .param p0, "formatSupport"    # I
    .param p1, "adaptiveSupport"    # I
    .param p2, "tunnelingSupport"    # I

    .line 311
    const/16 v4, 0x80

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    .end local p0    # "formatSupport":I
    .end local p1    # "adaptiveSupport":I
    .end local p2    # "tunnelingSupport":I
    .local v0, "formatSupport":I
    .local v1, "adaptiveSupport":I
    .local v2, "tunnelingSupport":I
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/RendererCapabilities$-CC;->create(IIIIII)I

    move-result p0

    return p0
.end method

.method public static create(IIII)I
    .locals 6
    .param p0, "formatSupport"    # I
    .param p1, "adaptiveSupport"    # I
    .param p2, "tunnelingSupport"    # I
    .param p3, "audioOffloadSupport"    # I

    .line 338
    const/4 v3, 0x0

    const/16 v4, 0x80

    move v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .end local p0    # "formatSupport":I
    .end local p1    # "adaptiveSupport":I
    .end local p2    # "tunnelingSupport":I
    .end local p3    # "audioOffloadSupport":I
    .local v0, "formatSupport":I
    .local v1, "adaptiveSupport":I
    .local v2, "tunnelingSupport":I
    .local v5, "audioOffloadSupport":I
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/RendererCapabilities$-CC;->create(IIIIII)I

    move-result p0

    return p0
.end method

.method public static create(IIIII)I
    .locals 6
    .param p0, "formatSupport"    # I
    .param p1, "adaptiveSupport"    # I
    .param p2, "tunnelingSupport"    # I
    .param p3, "hardwareAccelerationSupport"    # I
    .param p4, "decoderSupport"    # I

    .line 367
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p0    # "formatSupport":I
    .end local p1    # "adaptiveSupport":I
    .end local p2    # "tunnelingSupport":I
    .end local p3    # "hardwareAccelerationSupport":I
    .end local p4    # "decoderSupport":I
    .local v0, "formatSupport":I
    .local v1, "adaptiveSupport":I
    .local v2, "tunnelingSupport":I
    .local v3, "hardwareAccelerationSupport":I
    .local v4, "decoderSupport":I
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/RendererCapabilities$-CC;->create(IIIIII)I

    move-result p0

    return p0
.end method

.method public static create(IIIIII)I
    .locals 1
    .param p0, "formatSupport"    # I
    .param p1, "adaptiveSupport"    # I
    .param p2, "tunnelingSupport"    # I
    .param p3, "hardwareAccelerationSupport"    # I
    .param p4, "decoderSupport"    # I
    .param p5, "audioOffloadSupport"    # I

    .line 398
    or-int v0, p0, p1

    or-int/2addr v0, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p4

    or-int/2addr v0, p5

    return v0
.end method

.method public static getAdaptiveSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 427
    and-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static getAudioOffloadSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 476
    and-int/lit16 v0, p0, 0xe00

    return v0
.end method

.method public static getDecoderSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 464
    and-int/lit16 v0, p0, 0x180

    return v0
.end method

.method public static getFormatSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 415
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static getHardwareAccelerationSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 452
    and-int/lit8 v0, p0, 0x40

    return v0
.end method

.method public static getTunnelingSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 439
    and-int/lit8 v0, p0, 0x20

    return v0
.end method

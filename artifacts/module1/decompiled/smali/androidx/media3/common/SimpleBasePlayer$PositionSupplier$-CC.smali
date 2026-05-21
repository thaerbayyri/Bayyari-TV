.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$-CC;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-void
.end method

.method public static getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 1
    .param p0, "positionMs"    # J

    .line 1985
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1;-><init>(J)V

    return-object v0
.end method

.method public static getExtrapolating(JF)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 6
    .param p0, "currentPositionMs"    # J
    .param p2, "playbackSpeed"    # F

    .line 1995
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1996
    .local v3, "startTimeMs":J
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;

    move-wide v1, p0

    move v5, p2

    .end local p0    # "currentPositionMs":J
    .end local p2    # "playbackSpeed":F
    .local v1, "currentPositionMs":J
    .local v5, "playbackSpeed":F
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;-><init>(JJF)V

    return-object v0
.end method

.method public static synthetic lambda$getConstant$0(J)J
    .locals 0
    .param p0, "positionMs"    # J

    .line 1985
    return-wide p0
.end method

.method public static synthetic lambda$getExtrapolating$1(JJF)J
    .locals 4
    .param p0, "currentPositionMs"    # J
    .param p2, "startTimeMs"    # J
    .param p4, "playbackSpeed"    # F

    .line 1997
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1998
    .local v0, "currentTimeMs":J
    sub-long v2, v0, p2

    long-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-long v2, v2

    add-long/2addr v2, p0

    return-wide v2
.end method

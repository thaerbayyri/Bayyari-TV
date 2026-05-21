.class public final synthetic Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper$Listener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;"
    method = "updateDefaultDisplayRefreshRateParams"
    proto = "(Landroid/view/Display;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    return-void
.end method


# virtual methods
.method public final onDefaultDisplayChanged(Landroid/view/Display;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->$r8$lambda$Ry__J1-thZXs_aGVueUZ1K6dDEA(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/view/Display;)V

    return-void
.end method

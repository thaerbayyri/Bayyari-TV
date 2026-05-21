.class public final synthetic Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;"
    method = "lambda$onSurfaceTextureDestroyed$3"
    proto = "(Landroidx/media3/session/IMediaSession;I)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media3/session/IMediaSession;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;->lambda$onSurfaceTextureDestroyed$3$androidx-media3-session-MediaControllerImplBase$SurfaceCallback(Landroidx/media3/session/IMediaSession;I)V

    return-void
.end method

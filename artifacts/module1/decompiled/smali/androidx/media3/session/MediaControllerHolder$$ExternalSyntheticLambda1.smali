.class public final synthetic Landroidx/media3/session/MediaControllerHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/session/MediaControllerHolder;"
    method = "lambda$setController$1"
    proto = "(Ljava/lang/Runnable;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaControllerHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerHolder$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/session/MediaControllerHolder;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerHolder$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/session/MediaControllerHolder;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaControllerHolder;->lambda$setController$1$androidx-media3-session-MediaControllerHolder(Ljava/lang/Runnable;)V

    return-void
.end method

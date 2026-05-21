.class public final synthetic Lcom/google/common/util/concurrent/AbstractExecutionThreadService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/common/util/concurrent/AbstractExecutionThreadService;"
    method = "lambda$executor$0"
    proto = "(Ljava/lang/Runnable;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->lambda$executor$0$com-google-common-util-concurrent-AbstractExecutionThreadService(Ljava/lang/Runnable;)V

    return-void
.end method

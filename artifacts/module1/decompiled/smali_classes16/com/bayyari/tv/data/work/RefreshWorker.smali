.class public final Lcom/bayyari/tv/data/work/RefreshWorker;
.super Landroidx/work/CoroutineWorker;
.source "RefreshWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/data/work/RefreshWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB-\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u000c\u001a\u00020\rH\u0096@\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/bayyari/tv/data/work/RefreshWorker;",
        "Landroidx/work/CoroutineWorker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "liveRepository",
        "Lcom/bayyari/tv/data/repository/LiveRepository;",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/bayyari/tv/data/work/RefreshWorker$Companion;

.field private static final constraints:Landroidx/work/Constraints;


# instance fields
.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bayyari/tv/data/work/RefreshWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bayyari/tv/data/work/RefreshWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bayyari/tv/data/work/RefreshWorker;->Companion:Lcom/bayyari/tv/data/work/RefreshWorker$Companion;

    .line 35
    nop

    .line 33
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 34
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    sput-object v0, Lcom/bayyari/tv/data/work/RefreshWorker;->constraints:Landroidx/work/Constraints;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .param p2, "params"    # Landroidx/work/WorkerParameters;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .param p3, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p4, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .annotation runtime Ldagger/assisted/AssistedInject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 18
    iput-object p3, p0, Lcom/bayyari/tv/data/work/RefreshWorker;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 19
    iput-object p4, p0, Lcom/bayyari/tv/data/work/RefreshWorker;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 15
    return-void
.end method

.method public static final synthetic access$getConstraints$cp()Landroidx/work/Constraints;
    .locals 1

    .line 14
    sget-object v0, Lcom/bayyari/tv/data/work/RefreshWorker;->constraints:Landroidx/work/Constraints;

    return-object v0
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;

    iget v1, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;-><init>(Lcom/bayyari/tv/data/work/RefreshWorker;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 22
    iget v3, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->I$0:I

    .local v2, "$i$a$-runCatching-RefreshWorker$doWork$2\\1\\24\\0":I
    iget-object v3, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/bayyari/tv/data/work/RefreshWorker;

    .local v3, "$this$doWork_u24lambda_u240\\1":Lcom/bayyari/tv/data/work/RefreshWorker;
    iget-object v4, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/bayyari/tv/domain/model/Server;

    .local v4, "server":Lcom/bayyari/tv/domain/model/Server;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v1

    goto :goto_1

    .line 24
    .end local v2    # "$i$a$-runCatching-RefreshWorker$doWork$2\\1\\24\\0":I
    .end local v3    # "$this$doWork_u24lambda_u240\\1":Lcom/bayyari/tv/data/work/RefreshWorker;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 22
    .end local v4    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object v3, p0, Lcom/bayyari/tv/data/work/RefreshWorker;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-virtual {v3}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    const-string v3, "success(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_1
    move-object v4, v3

    .line 24
    .restart local v4    # "server":Lcom/bayyari/tv/domain/model/Server;
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/bayyari/tv/data/work/RefreshWorker;

    .restart local v3    # "$this$doWork_u24lambda_u240\\1":Lcom/bayyari/tv/data/work/RefreshWorker;
    const/4 v5, 0x0

    .line 25
    .local v5, "$i$a$-runCatching-RefreshWorker$doWork$2\\1\\24\\0":I
    iget-object v6, v3, Lcom/bayyari/tv/data/work/RefreshWorker;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->I$0:I

    const/4 v7, 0x1

    iput v7, v0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->label:I

    invoke-virtual {v6, v4, v0}, Lcom/bayyari/tv/data/repository/LiveRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_2

    .line 22
    return-object v2

    .line 25
    :cond_2
    move v2, v5

    .end local v5    # "$i$a$-runCatching-RefreshWorker$doWork$2\\1\\24\\0":I
    .restart local v2    # "$i$a$-runCatching-RefreshWorker$doWork$2\\1\\24\\0":I
    :goto_1
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    .end local v2    # "$i$a$-runCatching-RefreshWorker$doWork$2\\1\\24\\0":I
    .end local v3    # "$this$doWork_u24lambda_u240\\1":Lcom/bayyari/tv/data/work/RefreshWorker;
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    :goto_3
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "it\\2":I
    const/4 v3, 0x0

    .line 27
    .local v3, "$i$a$-fold-RefreshWorker$doWork$3\\2\\26\\0":I
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    .end local v2    # "it\\2":I
    .end local v3    # "$i$a$-fold-RefreshWorker$doWork$3\\2\\26\\0":I
    goto :goto_4

    .line 26
    .local v3, "it\\3":Ljava/lang/Throwable;
    :cond_3
    const/4 v2, 0x0

    .line 28
    .local v2, "$i$a$-fold-RefreshWorker$doWork$4\\3\\26\\0":I
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    .line 26
    .end local v2    # "$i$a$-fold-RefreshWorker$doWork$4\\3\\26\\0":I
    .end local v3    # "it\\3":Ljava/lang/Throwable;
    :goto_4
    const-string v3, "fold(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

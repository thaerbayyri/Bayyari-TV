.class public final Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;
.super Ljava/lang/Object;
.source "GetCatchUpUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetCatchUpUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetCatchUpUseCase.kt\ncom/bayyari/tv/domain/usecase/GetCatchUpUseCase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n1#2:23\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\"\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0006\u0010\u000c\u001a\u00020\rH\u0086B\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;",
        "",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "epgRepository",
        "Lcom/bayyari/tv/data/repository/EpgRepository;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/EpgRepository;)V",
        "invoke",
        "Lcom/bayyari/tv/util/UiState;",
        "",
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
        "streamId",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final epgRepository:Lcom/bayyari/tv/data/repository/EpgRepository;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/EpgRepository;)V
    .locals 1
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "epgRepository"    # Lcom/bayyari/tv/data/repository/EpgRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epgRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 11
    iput-object p2, p0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;->epgRepository:Lcom/bayyari/tv/data/repository/EpgRepository;

    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/util/UiState<",
            "+",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;

    iget v1, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;

    invoke-direct {v0, p0, p2}, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;-><init>(Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 13
    iget v3, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x0

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
    iget v2, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->I$1:I

    .local v2, "$i$a$-runCatching-GetCatchUpUseCase$invoke$2\\1\\15\\0":I
    iget p1, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->I$0:I

    iget-object v3, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;

    .local v3, "$this$invoke_u24lambda_u240\\1":Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;
    iget-object v6, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/bayyari/tv/domain/model/Server;

    .local v6, "server":Lcom/bayyari/tv/domain/model/Server;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    goto :goto_1

    .line 15
    .end local v2    # "$i$a$-runCatching-GetCatchUpUseCase$invoke$2\\1\\15\\0":I
    .end local v3    # "$this$invoke_u24lambda_u240\\1":Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 13
    .end local v6    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    iget-object v3, p0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-virtual {v3}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v2, Lcom/bayyari/tv/util/UiState$Error;

    const-string v3, "No active server"

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/bayyari/tv/util/UiState$Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_1
    move-object v6, v3

    .line 15
    .restart local v6    # "server":Lcom/bayyari/tv/domain/model/Server;
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;

    .line 23
    .restart local v3    # "$this$invoke_u24lambda_u240\\1":Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;
    const/4 v7, 0x0

    .line 15
    .local v7, "$i$a$-runCatching-GetCatchUpUseCase$invoke$2\\1\\15\\0":I
    iget-object v8, v3, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;->epgRepository:Lcom/bayyari/tv/data/repository/EpgRepository;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->I$0:I

    iput v7, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->I$1:I

    const/4 v9, 0x1

    iput v9, v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase$invoke$1;->label:I

    invoke-virtual {v8, v6, p1, v0}, Lcom/bayyari/tv/data/repository/EpgRepository;->getCatchUp(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_2

    .line 13
    return-object v2

    .line 15
    :cond_2
    move v2, v7

    .end local v7    # "$i$a$-runCatching-GetCatchUpUseCase$invoke$2\\1\\15\\0":I
    .restart local v2    # "$i$a$-runCatching-GetCatchUpUseCase$invoke$2\\1\\15\\0":I
    :goto_1
    check-cast v8, Ljava/util/List;

    .end local v2    # "$i$a$-runCatching-GetCatchUpUseCase$invoke$2\\1\\15\\0":I
    .end local v3    # "$this$invoke_u24lambda_u240\\1":Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;
    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 16
    :goto_3
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_4

    check-cast v2, Ljava/util/List;

    .local v2, "it\\2":Ljava/util/List;
    const/4 v3, 0x0

    .line 17
    .local v3, "$i$a$-fold-GetCatchUpUseCase$invoke$3\\2\\16\\0":I
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/bayyari/tv/util/UiState$Empty;->INSTANCE:Lcom/bayyari/tv/util/UiState$Empty;

    goto :goto_4

    :cond_3
    new-instance v4, Lcom/bayyari/tv/util/UiState$Success;

    invoke-direct {v4, v2}, Lcom/bayyari/tv/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    :goto_4
    check-cast v4, Lcom/bayyari/tv/util/UiState;

    goto :goto_5

    .line 16
    .end local v2    # "it\\2":Ljava/util/List;
    .local v3, "it\\3":Ljava/lang/Throwable;
    :cond_4
    const/4 v2, 0x0

    .line 18
    .local v2, "$i$a$-fold-GetCatchUpUseCase$invoke$4\\3\\16\\0":I
    new-instance v7, Lcom/bayyari/tv/util/UiState$Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v8, "Failed to load catch-up"

    :cond_5
    invoke-direct {v7, v8, v5, v4, v5}, Lcom/bayyari/tv/util/UiState$Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v7

    check-cast v4, Lcom/bayyari/tv/util/UiState;

    .line 16
    .end local v2    # "$i$a$-fold-GetCatchUpUseCase$invoke$4\\3\\16\\0":I
    .end local v3    # "it\\3":Ljava/lang/Throwable;
    :goto_5
    nop

    .line 15
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

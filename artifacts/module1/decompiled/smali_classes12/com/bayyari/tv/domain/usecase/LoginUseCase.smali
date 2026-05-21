.class public final Lcom/bayyari/tv/domain/usecase/LoginUseCase;
.super Ljava/lang/Object;
.source "LoginUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J<\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086B\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/bayyari/tv/domain/usecase/LoginUseCase;",
        "",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;)V",
        "invoke",
        "Lcom/bayyari/tv/util/UiState;",
        "Lcom/bayyari/tv/domain/model/Server;",
        "serverUrl",
        "",
        "username",
        "password",
        "label",
        "remember",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 1
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/LoginUseCase;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p1, "serverUrl"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "remember"    # Z
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/util/UiState<",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;

    iget v2, v1, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;

    invoke-direct {v1, p0, v0}, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;-><init>(Lcom/bayyari/tv/domain/usecase/LoginUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v1

    .local v8, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 11
    iget v2, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->label:I

    const/4 v10, 0x2

    const/4 v11, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-boolean v2, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->Z$0:Z

    .end local p5    # "remember":Z
    .local v2, "remember":Z
    iget-object v3, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .end local p4    # "label":Ljava/lang/String;
    .local v3, "label":Ljava/lang/String;
    iget-object v4, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .end local p3    # "password":Ljava/lang/String;
    .local v4, "password":Ljava/lang/String;
    iget-object v5, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .end local p2    # "username":Ljava/lang/String;
    .local v5, "username":Ljava/lang/String;
    iget-object v6, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->L$0:Ljava/lang/Object;

    move-object p1, v6

    check-cast p1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    check-cast v6, Lkotlin/Result;

    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .end local v2    # "remember":Z
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "username":Ljava/lang/String;
    .restart local p2    # "username":Ljava/lang/String;
    .restart local p3    # "password":Ljava/lang/String;
    .restart local p4    # "label":Ljava/lang/String;
    .restart local p5    # "remember":Z
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/bayyari/tv/domain/usecase/LoginUseCase;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->L$3:Ljava/lang/Object;

    move/from16 v7, p5

    iput-boolean v7, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->Z$0:Z

    const/4 v3, 0x1

    iput v3, v8, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->label:I

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/bayyari/tv/data/repository/AuthRepository;->login-hUnOzRk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_2

    .line 11
    return-object v9

    .line 21
    :cond_2
    move-object v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    move-object v6, v2

    move/from16 v2, p5

    .end local p2    # "username":Ljava/lang/String;
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "label":Ljava/lang/String;
    .end local p5    # "remember":Z
    .restart local v2    # "remember":Z
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v5    # "username":Ljava/lang/String;
    :goto_1
    nop

    .line 22
    invoke-static {v6}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-nez v7, :cond_3

    check-cast v6, Lcom/bayyari/tv/domain/model/Server;

    .local v6, "it\\1":Lcom/bayyari/tv/domain/model/Server;
    const/4 v7, 0x0

    .line 23
    .local v7, "$i$a$-fold-LoginUseCase$invoke$2\\1\\22\\0":I
    new-instance v9, Lcom/bayyari/tv/util/UiState$Success;

    invoke-direct {v9, v6}, Lcom/bayyari/tv/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    check-cast v9, Lcom/bayyari/tv/util/UiState;

    .line 22
    .end local v6    # "it\\1":Lcom/bayyari/tv/domain/model/Server;
    .end local v7    # "$i$a$-fold-LoginUseCase$invoke$2\\1\\22\\0":I
    :goto_2
    goto :goto_3

    .local v7, "it\\2":Ljava/lang/Throwable;
    :cond_3
    const/4 v6, 0x0

    .line 24
    .local v6, "$i$a$-fold-LoginUseCase$invoke$3\\2\\22\\0":I
    new-instance v9, Lcom/bayyari/tv/util/UiState$Error;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_4

    const-string v12, "Login failed"

    :cond_4
    invoke-direct {v9, v12, v11, v10, v11}, Lcom/bayyari/tv/util/UiState$Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lcom/bayyari/tv/util/UiState;

    .end local v6    # "$i$a$-fold-LoginUseCase$invoke$3\\2\\22\\0":I
    .end local v7    # "it\\2":Ljava/lang/Throwable;
    goto :goto_2

    .line 21
    :goto_3
    return-object v9

    .line 19
    .end local v2    # "remember":Z
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "username":Ljava/lang/String;
    .restart local p2    # "username":Ljava/lang/String;
    .restart local p3    # "password":Ljava/lang/String;
    .restart local p4    # "label":Ljava/lang/String;
    .restart local p5    # "remember":Z
    :cond_5
    :goto_4
    new-instance v2, Lcom/bayyari/tv/util/UiState$Error;

    const-string v3, "Missing credentials"

    invoke-direct {v2, v3, v11, v10, v11}, Lcom/bayyari/tv/util/UiState$Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

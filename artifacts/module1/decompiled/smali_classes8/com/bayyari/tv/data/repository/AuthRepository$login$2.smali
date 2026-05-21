.class final Lcom/bayyari/tv/data/repository/AuthRepository$login$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/repository/AuthRepository;->login-hUnOzRk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/bayyari/tv/domain/model/Server;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthRepository.kt\ncom/bayyari/tv/data/repository/AuthRepository$login$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/bayyari/tv/domain/model/Server;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.bayyari.tv.data.repository.AuthRepository$login$2"
    f = "AuthRepository.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x1f
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext",
        "base",
        "saved",
        "$this$invokeSuspend_u24lambda_u241\\2",
        "$i$a$-runCatching-AuthRepository$login$2$1\\2\\30\\0"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$4",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $label:Ljava/lang/String;

.field final synthetic $password:Ljava/lang/String;

.field final synthetic $remember:Z

.field final synthetic $serverUrl:Ljava/lang/String;

.field final synthetic $username:Ljava/lang/String;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/data/repository/AuthRepository;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/repository/AuthRepository;ZLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/repository/AuthRepository$login$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$label:Ljava/lang/String;

    iput-object p2, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$serverUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->this$0:Lcom/bayyari/tv/data/repository/AuthRepository;

    iput-boolean p6, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$remember:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$label:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$serverUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$password:Ljava/lang/String;

    iget-object v5, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->this$0:Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-boolean v6, p0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$remember:Z

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/repository/AuthRepository;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .local v2, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget v3, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->label:I

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->I$0:I

    .local v0, "$i$a$-runCatching-AuthRepository$login$2$1\\2\\30\\0":I
    iget-object v3, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$4:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .local v3, "$this$invokeSuspend_u24lambda_u241\\2":Lkotlinx/coroutines/CoroutineScope;
    iget-object v4, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v5, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/bayyari/tv/domain/model/Server;

    .local v5, "saved":Lcom/bayyari/tv/domain/model/Server;
    iget-object v6, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/bayyari/tv/domain/model/Server;

    .local v6, "base":Lcom/bayyari/tv/domain/model/Server;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v3

    move-object/from16 v3, p1

    goto/16 :goto_0

    .line 30
    .end local v0    # "$i$a$-runCatching-AuthRepository$login$2$1\\2\\30\\0":I
    .end local v3    # "$this$invokeSuspend_u24lambda_u241\\2":Lkotlinx/coroutines/CoroutineScope;
    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 19
    .end local v5    # "saved":Lcom/bayyari/tv/domain/model/Server;
    .end local v6    # "base":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    nop

    .line 21
    iget-object v3, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$label:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$serverUrl:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    const/4 v3, 0x0

    .line 21
    .local v3, "$i$a$-ifBlank-AuthRepository$login$2$base$1\\1\\21\\0":I
    move-object v3, v4

    .end local v3    # "$i$a$-ifBlank-AuthRepository$login$2$base$1\\1\\21\\0":I
    :cond_0
    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 22
    iget-object v7, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$serverUrl:Ljava/lang/String;

    .line 23
    iget-object v8, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$username:Ljava/lang/String;

    .line 24
    iget-object v9, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$password:Ljava/lang/String;

    .line 20
    new-instance v4, Lcom/bayyari/tv/domain/model/Server;

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v14, 0xe1

    const/4 v15, 0x0

    invoke-direct/range {v4 .. v15}, Lcom/bayyari/tv/domain/model/Server;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v4

    .line 26
    .restart local v6    # "base":Lcom/bayyari/tv/domain/model/Server;
    iget-object v3, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->this$0:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {v3}, Lcom/bayyari/tv/data/repository/AuthRepository;->access$getPrefs$p(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/util/EncryptedPrefs;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/bayyari/tv/util/EncryptedPrefs;->upsertServer(Lcom/bayyari/tv/domain/model/Server;)Lcom/bayyari/tv/domain/model/Server;

    move-result-object v5

    .line 27
    .restart local v5    # "saved":Lcom/bayyari/tv/domain/model/Server;
    iget-object v3, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->this$0:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {v3}, Lcom/bayyari/tv/data/repository/AuthRepository;->access$getPrefs$p(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/util/EncryptedPrefs;

    move-result-object v3

    invoke-virtual {v5}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bayyari/tv/util/EncryptedPrefs;->setActiveServerId(I)V

    .line 28
    iget-object v3, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->this$0:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {v3}, Lcom/bayyari/tv/data/repository/AuthRepository;->access$getPrefs$p(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/util/EncryptedPrefs;

    move-result-object v3

    iget-boolean v4, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$remember:Z

    invoke-virtual {v3, v4}, Lcom/bayyari/tv/util/EncryptedPrefs;->setRememberLogin(Z)V

    .line 30
    iget-object v4, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->this$0:Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v3, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$username:Ljava/lang/String;

    iget-object v7, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->$password:Ljava/lang/String;

    :try_start_1
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v8, v2

    .local v8, "$this$invokeSuspend_u24lambda_u241\\2":Lkotlinx/coroutines/CoroutineScope;
    const/4 v9, 0x0

    .line 31
    .local v9, "$i$a$-runCatching-AuthRepository$login$2$1\\2\\30\\0":I
    invoke-static {v4}, Lcom/bayyari/tv/data/repository/AuthRepository;->access$getApi$p(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v10

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$2:Ljava/lang/Object;

    iput-object v4, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$3:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->L$4:Ljava/lang/Object;

    iput v9, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->I$0:I

    const/4 v11, 0x1

    iput v11, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;->label:I

    invoke-interface {v10, v3, v7, v1}, Lcom/bayyari/tv/data/api/XtreamApiService;->login(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 19
    return-object v0

    .line 31
    :cond_1
    move v0, v9

    .line 19
    .end local v9    # "$i$a$-runCatching-AuthRepository$login$2$1\\2\\30\\0":I
    .restart local v0    # "$i$a$-runCatching-AuthRepository$login$2$1\\2\\30\\0":I
    :goto_0
    check-cast v3, Lcom/bayyari/tv/data/api/models/LoginResponse;

    .line 32
    .local v3, "response\\2":Lcom/bayyari/tv/data/api/models/LoginResponse;
    invoke-static {v4, v5, v3}, Lcom/bayyari/tv/data/repository/AuthRepository;->access$mergeLoginInfo(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/api/models/LoginResponse;)Lcom/bayyari/tv/domain/model/Server;

    move-result-object v7

    .line 33
    .local v7, "updated\\2":Lcom/bayyari/tv/domain/model/Server;
    invoke-static {v4}, Lcom/bayyari/tv/data/repository/AuthRepository;->access$getPrefs$p(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/util/EncryptedPrefs;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/bayyari/tv/util/EncryptedPrefs;->upsertServer(Lcom/bayyari/tv/domain/model/Server;)Lcom/bayyari/tv/domain/model/Server;

    move-result-object v4

    .line 30
    .end local v0    # "$i$a$-runCatching-AuthRepository$login$2$1\\2\\30\\0":I
    .end local v3    # "response\\2":Lcom/bayyari/tv/data/api/models/LoginResponse;
    .end local v7    # "updated\\2":Lcom/bayyari/tv/domain/model/Server;
    .end local v8    # "$this$invokeSuspend_u24lambda_u241\\2":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    .line 34
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

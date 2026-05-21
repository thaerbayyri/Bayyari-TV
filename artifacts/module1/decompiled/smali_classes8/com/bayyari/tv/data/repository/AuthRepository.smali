.class public final Lcom/bayyari/tv/data/repository/AuthRepository;
.super Ljava/lang/Object;
.source "AuthRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J>\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u0016J\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0018J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010 \u001a\u00020\u0011J\u0018\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020$H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "",
        "api",
        "Lcom/bayyari/tv/data/api/XtreamApiService;",
        "prefs",
        "Lcom/bayyari/tv/util/EncryptedPrefs;",
        "<init>",
        "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/util/EncryptedPrefs;)V",
        "login",
        "Lkotlin/Result;",
        "Lcom/bayyari/tv/domain/model/Server;",
        "serverUrl",
        "",
        "username",
        "password",
        "label",
        "remember",
        "",
        "login-hUnOzRk",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addM3uServer",
        "url",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getServers",
        "",
        "getActiveServer",
        "setActiveServer",
        "",
        "id",
        "",
        "removeServer",
        "rememberLogin",
        "isRememberLogin",
        "mergeLoginInfo",
        "server",
        "response",
        "Lcom/bayyari/tv/data/api/models/LoginResponse;",
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
.field private final api:Lcom/bayyari/tv/data/api/XtreamApiService;

.field private final prefs:Lcom/bayyari/tv/util/EncryptedPrefs;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/util/EncryptedPrefs;)V
    .locals 1
    .param p1, "api"    # Lcom/bayyari/tv/data/api/XtreamApiService;
    .param p2, "prefs"    # Lcom/bayyari/tv/util/EncryptedPrefs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bayyari/tv/data/repository/AuthRepository;->api:Lcom/bayyari/tv/data/api/XtreamApiService;

    .line 15
    iput-object p2, p0, Lcom/bayyari/tv/data/repository/AuthRepository;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    .line 13
    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 12
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository;->api:Lcom/bayyari/tv/data/api/XtreamApiService;

    return-object v0
.end method

.method public static final synthetic access$getPrefs$p(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/util/EncryptedPrefs;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 12
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    return-object v0
.end method

.method public static final synthetic access$mergeLoginInfo(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/api/models/LoginResponse;)Lcom/bayyari/tv/domain/model/Server;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p1, "server"    # Lcom/bayyari/tv/domain/model/Server;
    .param p2, "response"    # Lcom/bayyari/tv/data/api/models/LoginResponse;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/data/repository/AuthRepository;->mergeLoginInfo(Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/api/models/LoginResponse;)Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    return-object v0
.end method

.method private final mergeLoginInfo(Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/api/models/LoginResponse;)Lcom/bayyari/tv/domain/model/Server;
    .locals 15
    .param p1, "server"    # Lcom/bayyari/tv/domain/model/Server;
    .param p2, "response"    # Lcom/bayyari/tv/data/api/models/LoginResponse;

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/bayyari/tv/data/api/models/LoginResponse;->getUserInfo()Lcom/bayyari/tv/data/api/models/UserInfoDto;

    move-result-object v0

    .line 64
    .local v0, "user":Lcom/bayyari/tv/data/api/models/UserInfoDto;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bayyari/tv/data/api/models/UserInfoDto;->getExpDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v9, v1

    .line 65
    .local v9, "exp":J
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bayyari/tv/data/api/models/UserInfoDto;->getMaxConnections()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v11, v1

    .line 66
    .local v11, "maxConnections":I
    nop

    .line 67
    nop

    .line 68
    nop

    .line 66
    const/16 v13, 0x9f

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v14}, Lcom/bayyari/tv/domain/model/Server;->copy$default(Lcom/bayyari/tv/domain/model/Server;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZILjava/lang/Object;)Lcom/bayyari/tv/domain/model/Server;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final addM3uServer(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 37
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/repository/AuthRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public final getActiveServer()Lcom/bayyari/tv/domain/model/Server;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0}, Lcom/bayyari/tv/util/EncryptedPrefs;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    return-object v0
.end method

.method public final getServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0}, Lcom/bayyari/tv/util/EncryptedPrefs;->getServers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isRememberLogin()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0}, Lcom/bayyari/tv/util/EncryptedPrefs;->isRememberLogin()Z

    move-result v0

    return v0
.end method

.method public final login-hUnOzRk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lkotlin/Result<",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;

    iget v2, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;

    invoke-direct {v1, p0, v0}, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v2, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 18
    iget v4, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->label:I

    packed-switch v4, :pswitch_data_0

    move/from16 v11, p5

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-boolean v3, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->Z$0:Z

    .end local p5    # "remember":Z
    .local v3, "remember":Z
    iget-object v4, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .end local p4    # "label":Ljava/lang/String;
    .local v4, "label":Ljava/lang/String;
    iget-object v5, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .end local p3    # "password":Ljava/lang/String;
    .local v5, "password":Ljava/lang/String;
    iget-object v6, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->L$1:Ljava/lang/Object;

    move-object p2, v6

    check-cast p2, Ljava/lang/String;

    iget-object v6, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->L$0:Ljava/lang/Object;

    move-object p1, v6

    check-cast p1, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v11, v3

    move-object v3, v2

    goto :goto_1

    .end local v3    # "remember":Z
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "password":Ljava/lang/String;
    .restart local p3    # "password":Ljava/lang/String;
    .restart local p4    # "label":Ljava/lang/String;
    .restart local p5    # "remember":Z
    :pswitch_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;

    const/4 v12, 0x0

    move-object v10, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v11, p5

    invoke-direct/range {v5 .. v12}, Lcom/bayyari/tv/data/repository/AuthRepository$login$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/repository/AuthRepository;ZLkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->L$3:Ljava/lang/Object;

    iput-boolean v11, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->Z$0:Z

    const/4 v6, 0x1

    iput v6, v1, Lcom/bayyari/tv/data/repository/AuthRepository$login$1;->label:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_1

    .line 18
    return-object v3

    .line 19
    :cond_1
    move-object/from16 v5, p3

    move-object v3, v4

    move-object/from16 v4, p4

    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "label":Ljava/lang/String;
    .end local p5    # "remember":Z
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    .local v11, "remember":Z
    :goto_1
    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    .line 35
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final rememberLogin(Z)V
    .locals 1
    .param p1, "remember"    # Z

    .line 58
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0, p1}, Lcom/bayyari/tv/util/EncryptedPrefs;->setRememberLogin(Z)V

    return-void
.end method

.method public final removeServer(I)V
    .locals 1
    .param p1, "id"    # I

    .line 56
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0, p1}, Lcom/bayyari/tv/util/EncryptedPrefs;->removeServer(I)V

    return-void
.end method

.method public final setActiveServer(I)V
    .locals 1
    .param p1, "id"    # I

    .line 54
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0, p1}, Lcom/bayyari/tv/util/EncryptedPrefs;->setActiveServerId(I)V

    return-void
.end method

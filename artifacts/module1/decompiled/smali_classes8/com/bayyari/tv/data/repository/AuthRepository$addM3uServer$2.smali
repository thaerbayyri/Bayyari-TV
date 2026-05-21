.class final Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/repository/AuthRepository;->addM3uServer(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/bayyari/tv/domain/model/Server;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthRepository.kt\ncom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
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
    c = "com.bayyari.tv.data.repository.AuthRepository$addM3uServer$2"
    f = "AuthRepository.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $label:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/data/repository/AuthRepository;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/repository/AuthRepository;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->$label:Ljava/lang/String;

    iput-object p2, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->this$0:Lcom/bayyari/tv/data/repository/AuthRepository;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->$label:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->this$0:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/repository/AuthRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 37
    iget v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    nop

    .line 39
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->$label:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->$url:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 39
    .local v0, "$i$a$-ifBlank-AuthRepository$addM3uServer$2$server$1\\1\\39\\0":I
    move-object v0, v1

    .end local v0    # "$i$a$-ifBlank-AuthRepository$addM3uServer$2$server$1\\1\\39\\0":I
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 40
    iget-object v4, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->$url:Ljava/lang/String;

    .line 41
    nop

    .line 42
    nop

    .line 38
    nop

    .line 43
    nop

    .line 38
    new-instance v1, Lcom/bayyari/tv/domain/model/Server;

    const/4 v10, 0x1

    const/4 v2, 0x0

    const-string v5, ""

    const-string v6, ""

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x61

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/bayyari/tv/domain/model/Server;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .local v1, "server":Lcom/bayyari/tv/domain/model/Server;
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->this$0:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {v0}, Lcom/bayyari/tv/data/repository/AuthRepository;->access$getPrefs$p(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/util/EncryptedPrefs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/util/EncryptedPrefs;->upsertServer(Lcom/bayyari/tv/domain/model/Server;)Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    .line 46
    .local v0, "saved":Lcom/bayyari/tv/domain/model/Server;
    iget-object v2, p0, Lcom/bayyari/tv/data/repository/AuthRepository$addM3uServer$2;->this$0:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {v2}, Lcom/bayyari/tv/data/repository/AuthRepository;->access$getPrefs$p(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/util/EncryptedPrefs;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bayyari/tv/util/EncryptedPrefs;->setActiveServerId(I)V

    .line 47
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

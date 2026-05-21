.class final Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WatchHistoryRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/repository/WatchHistoryRepository;->save(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.bayyari.tv.data.repository.WatchHistoryRepository$save$2"
    f = "WatchHistoryRepository.kt"
    i = {}
    l = {
        0x13
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $entity:Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/data/repository/WatchHistoryRepository;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;",
            "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->this$0:Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    iput-object p2, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->$entity:Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->this$0:Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    iget-object v2, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->$entity:Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    invoke-direct {v0, v1, v2, p2}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;-><init>(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 18
    iget v1, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->this$0:Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    invoke-static {v1}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;->access$getDao$p(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    move-result-object v1

    iget-object v2, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->$entity:Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;->label:I

    invoke-interface {v1, v2, v3}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;->upsert(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 18
    return-object v0

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

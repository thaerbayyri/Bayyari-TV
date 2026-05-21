.class final Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/home/HomeViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/util/List<",
        "+",
        "Lcom/bayyari/tv/domain/model/Channel;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/bayyari/tv/domain/model/Movie;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/bayyari/tv/domain/model/Series;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/bayyari/tv/ui/home/HomeStats;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/bayyari/tv/ui/home/HomeStats;",
        "channels",
        "",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "movies",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "series",
        "Lcom/bayyari/tv/domain/model/Series;"
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
    c = "com.bayyari.tv.ui.home.HomeViewModel$stats$1$1"
    f = "HomeViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/util/List;

    check-cast p4, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;->invoke(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/home/HomeStats;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;

    invoke-direct {v0, p4}, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;->L$2:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "channels":Ljava/util/List;
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "movies":Ljava/util/List;
    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .local v2, "series":Ljava/util/List;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 67
    iget v3, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$stats$1$1;->label:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    new-instance v3, Lcom/bayyari/tv/ui/home/HomeStats;

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 72
    nop

    .line 68
    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bayyari/tv/ui/home/HomeStats;-><init>(IIIZ)V

    .line 73
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

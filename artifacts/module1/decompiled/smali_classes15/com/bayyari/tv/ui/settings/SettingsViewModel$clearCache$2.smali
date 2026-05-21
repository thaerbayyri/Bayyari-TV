.class final Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/settings/SettingsViewModel;->clearCache(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.bayyari.tv.ui.settings.SettingsViewModel$clearCache$2"
    f = "SettingsViewModel.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3,
        0x4
    }
    l = {
        0x32,
        0x33,
        0x34,
        0x35,
        0x36
    }
    m = "invokeSuspend"
    n = {
        "serverId",
        "serverId",
        "serverId",
        "serverId",
        "serverId"
    }
    s = {
        "I$0",
        "I$0",
        "I$0",
        "I$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/settings/SettingsViewModel;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/settings/SettingsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/settings/SettingsViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->this$0:Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;

    iget-object v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->this$0:Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    invoke-direct {v0, v1, p2}, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;-><init>(Lcom/bayyari/tv/ui/settings/SettingsViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 48
    iget v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->I$0:I

    .local v0, "serverId":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v0    # "serverId":I
    :pswitch_1
    iget v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->I$0:I

    .local v1, "serverId":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v1    # "serverId":I
    :pswitch_2
    iget v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->I$0:I

    .restart local v1    # "serverId":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "serverId":I
    :pswitch_3
    iget v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->I$0:I

    .restart local v1    # "serverId":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "serverId":I
    :pswitch_4
    iget v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->I$0:I

    .restart local v1    # "serverId":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "serverId":I
    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->this$0:Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    invoke-static {v1}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->access$getAuthRepository$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v1

    .line 50
    .restart local v1    # "serverId":I
    iget-object v2, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->this$0:Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    invoke-static {v2}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->access$getChannelDao$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/local/dao/ChannelDao;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->I$0:I

    const/4 v4, 0x1

    iput v4, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->label:I

    invoke-interface {v2, v1, v3}, Lcom/bayyari/tv/data/local/dao/ChannelDao;->clearForServer(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 48
    return-object v0

    .line 51
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->this$0:Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    invoke-static {v2}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->access$getMovieDao$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/local/dao/MovieDao;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->I$0:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->label:I

    invoke-interface {v2, v1, v3}, Lcom/bayyari/tv/data/local/dao/MovieDao;->clearForServer(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 48
    return-object v0

    .line 52
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->this$0:Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    invoke-static {v2}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->access$getSeriesDao$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/local/dao/SeriesDao;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->I$0:I

    const/4 v4, 0x3

    iput v4, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->label:I

    invoke-interface {v2, v1, v3}, Lcom/bayyari/tv/data/local/dao/SeriesDao;->clearForServer(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 48
    return-object v0

    .line 53
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->this$0:Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    invoke-static {v2}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->access$getEpgDao$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/local/dao/EpgDao;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->I$0:I

    const/4 v4, 0x4

    iput v4, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->label:I

    invoke-interface {v2, v1, v3}, Lcom/bayyari/tv/data/local/dao/EpgDao;->clearForServer(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    .line 48
    return-object v0

    .line 54
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->this$0:Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    invoke-static {v2}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->access$getWatchHistoryDao$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->I$0:I

    const/4 v4, 0x5

    iput v4, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;->label:I

    invoke-interface {v2, v1, v3}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;->clear(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    .line 48
    return-object v0

    .line 54
    :cond_4
    move v0, v1

    .line 55
    .end local v1    # "serverId":I
    .restart local v0    # "serverId":I
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 49
    .end local v0    # "serverId":I
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

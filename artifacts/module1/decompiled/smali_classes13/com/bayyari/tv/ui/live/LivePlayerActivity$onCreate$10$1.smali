.class final Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LivePlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/bayyari/tv/domain/model/Channel;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "channel",
        "Lcom/bayyari/tv/domain/model/Channel;"
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
    c = "com.bayyari.tv.ui.live.LivePlayerActivity$onCreate$10$1"
    f = "LivePlayerActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/live/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/live/LivePlayerActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->this$0:Lcom/bayyari/tv/ui/live/LivePlayerActivity;

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

    new-instance v0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->this$0:Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    invoke-direct {v0, v1, p2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/bayyari/tv/domain/model/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/model/Channel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/bayyari/tv/domain/model/Channel;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->invoke(Lcom/bayyari/tv/domain/model/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/bayyari/tv/domain/model/Channel;

    .local v0, "channel":Lcom/bayyari/tv/domain/model/Channel;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 84
    iget v1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    if-nez v0, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->this$0:Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    invoke-static {v1}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->access$getViewModel(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->buildStreamUrl(Lcom/bayyari/tv/domain/model/Channel;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "url":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->this$0:Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    invoke-static {v2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->access$getBinding$p(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    move-result-object v2

    const-string v3, "binding"

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    iget-object v2, v2, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Channel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setTitle(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->this$0:Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    invoke-static {v2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->access$getBinding$p(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_2
    iget-object v2, v2, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->this$0:Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    sget v5, Lcom/bayyari/tv/R$string;->live_now_playing:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ""

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v5, v6}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setSubtitle(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10$1;->this$0:Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    invoke-virtual {v2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v1, v8, v3, v4}, Lcom/bayyari/tv/player/IptvPlayer;->prepare$default(Lcom/bayyari/tv/player/IptvPlayer;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 92
    :cond_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

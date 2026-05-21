.class final Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/bayyari/tv/ui/home/HomeStats;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "s",
        "Lcom/bayyari/tv/ui/home/HomeStats;"
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
    c = "com.bayyari.tv.ui.home.HomeFragment$onViewCreated$12$1"
    f = "HomeFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $statBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/bayyari/tv/databinding/IncludeStatCellBinding;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/home/HomeFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/bayyari/tv/ui/home/HomeFragment;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/bayyari/tv/databinding/IncludeStatCellBinding;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/bayyari/tv/ui/home/HomeFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->$statBindings:Ljava/util/List;

    iput-object p2, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->this$0:Lcom/bayyari/tv/ui/home/HomeFragment;

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

    new-instance v0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->$statBindings:Ljava/util/List;

    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->this$0:Lcom/bayyari/tv/ui/home/HomeFragment;

    invoke-direct {v0, v1, v2, p2}, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;-><init>(Ljava/util/List;Lcom/bayyari/tv/ui/home/HomeFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/bayyari/tv/ui/home/HomeStats;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/home/HomeStats;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/bayyari/tv/ui/home/HomeStats;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->invoke(Lcom/bayyari/tv/ui/home/HomeStats;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/bayyari/tv/ui/home/HomeStats;

    .local v0, "s":Lcom/bayyari/tv/ui/home/HomeStats;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 100
    iget v1, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->$statBindings:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->statValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->this$0:Lcom/bayyari/tv/ui/home/HomeFragment;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeStats;->getChannelCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/bayyari/tv/ui/home/HomeFragment;->access$formatCount(Lcom/bayyari/tv/ui/home/HomeFragment;I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->$statBindings:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->statValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->this$0:Lcom/bayyari/tv/ui/home/HomeFragment;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeStats;->getMovieCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/bayyari/tv/ui/home/HomeFragment;->access$formatCount(Lcom/bayyari/tv/ui/home/HomeFragment;I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->$statBindings:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->statValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12$1;->this$0:Lcom/bayyari/tv/ui/home/HomeFragment;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeStats;->getSeriesCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/bayyari/tv/ui/home/HomeFragment;->access$formatCount(Lcom/bayyari/tv/ui/home/HomeFragment;I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

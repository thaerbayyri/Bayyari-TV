.class final Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SeriesDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/bayyari/tv/domain/model/Series;",
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
    c = "com.bayyari.tv.ui.series.SeriesDetailFragment$onViewCreated$1$1"
    f = "SeriesDetailFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/series/SeriesDetailFragment;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/series/SeriesDetailFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailFragment;

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

    new-instance v0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailFragment;

    invoke-direct {v0, v1, p2}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;-><init>(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/bayyari/tv/domain/model/Series;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/model/Series;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/bayyari/tv/domain/model/Series;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;->invoke(Lcom/bayyari/tv/domain/model/Series;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/bayyari/tv/domain/model/Series;

    .local v0, "series":Lcom/bayyari/tv/domain/model/Series;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 38
    iget v1, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    if-eqz v0, :cond_1

    .line 40
    iget-object v1, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailFragment;

    invoke-static {v1}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->access$getBinding$p(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;)Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;->textTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Series;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailFragment;

    invoke-static {v1}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->access$getBinding$p(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;)Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;->textPlot:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Series;->getPlot()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

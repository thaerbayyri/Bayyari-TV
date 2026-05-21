.class final Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MovieViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/movies/MovieViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/MovieRepository;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/util/List<",
        "+",
        "Lcom/bayyari/tv/domain/model/Movie;",
        ">;",
        "Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/bayyari/tv/domain/model/Movie;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMovieViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MovieViewModel.kt\ncom/bayyari/tv/ui/movies/MovieViewModel$movies$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n1056#2:60\n1068#2:61\n1068#2:62\n1068#2:63\n*S KotlinDebug\n*F\n+ 1 MovieViewModel.kt\ncom/bayyari/tv/ui/movies/MovieViewModel$movies$3\n*L\n35#1:60\n36#1:61\n37#1:62\n38#1:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "list",
        "sortBy",
        "Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;"
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
    c = "com.bayyari.tv.ui.movies.MovieViewModel$movies$3"
    f = "MovieViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/movies/MovieViewModel;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/movies/MovieViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/movies/MovieViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->this$0:Lcom/bayyari/tv/ui/movies/MovieViewModel;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->invoke(Ljava/util/List;Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/util/List;Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;",
            "Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;

    iget-object v1, p0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->this$0:Lcom/bayyari/tv/ui/movies/MovieViewModel;

    invoke-direct {v0, v1, p3}, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;-><init>(Lcom/bayyari/tv/ui/movies/MovieViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "list":Ljava/util/List;
    iget-object v1, p0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;

    .local v1, "sortBy":Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 33
    iget v2, p0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    sget-object v2, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .line 38
    :pswitch_1
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$sortedByDescending\\4":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 63
    .local v3, "$i$f$sortedByDescending\\4\\38":I
    new-instance v4, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedByDescending$3;

    invoke-direct {v4}, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedByDescending$3;-><init>()V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .end local v2    # "$this$sortedByDescending\\4":Ljava/lang/Iterable;
    .end local v3    # "$i$f$sortedByDescending\\4\\38":I
    goto :goto_0

    .line 37
    :pswitch_2
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$sortedByDescending\\3":Ljava/lang/Iterable;
    iget-object v3, p0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->this$0:Lcom/bayyari/tv/ui/movies/MovieViewModel;

    const/4 v4, 0x0

    .line 62
    .local v4, "$i$f$sortedByDescending\\3\\37":I
    new-instance v5, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedByDescending$2;

    invoke-direct {v5, v3}, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedByDescending$2;-><init>(Lcom/bayyari/tv/ui/movies/MovieViewModel;)V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .end local v2    # "$this$sortedByDescending\\3":Ljava/lang/Iterable;
    .end local v4    # "$i$f$sortedByDescending\\3\\37":I
    goto :goto_0

    .line 36
    :pswitch_3
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$sortedByDescending\\2":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 61
    .local v3, "$i$f$sortedByDescending\\2\\36":I
    new-instance v4, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedByDescending$1;

    invoke-direct {v4}, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedByDescending$1;-><init>()V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .end local v2    # "$this$sortedByDescending\\2":Ljava/lang/Iterable;
    .end local v3    # "$i$f$sortedByDescending\\2\\36":I
    goto :goto_0

    .line 35
    :pswitch_4
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$sortedBy\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 60
    .local v3, "$i$f$sortedBy\\1\\35":I
    new-instance v4, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {v4}, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 39
    .end local v2    # "$this$sortedBy\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$sortedBy\\1\\35":I
    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

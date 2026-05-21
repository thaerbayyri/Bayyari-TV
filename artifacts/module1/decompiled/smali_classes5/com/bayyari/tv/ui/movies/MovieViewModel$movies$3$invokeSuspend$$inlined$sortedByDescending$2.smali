.class public final Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedByDescending$2;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 MovieViewModel.kt\ncom/bayyari/tv/ui/movies/MovieViewModel$movies$3\n*L\n1#1,328:1\n37#2:329\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bayyari/tv/ui/movies/MovieViewModel;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/ui/movies/MovieViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedByDescending$2;->this$0:Lcom/bayyari/tv/ui/movies/MovieViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 121
    move-object v0, p2

    check-cast v0, Lcom/bayyari/tv/domain/model/Movie;

    .local v0, "it\\1":Lcom/bayyari/tv/domain/model/Movie;
    const/4 v1, 0x0

    .line 329
    .local v1, "$i$a$-sortedByDescending-MovieViewModel$movies$3$3\\1\\121\\0":I
    iget-object v2, p0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedByDescending$2;->this$0:Lcom/bayyari/tv/ui/movies/MovieViewModel;

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Movie;->getAddedEpochSeconds()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/bayyari/tv/ui/movies/MovieViewModel;->access$yearFromEpoch(Lcom/bayyari/tv/ui/movies/MovieViewModel;J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 121
    .end local v0    # "it\\1":Lcom/bayyari/tv/domain/model/Movie;
    .end local v1    # "$i$a$-sortedByDescending-MovieViewModel$movies$3$3\\1\\121\\0":I
    check-cast v0, Ljava/lang/Comparable;

    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/domain/model/Movie;

    .local v1, "it\\2":Lcom/bayyari/tv/domain/model/Movie;
    const/4 v2, 0x0

    .line 329
    .local v2, "$i$a$-sortedByDescending-MovieViewModel$movies$3$3\\2\\121\\0":I
    iget-object v3, p0, Lcom/bayyari/tv/ui/movies/MovieViewModel$movies$3$invokeSuspend$$inlined$sortedByDescending$2;->this$0:Lcom/bayyari/tv/ui/movies/MovieViewModel;

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Movie;->getAddedEpochSeconds()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/bayyari/tv/ui/movies/MovieViewModel;->access$yearFromEpoch(Lcom/bayyari/tv/ui/movies/MovieViewModel;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 121
    .end local v1    # "it\\2":Lcom/bayyari/tv/domain/model/Movie;
    .end local v2    # "$i$a$-sortedByDescending-MovieViewModel$movies$3$3\\2\\121\\0":I
    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

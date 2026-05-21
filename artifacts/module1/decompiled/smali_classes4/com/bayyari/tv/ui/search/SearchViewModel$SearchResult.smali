.class public final Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;
.super Ljava/lang/Object;
.source "SearchViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/search/SearchViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003H\u00c6\u0003J\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003H\u00c6\u0003J9\u0010\u0012\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;",
        "",
        "live",
        "",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "movies",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "series",
        "Lcom/bayyari/tv/domain/model/Series;",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getLive",
        "()Ljava/util/List;",
        "getMovies",
        "getSeries",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final live:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final movies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;"
        }
    .end annotation
.end field

.field private final series:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "live"    # Ljava/util/List;
    .param p2, "movies"    # Ljava/util/List;
    .param p3, "series"    # Ljava/util/List;
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
            ">;)V"
        }
    .end annotation

    const-string v0, "live"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movies"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "series"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->live:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->movies:Ljava/util/List;

    .line 25
    iput-object p3, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->series:Ljava/util/List;

    .line 22
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 22
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 22
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 22
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 26
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->live:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->movies:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->series:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->copy(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->live:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->movies:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->series:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;
    .locals 1
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
            ">;)",
            "Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;"
        }
    .end annotation

    const-string v0, "live"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movies"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "series"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;

    iget-object v3, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->live:Ljava/util/List;

    iget-object v4, v1, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->live:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->movies:Ljava/util/List;

    iget-object v4, v1, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->movies:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->series:Ljava/util/List;

    iget-object v1, v1, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->series:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLive()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->live:Ljava/util/List;

    return-object v0
.end method

.method public final getMovies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->movies:Ljava/util/List;

    return-object v0
.end method

.method public final getSeries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->series:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->live:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->movies:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->series:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->live:Ljava/util/List;

    iget-object v1, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->movies:Ljava/util/List;

    iget-object v2, p0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->series:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SearchResult(live="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", movies="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", series="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

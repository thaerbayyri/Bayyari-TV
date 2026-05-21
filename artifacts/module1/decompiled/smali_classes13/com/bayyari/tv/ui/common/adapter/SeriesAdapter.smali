.class public final Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SeriesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$Diff;,
        Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/bayyari/tv/domain/model/Series;",
        "Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0011\u0012B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001c\u0010\t\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u001c\u0010\u000e\u001a\u00020\u00062\n\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0010\u001a\u00020\rH\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/bayyari/tv/domain/model/Series;",
        "Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;",
        "onClick",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "SeriesViewHolder",
        "Diff",
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
.field private final onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/bayyari/tv/domain/model/Series;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/bayyari/tv/domain/model/Series;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$Diff;->INSTANCE:Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$Diff;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 14
    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    .line 13
    return-void
.end method

.method public static final synthetic access$getOnClick$p(Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;

    .line 13
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;->onBindViewHolder(Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/bayyari/tv/domain/model/Series;

    invoke-virtual {p1, v0}, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;->bind(Lcom/bayyari/tv/domain/model/Series;)V

    .line 24
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bayyari/tv/databinding/ItemSeriesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ItemSeriesBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .local v0, "binding":Lcom/bayyari/tv/databinding/ItemSeriesBinding;
    new-instance v1, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;-><init>(Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;Lcom/bayyari/tv/databinding/ItemSeriesBinding;)V

    return-object v1
.end method

.class public final Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "FeaturedPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$Diff;,
        Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u000f\u0010B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\nH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;",
        "<init>",
        "()V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "ViewHolder",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$Diff;->INSTANCE:Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$Diff;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter;->onBindViewHolder(Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/bayyari/tv/domain/model/Movie;

    invoke-virtual {p1, v0}, Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;->bind(Lcom/bayyari/tv/domain/model/Movie;)V

    .line 20
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bayyari/tv/databinding/ItemFeaturedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ItemFeaturedBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .local v0, "binding":Lcom/bayyari/tv/databinding/ItemFeaturedBinding;
    new-instance v1, Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;-><init>(Lcom/bayyari/tv/databinding/ItemFeaturedBinding;)V

    return-object v1
.end method

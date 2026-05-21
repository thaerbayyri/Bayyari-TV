.class public final Lcom/bayyari/tv/ui/search/SearchFragment$onViewCreated$1;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/search/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/bayyari/tv/ui/search/SearchFragment$onViewCreated$1",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "getItemCount",
        "",
        "createFragment",
        "Landroidx/fragment/app/Fragment;",
        "position",
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
.field final synthetic $tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/search/SearchFragment;Ljava/util/List;)V
    .locals 1
    .param p1, "$receiver"    # Lcom/bayyari/tv/ui/search/SearchFragment;
    .param p2, "$tabs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/search/SearchFragment;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/bayyari/tv/ui/search/SearchFragment$onViewCreated$1;->$tabs:Ljava/util/List;

    .line 30
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .line 33
    sget-object v0, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->Companion:Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;

    iget-object v1, p0, Lcom/bayyari/tv/ui/search/SearchFragment$onViewCreated$1;->$tabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/bayyari/tv/ui/search/SearchResultsFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchFragment$onViewCreated$1;->$tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

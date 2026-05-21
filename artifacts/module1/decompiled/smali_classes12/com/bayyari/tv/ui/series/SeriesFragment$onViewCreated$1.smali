.class public final Lcom/bayyari/tv/ui/series/SeriesFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SeriesFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/series/SeriesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/bayyari/tv/ui/series/SeriesFragment$onViewCreated$1",
        "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;",
        "onQueryTextSubmit",
        "",
        "query",
        "",
        "onQueryTextChange",
        "newText",
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
.field final synthetic this$0:Lcom/bayyari/tv/ui/series/SeriesFragment;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/series/SeriesFragment;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/bayyari/tv/ui/series/SeriesFragment;

    iput-object p1, p0, Lcom/bayyari/tv/ui/series/SeriesFragment$onViewCreated$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesFragment;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesFragment$onViewCreated$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesFragment;

    invoke-static {v0}, Lcom/bayyari/tv/ui/series/SeriesFragment;->access$getViewModel(Lcom/bayyari/tv/ui/series/SeriesFragment;)Lcom/bayyari/tv/ui/series/SeriesViewModel;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/series/SeriesViewModel;->setQuery(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesFragment$onViewCreated$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesFragment;

    invoke-static {v0}, Lcom/bayyari/tv/ui/series/SeriesFragment;->access$getViewModel(Lcom/bayyari/tv/ui/series/SeriesFragment;)Lcom/bayyari/tv/ui/series/SeriesViewModel;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/series/SeriesViewModel;->setQuery(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method

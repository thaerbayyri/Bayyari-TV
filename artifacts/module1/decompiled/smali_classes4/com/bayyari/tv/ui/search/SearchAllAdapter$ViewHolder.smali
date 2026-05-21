.class public final Lcom/bayyari/tv/ui/search/SearchAllAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchAllAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/search/SearchAllAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/search/SearchAllAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/bayyari/tv/databinding/ItemSearchAllBinding;",
        "<init>",
        "(Lcom/bayyari/tv/databinding/ItemSearchAllBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/bayyari/tv/ui/search/SearchItem;",
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
.field private final binding:Lcom/bayyari/tv/databinding/ItemSearchAllBinding;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/databinding/ItemSearchAllBinding;)V
    .locals 1
    .param p1, "binding"    # Lcom/bayyari/tv/databinding/ItemSearchAllBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/bayyari/tv/databinding/ItemSearchAllBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/bayyari/tv/ui/search/SearchAllAdapter$ViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSearchAllBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/bayyari/tv/ui/search/SearchItem;)V
    .locals 4
    .param p1, "item"    # Lcom/bayyari/tv/ui/search/SearchItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchAllAdapter$ViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSearchAllBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemSearchAllBinding;->textTitle:Landroid/widget/TextView;

    .line 30
    instance-of v1, p1, Lcom/bayyari/tv/ui/search/SearchItem$Live;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/ui/search/SearchItem$Live;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/search/SearchItem$Live;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Live: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 31
    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/ui/search/SearchItem$Movie;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/ui/search/SearchItem$Movie;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/search/SearchItem$Movie;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Movie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 32
    :cond_1
    instance-of v1, p1, Lcom/bayyari/tv/ui/search/SearchItem$Series;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/ui/search/SearchItem$Series;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/search/SearchItem$Series;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Series: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void

    .line 29
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

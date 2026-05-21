.class public final Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FeaturedPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter;
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
        "Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/bayyari/tv/databinding/ItemFeaturedBinding;",
        "<init>",
        "(Lcom/bayyari/tv/databinding/ItemFeaturedBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/bayyari/tv/domain/model/Movie;",
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
.field private final binding:Lcom/bayyari/tv/databinding/ItemFeaturedBinding;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/databinding/ItemFeaturedBinding;)V
    .locals 1
    .param p1, "binding"    # Lcom/bayyari/tv/databinding/ItemFeaturedBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/bayyari/tv/databinding/ItemFeaturedBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemFeaturedBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/bayyari/tv/domain/model/Movie;)V
    .locals 2
    .param p1, "item"    # Lcom/bayyari/tv/domain/model/Movie;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/FeaturedPagerAdapter$ViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemFeaturedBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemFeaturedBinding;->textTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method

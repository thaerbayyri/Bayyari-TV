.class public final Lcom/bayyari/tv/ui/home/MediaCardPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "MediaCardPresenter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/home/MediaCardPresenter;",
        "Landroidx/leanback/widget/Presenter;",
        "<init>",
        "()V",
        "onCreateViewHolder",
        "Landroidx/leanback/widget/Presenter$ViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onBindViewHolder",
        "",
        "viewHolder",
        "item",
        "",
        "onUnbindViewHolder",
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
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "viewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type androidx.leanback.widget.ImageCardView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/leanback/widget/ImageCardView;

    .line 20
    .local v0, "card":Landroidx/leanback/widget/ImageCardView;
    nop

    .line 21
    instance-of v1, p2, Lcom/bayyari/tv/domain/model/Channel;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/bayyari/tv/domain/model/Channel;

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_0
    instance-of v1, p2, Lcom/bayyari/tv/domain/model/Movie;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/bayyari/tv/domain/model/Movie;

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Movie;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_1
    instance-of v1, p2, Lcom/bayyari/tv/domain/model/Series;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/bayyari/tv/domain/model/Series;

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Series;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 24
    :cond_2
    const-string v1, ""

    .line 20
    :goto_0
    nop

    .line 26
    .local v1, "title":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ImageCardView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroidx/leanback/widget/ImageCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$onCreateViewHolder_u24lambda_u240\\1":Landroidx/leanback/widget/ImageCardView;
    const/4 v2, 0x0

    .line 11
    .local v2, "$i$a$-apply-MediaCardPresenter$onCreateViewHolder$card$1\\1\\10\\0":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/ImageCardView;->setFocusable(Z)V

    .line 12
    invoke-virtual {v1, v3}, Landroidx/leanback/widget/ImageCardView;->setFocusableInTouchMode(Z)V

    .line 13
    const/16 v3, 0xf0

    const/16 v4, 0x87

    invoke-virtual {v1, v3, v4}, Landroidx/leanback/widget/ImageCardView;->setMainImageDimensions(II)V

    .line 14
    nop

    .line 10
    .end local v1    # "$this$onCreateViewHolder_u24lambda_u240\\1":Landroidx/leanback/widget/ImageCardView;
    .end local v2    # "$i$a$-apply-MediaCardPresenter$onCreateViewHolder$card$1\\1\\10\\0":I
    nop

    .line 15
    .local v0, "card":Landroidx/leanback/widget/ImageCardView;
    new-instance v1, Landroidx/leanback/widget/Presenter$ViewHolder;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-direct {v1, v2}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    return-void
.end method

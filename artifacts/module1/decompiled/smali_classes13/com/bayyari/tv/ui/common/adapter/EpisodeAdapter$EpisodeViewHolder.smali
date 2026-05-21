.class public final Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EpisodeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EpisodeViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/bayyari/tv/databinding/ItemEpisodeBinding;",
        "<init>",
        "(Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;Lcom/bayyari/tv/databinding/ItemEpisodeBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/bayyari/tv/domain/model/Episode;",
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
.field private final binding:Lcom/bayyari/tv/databinding/ItemEpisodeBinding;

.field final synthetic this$0:Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;Lcom/bayyari/tv/databinding/ItemEpisodeBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;
    .param p2, "binding"    # Lcom/bayyari/tv/databinding/ItemEpisodeBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/databinding/ItemEpisodeBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;

    .line 26
    invoke-virtual {p2}, Lcom/bayyari/tv/databinding/ItemEpisodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    iput-object p2, p0, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemEpisodeBinding;

    .line 24
    return-void
.end method

.method static final bind$lambda$0(Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;Lcom/bayyari/tv/domain/model/Episode;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;
    .param p1, "$item"    # Lcom/bayyari/tv/domain/model/Episode;
    .param p2, "it"    # Landroid/view/View;

    .line 35
    invoke-static {p0}, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;->access$getOnClick$p(Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/bayyari/tv/domain/model/Episode;)V
    .locals 7
    .param p1, "item"    # Lcom/bayyari/tv/domain/model/Episode;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemEpisodeBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemEpisodeBinding;->textEpisodeTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Episode;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemEpisodeBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemEpisodeBinding;->textEpisodeNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemEpisodeBinding;

    invoke-virtual {v1}, Lcom/bayyari/tv/databinding/ItemEpisodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 31
    sget v2, Lcom/bayyari/tv/R$string;->series_episode_number:I

    .line 32
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Episode;->getSeason()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 33
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Episode;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    .line 32
    nop

    .line 30
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemEpisodeBinding;

    invoke-virtual {v0}, Lcom/bayyari/tv/databinding/ItemEpisodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter$EpisodeViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;Lcom/bayyari/tv/domain/model/Episode;)V

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.class public final Lcom/bayyari/tv/ui/series/SeasonAdapter$SeasonViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SeasonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/series/SeasonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SeasonViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeasonAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeasonAdapter.kt\ncom/bayyari/tv/ui/series/SeasonAdapter$SeasonViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/series/SeasonAdapter$SeasonViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/bayyari/tv/databinding/ItemSeasonBinding;",
        "<init>",
        "(Lcom/bayyari/tv/ui/series/SeasonAdapter;Lcom/bayyari/tv/databinding/ItemSeasonBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/bayyari/tv/domain/model/Season;",
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
.field private final binding:Lcom/bayyari/tv/databinding/ItemSeasonBinding;

.field final synthetic this$0:Lcom/bayyari/tv/ui/series/SeasonAdapter;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/ui/series/SeasonAdapter;Lcom/bayyari/tv/databinding/ItemSeasonBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/series/SeasonAdapter;
    .param p2, "binding"    # Lcom/bayyari/tv/databinding/ItemSeasonBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/databinding/ItemSeasonBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/bayyari/tv/ui/series/SeasonAdapter$SeasonViewHolder;->this$0:Lcom/bayyari/tv/ui/series/SeasonAdapter;

    .line 26
    invoke-virtual {p2}, Lcom/bayyari/tv/databinding/ItemSeasonBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    iput-object p2, p0, Lcom/bayyari/tv/ui/series/SeasonAdapter$SeasonViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSeasonBinding;

    .line 24
    return-void
.end method

.method static final bind$lambda$1(Lcom/bayyari/tv/ui/series/SeasonAdapter;Lcom/bayyari/tv/domain/model/Season;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/series/SeasonAdapter;
    .param p1, "$item"    # Lcom/bayyari/tv/domain/model/Season;
    .param p2, "it"    # Landroid/view/View;

    .line 30
    invoke-static {p0}, Lcom/bayyari/tv/ui/series/SeasonAdapter;->access$getOnClick$p(Lcom/bayyari/tv/ui/series/SeasonAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Season;->getSeasonNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/bayyari/tv/domain/model/Season;)V
    .locals 5
    .param p1, "item"    # Lcom/bayyari/tv/domain/model/Season;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeasonAdapter$SeasonViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSeasonBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemSeasonBinding;->textSeasonName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Season;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 29
    .local v1, "$i$a$-ifBlank-SeasonAdapter$SeasonViewHolder$bind$1\\1\\29\\0":I
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Season;->getSeasonNumber()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Season "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-ifBlank-SeasonAdapter$SeasonViewHolder$bind$1\\1\\29\\0":I
    :cond_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeasonAdapter$SeasonViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSeasonBinding;

    invoke-virtual {v0}, Lcom/bayyari/tv/databinding/ItemSeasonBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bayyari/tv/ui/series/SeasonAdapter$SeasonViewHolder;->this$0:Lcom/bayyari/tv/ui/series/SeasonAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/series/SeasonAdapter$SeasonViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/bayyari/tv/ui/series/SeasonAdapter$SeasonViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/series/SeasonAdapter;Lcom/bayyari/tv/domain/model/Season;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

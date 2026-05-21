.class public final Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SeriesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SeriesViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeriesAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeriesAdapter.kt\ncom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n1#2:54\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/bayyari/tv/databinding/ItemSeriesBinding;",
        "<init>",
        "(Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;Lcom/bayyari/tv/databinding/ItemSeriesBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/bayyari/tv/domain/model/Series;",
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
.field private final binding:Lcom/bayyari/tv/databinding/ItemSeriesBinding;

.field final synthetic this$0:Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;Lcom/bayyari/tv/databinding/ItemSeriesBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;
    .param p2, "binding"    # Lcom/bayyari/tv/databinding/ItemSeriesBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/databinding/ItemSeriesBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;

    .line 28
    invoke-virtual {p2}, Lcom/bayyari/tv/databinding/ItemSeriesBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p2, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSeriesBinding;

    .line 26
    return-void
.end method

.method static final bind$lambda$3(Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;Lcom/bayyari/tv/domain/model/Series;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;
    .param p1, "$item"    # Lcom/bayyari/tv/domain/model/Series;
    .param p2, "it"    # Landroid/view/View;

    .line 41
    invoke-static {p0}, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;->access$getOnClick$p(Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/bayyari/tv/domain/model/Series;)V
    .locals 6
    .param p1, "item"    # Lcom/bayyari/tv/domain/model/Series;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSeriesBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemSeriesBinding;->textSeriesTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Series;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Series;->getRating()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 33
    .local v0, "rating":Ljava/lang/Double;
    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSeriesBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/ItemSeriesBinding;->textRating:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "\u2014"

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSeriesBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/ItemSeriesBinding;->textSeriesSub:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Series;->getGenre()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const/4 v2, 0x0

    .line 34
    .local v2, "$i$a$-ifBlank-SeriesAdapter$SeriesViewHolder$bind$1\\1\\34\\0":I
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Series;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    const/4 v3, 0x0

    .line 34
    .local v3, "$i$a$-ifBlank-SeriesAdapter$SeriesViewHolder$bind$1$1\\2\\34\\1":I
    nop

    .end local v3    # "$i$a$-ifBlank-SeriesAdapter$SeriesViewHolder$bind$1$1\\2\\34\\1":I
    const-string v3, " "

    :cond_1
    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .end local v2    # "$i$a$-ifBlank-SeriesAdapter$SeriesViewHolder$bind$1\\1\\34\\0":I
    :cond_2
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSeriesBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/ItemSeriesBinding;->imageCover:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Series;->getCover()Ljava/lang/String;

    move-result-object v2

    .line 54
    move-object v3, v2

    .local v3, "it\\3":Ljava/lang/String;
    const/4 v4, 0x0

    .line 36
    .local v4, "$i$a$-takeIf-SeriesAdapter$SeriesViewHolder$bind$2\\3\\36\\0":I
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    .end local v3    # "it\\3":Ljava/lang/String;
    .end local v4    # "$i$a$-takeIf-SeriesAdapter$SeriesViewHolder$bind$2\\3\\36\\0":I
    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 37
    sget v2, Lcom/bayyari/tv/R$color;->colorCard:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 38
    sget v2, Lcom/bayyari/tv/R$color;->colorCard:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 39
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 40
    iget-object v2, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSeriesBinding;

    iget-object v2, v2, Lcom/bayyari/tv/databinding/ItemSeriesBinding;->imageCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 41
    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemSeriesBinding;

    invoke-virtual {v1}, Lcom/bayyari/tv/databinding/ItemSeriesBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;

    new-instance v3, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p1}, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter$SeriesViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;Lcom/bayyari/tv/domain/model/Series;)V

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

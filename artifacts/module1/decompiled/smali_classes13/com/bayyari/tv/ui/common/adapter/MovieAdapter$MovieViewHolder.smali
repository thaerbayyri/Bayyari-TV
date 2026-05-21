.class public final Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MovieAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MovieViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMovieAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MovieAdapter.kt\ncom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/bayyari/tv/databinding/ItemMovieBinding;",
        "<init>",
        "(Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;Lcom/bayyari/tv/databinding/ItemMovieBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "epochToYear",
        "",
        "epoch",
        "",
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
.field private final binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

.field final synthetic this$0:Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;Lcom/bayyari/tv/databinding/ItemMovieBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;
    .param p2, "binding"    # Lcom/bayyari/tv/databinding/ItemMovieBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/databinding/ItemMovieBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;

    .line 29
    invoke-virtual {p2}, Lcom/bayyari/tv/databinding/ItemMovieBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    iput-object p2, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

    .line 27
    return-void
.end method

.method static final bind$lambda$3(Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;Lcom/bayyari/tv/domain/model/Movie;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;
    .param p1, "$item"    # Lcom/bayyari/tv/domain/model/Movie;
    .param p2, "it"    # Landroid/view/View;

    .line 59
    invoke-static {p0}, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;->access$getOnClick$p(Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final epochToYear(J)Ljava/lang/String;
    .locals 5
    .param p1, "epoch"    # J

    .line 63
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 64
    :cond_0
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    goto :goto_0

    :cond_1
    move-wide v0, p1

    .line 65
    .local v0, "ms":J
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    move-object v3, v2

    .line 79
    .local v3, "$this$epochToYear_u24lambda_u244\\1":Ljava/util/Calendar;
    const/4 v4, 0x0

    .line 65
    .local v4, "$i$a$-apply-MovieAdapter$MovieViewHolder$epochToYear$cal$1\\1\\65\\0":I
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    .end local v3    # "$this$epochToYear_u24lambda_u244\\1":Ljava/util/Calendar;
    .end local v4    # "$i$a$-apply-MovieAdapter$MovieViewHolder$epochToYear$cal$1\\1\\65\\0":I
    .local v2, "cal":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public final bind(Lcom/bayyari/tv/domain/model/Movie;)V
    .locals 11
    .param p1, "item"    # Lcom/bayyari/tv/domain/model/Movie;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textMovieTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getRating5Based()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 79
    .local v1, "it\\1":D
    const/4 v3, 0x0

    .line 34
    .local v3, "$i$a$-takeIf-MovieAdapter$MovieViewHolder$bind$ratingValue$1\\1\\34\\0":I
    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v8

    .end local v1    # "it\\1":D
    .end local v3    # "$i$a$-takeIf-MovieAdapter$MovieViewHolder$bind$ratingValue$1\\1\\34\\0":I
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_4

    .line 35
    :cond_2
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getRating()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    .line 79
    .local v9, "it\\2":D
    const/4 v1, 0x0

    .line 35
    .local v1, "$i$a$-takeIf-MovieAdapter$MovieViewHolder$bind$ratingValue$2\\2\\35\\0":I
    cmpl-double v3, v9, v4

    if-lez v3, :cond_3

    move v1, v7

    goto :goto_2

    :cond_3
    move v1, v8

    .end local v1    # "$i$a$-takeIf-MovieAdapter$MovieViewHolder$bind$ratingValue$2\\2\\35\\0":I
    .end local v9    # "it\\2":D
    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v9

    goto :goto_4

    :cond_5
    move-wide v0, v4

    .line 34
    :goto_4
    nop

    .line 36
    .local v0, "ratingValue":D
    iget-object v3, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

    iget-object v3, v3, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textRating:Landroid/widget/TextView;

    cmpl-double v4, v0, v4

    if-lez v4, :cond_6

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v4, "\u2014"

    :goto_5
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getAddedEpochSeconds()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->epochToYear(J)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "year":Ljava/lang/String;
    iget-object v4, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

    iget-object v4, v4, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textMovieSub:Landroid/widget/TextView;

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_7
    const-string v5, " "

    check-cast v5, Ljava/lang/CharSequence;

    :goto_6
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v4, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

    iget-object v4, v4, Lcom/bayyari/tv/databinding/ItemMovieBinding;->imagePoster:Landroid/widget/ImageView;

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 42
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getPoster()Ljava/lang/String;

    move-result-object v5

    .line 79
    move-object v6, v5

    .local v6, "it\\3":Ljava/lang/String;
    const/4 v9, 0x0

    .line 42
    .local v9, "$i$a$-takeIf-MovieAdapter$MovieViewHolder$bind$1\\3\\42\\0":I
    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    .end local v6    # "it\\3":Ljava/lang/String;
    .end local v9    # "$i$a$-takeIf-MovieAdapter$MovieViewHolder$bind$1\\3\\42\\0":I
    if-nez v10, :cond_8

    move-object v2, v5

    :cond_8
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 43
    sget v4, Lcom/bayyari/tv/R$color;->colorCard:I

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 44
    sget v4, Lcom/bayyari/tv/R$color;->colorCard:I

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 45
    invoke-virtual {v2}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 46
    iget-object v4, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

    iget-object v4, v4, Lcom/bayyari/tv/databinding/ItemMovieBinding;->imagePoster:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 49
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getAddedEpochSeconds()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v2, v4, v9

    if-lez v2, :cond_9

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    div-long/2addr v4, v9

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getAddedEpochSeconds()J

    move-result-wide v9

    sub-long/2addr v4, v9

    const-wide/32 v9, 0x278d00

    cmp-long v2, v4, v9

    if-gez v2, :cond_9

    goto :goto_7

    :cond_9
    move v7, v8

    .line 49
    :goto_7
    nop

    .line 51
    .local v7, "isNew":Z
    nop

    .line 56
    iget-object v2, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

    .line 51
    if-eqz v7, :cond_a

    .line 52
    iget-object v2, v2, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textTag:Landroid/widget/TextView;

    const-string v4, "NEW"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

    iget-object v2, v2, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textTag:Landroid/widget/TextView;

    sget v4, Lcom/bayyari/tv/R$drawable;->bg_tag_new:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 54
    iget-object v2, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

    iget-object v2, v2, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textTag:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 56
    :cond_a
    iget-object v2, v2, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textTag:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :goto_8
    iget-object v2, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemMovieBinding;

    invoke-virtual {v2}, Lcom/bayyari/tv/databinding/ItemMovieBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;

    new-instance v5, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, p1}, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter$MovieViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;Lcom/bayyari/tv/domain/model/Movie;)V

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

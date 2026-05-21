.class public final Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContinueWatchingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WatchViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinueWatchingAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinueWatchingAdapter.kt\ncom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;",
        "<init>",
        "(Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
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
.field private final binding:Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

.field final synthetic this$0:Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;
    .param p2, "binding"    # Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;

    .line 28
    invoke-virtual {p2}, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p2, p0, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

    .line 26
    return-void
.end method

.method static final bind$lambda$3(Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;
    .param p1, "$item"    # Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    .param p2, "it"    # Landroid/view/View;

    .line 44
    invoke-static {p0}, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;->access$getOnClick$p(Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;)V
    .locals 8
    .param p1, "item"    # Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->textTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 57
    const/4 v1, 0x0

    .line 31
    .local v1, "$i$a$-ifBlank-ContinueWatchingAdapter$WatchViewHolder$bind$1\\1\\31\\0":I
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getContentType()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 57
    .local v4, "it\\2":C
    const/4 v6, 0x0

    .line 31
    .local v6, "$i$a$-replaceFirstCharWithChar-ContinueWatchingAdapter$WatchViewHolder$bind$1$1\\2\\31\\1":I
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .end local v4    # "it\\2":C
    .end local v6    # "$i$a$-replaceFirstCharWithChar-ContinueWatchingAdapter$WatchViewHolder$bind$1$1\\2\\31\\1":I
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "substring(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v1, v2

    .end local v1    # "$i$a$-ifBlank-ContinueWatchingAdapter$WatchViewHolder$bind$1\\1\\31\\0":I
    :cond_2
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getDurationMs()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getPositionMs()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    const-wide/32 v6, 0xea60

    div-long/2addr v0, v6

    .line 33
    .local v0, "remaining":J
    iget-object v2, p0, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

    iget-object v2, v2, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->textSubtitle:Landroid/widget/TextView;

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min left"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getContentType()Ljava/lang/String;

    move-result-object v6

    :goto_1
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getDurationMs()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-lez v2, :cond_4

    .line 35
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getPositionMs()J

    move-result-wide v4

    long-to-float v2, v4

    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getDurationMs()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    goto :goto_2

    .line 36
    :cond_4
    nop

    .line 34
    :goto_2
    nop

    .line 37
    .local v3, "progress":I
    iget-object v2, p0, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

    iget-object v2, v2, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 38
    iget-object v2, p0, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

    iget-object v2, v2, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->imagePoster:Landroid/widget/ImageView;

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getPoster()Ljava/lang/String;

    move-result-object v4

    .line 57
    move-object v5, v4

    .local v5, "it\\3":Ljava/lang/String;
    const/4 v6, 0x0

    .line 39
    .local v6, "$i$a$-takeIf-ContinueWatchingAdapter$WatchViewHolder$bind$2\\3\\39\\0":I
    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    .end local v5    # "it\\3":Ljava/lang/String;
    .end local v6    # "$i$a$-takeIf-ContinueWatchingAdapter$WatchViewHolder$bind$2\\3\\39\\0":I
    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 40
    sget v4, Lcom/bayyari/tv/R$color;->colorCard:I

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 41
    sget v4, Lcom/bayyari/tv/R$color;->colorCard:I

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 42
    invoke-virtual {v2}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 43
    iget-object v4, p0, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

    iget-object v4, v4, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->imagePoster:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 44
    iget-object v2, p0, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

    invoke-virtual {v2}, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;

    new-instance v5, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, p1}, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter$WatchViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;)V

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

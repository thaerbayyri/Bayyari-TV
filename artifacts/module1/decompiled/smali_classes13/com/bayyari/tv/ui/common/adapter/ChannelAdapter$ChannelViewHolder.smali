.class public final Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChannelAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChannelViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelAdapter.kt\ncom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/bayyari/tv/databinding/ItemChannelBinding;",
        "<init>",
        "(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/databinding/ItemChannelBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/bayyari/tv/domain/model/Channel;",
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
.field private final binding:Lcom/bayyari/tv/databinding/ItemChannelBinding;

.field final synthetic this$0:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/databinding/ItemChannelBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;
    .param p2, "binding"    # Lcom/bayyari/tv/databinding/ItemChannelBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/databinding/ItemChannelBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    .line 29
    invoke-virtual {p2}, Lcom/bayyari/tv/databinding/ItemChannelBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    iput-object p2, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemChannelBinding;

    .line 27
    return-void
.end method

.method static final bind$lambda$1(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/domain/model/Channel;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;
    .param p1, "$item"    # Lcom/bayyari/tv/domain/model/Channel;
    .param p2, "it"    # Landroid/view/View;

    .line 43
    invoke-static {p0}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;->access$getOnClick$p(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final bind$lambda$2(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/domain/model/Channel;Landroid/view/View;)Z
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;
    .param p1, "$item"    # Lcom/bayyari/tv/domain/model/Channel;
    .param p2, "it"    # Landroid/view/View;

    .line 44
    invoke-static {p0}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;->access$getOnLongClick$p(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final bind(Lcom/bayyari/tv/domain/model/Channel;)V
    .locals 6
    .param p1, "item"    # Lcom/bayyari/tv/domain/model/Channel;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemChannelBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemChannelBinding;->textChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemChannelBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemChannelBinding;->textProgram:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemChannelBinding;

    invoke-virtual {v1}, Lcom/bayyari/tv/databinding/ItemChannelBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    sget v2, Lcom/bayyari/tv/R$string;->live_now_playing:I

    .line 35
    iget-object v3, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemChannelBinding;

    invoke-virtual {v3}, Lcom/bayyari/tv/databinding/ItemChannelBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/cardview/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/bayyari/tv/R$string;->live_no_epg:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 33
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemChannelBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemChannelBinding;->imageLogo:Landroid/widget/ImageView;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getStreamIcon()Ljava/lang/String;

    move-result-object v1

    .line 57
    move-object v2, v1

    .local v2, "it\\1":Ljava/lang/String;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-takeIf-ChannelAdapter$ChannelViewHolder$bind$1\\1\\38\\0":I
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    .end local v2    # "it\\1":Ljava/lang/String;
    .end local v3    # "$i$a$-takeIf-ChannelAdapter$ChannelViewHolder$bind$1\\1\\38\\0":I
    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 39
    sget v1, Lcom/bayyari/tv/R$color;->colorSurface:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 40
    sget v1, Lcom/bayyari/tv/R$color;->colorSurface:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 41
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 42
    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemChannelBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/ItemChannelBinding;->imageLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 43
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemChannelBinding;

    invoke-virtual {v0}, Lcom/bayyari/tv/databinding/ItemChannelBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/domain/model/Channel;)V

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemChannelBinding;

    invoke-virtual {v0}, Lcom/bayyari/tv/databinding/ItemChannelBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/domain/model/Channel;)V

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 45
    return-void
.end method

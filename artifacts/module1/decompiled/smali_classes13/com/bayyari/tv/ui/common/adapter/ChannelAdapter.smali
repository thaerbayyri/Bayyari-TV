.class public final Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "ChannelAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;,
        Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0012\u0013B1\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001c\u0010\n\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001c\u0010\u000f\u001a\u00020\u00062\n\u0010\u0010\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000eH\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;",
        "onClick",
        "Lkotlin/Function1;",
        "",
        "onLongClick",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "ChannelViewHolder",
        "Diff",
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
.field private final onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onLongClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onLongClick"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/bayyari/tv/domain/model/Channel;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/bayyari/tv/domain/model/Channel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLongClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;->INSTANCE:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 14
    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    .line 15
    iput-object p2, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;->onLongClick:Lkotlin/jvm/functions/Function1;

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 15
    new-instance p2, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$$ExternalSyntheticLambda0;-><init>()V

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 16
    return-void
.end method

.method static final _init_$lambda$0(Lcom/bayyari/tv/domain/model/Channel;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Lcom/bayyari/tv/domain/model/Channel;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic access$getOnClick$p(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    .line 13
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getOnLongClick$p(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    .line 13
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;->onLongClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;->onBindViewHolder(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/bayyari/tv/domain/model/Channel;

    invoke-virtual {p1, v0}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->bind(Lcom/bayyari/tv/domain/model/Channel;)V

    .line 25
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bayyari/tv/databinding/ItemChannelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ItemChannelBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .local v0, "binding":Lcom/bayyari/tv/databinding/ItemChannelBinding;
    new-instance v1, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;-><init>(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/databinding/ItemChannelBinding;)V

    return-object v1
.end method

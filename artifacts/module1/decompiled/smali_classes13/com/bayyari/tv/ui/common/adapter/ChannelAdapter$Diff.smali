.class final Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "ChannelAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Diff"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/bayyari/tv/domain/model/Channel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c2\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "<init>",
        "()V",
        "areItemsTheSame",
        "",
        "oldItem",
        "newItem",
        "areContentsTheSame",
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


# static fields
.field public static final INSTANCE:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;

    invoke-direct {v0}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;-><init>()V

    sput-object v0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;->INSTANCE:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/bayyari/tv/domain/model/Channel;Lcom/bayyari/tv/domain/model/Channel;)Z
    .locals 1
    .param p1, "oldItem"    # Lcom/bayyari/tv/domain/model/Channel;
    .param p2, "newItem"    # Lcom/bayyari/tv/domain/model/Channel;

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/bayyari/tv/domain/model/Channel;

    move-object v1, p2

    check-cast v1, Lcom/bayyari/tv/domain/model/Channel;

    invoke-virtual {p0, v0, v1}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;->areContentsTheSame(Lcom/bayyari/tv/domain/model/Channel;Lcom/bayyari/tv/domain/model/Channel;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Lcom/bayyari/tv/domain/model/Channel;Lcom/bayyari/tv/domain/model/Channel;)Z
    .locals 2
    .param p1, "oldItem"    # Lcom/bayyari/tv/domain/model/Channel;
    .param p2, "newItem"    # Lcom/bayyari/tv/domain/model/Channel;

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getStreamId()I

    move-result v0

    invoke-virtual {p2}, Lcom/bayyari/tv/domain/model/Channel;->getStreamId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getServerId()I

    move-result v0

    invoke-virtual {p2}, Lcom/bayyari/tv/domain/model/Channel;->getServerId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/bayyari/tv/domain/model/Channel;

    move-object v1, p2

    check-cast v1, Lcom/bayyari/tv/domain/model/Channel;

    invoke-virtual {p0, v0, v1}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;->areItemsTheSame(Lcom/bayyari/tv/domain/model/Channel;Lcom/bayyari/tv/domain/model/Channel;)Z

    move-result v0

    return v0
.end method

.class public final Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "EpgProgramAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$Diff;,
        Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
        "Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0011\u0012B\u001f\u0012\u0016\u0008\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001c\u0010\t\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u001c\u0010\u000e\u001a\u00020\u00062\n\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0010\u001a\u00020\rH\u0016R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
        "Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;",
        "onClick",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "EpgViewHolder",
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
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$Diff;->INSTANCE:Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$Diff;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 13
    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 14
    return-void
.end method

.method public static final synthetic access$getOnClick$p(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;

    .line 12
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 12
    move-object v0, p1

    check-cast v0, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;->onBindViewHolder(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/bayyari/tv/domain/model/EpgProgram;

    invoke-virtual {p1, v0}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;->bind(Lcom/bayyari/tv/domain/model/EpgProgram;)V

    .line 23
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .local v0, "binding":Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;
    new-instance v1, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;-><init>(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;)V

    return-object v1
.end method

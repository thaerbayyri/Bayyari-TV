.class public final Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EpgProgramAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EpgViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;",
        "<init>",
        "(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
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
.field private final binding:Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;

.field final synthetic this$0:Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;
    .param p2, "binding"    # Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;

    .line 27
    invoke-virtual {p2}, Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    iput-object p2, p0, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;

    .line 25
    return-void
.end method

.method static final bind$lambda$0(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;Lcom/bayyari/tv/domain/model/EpgProgram;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;
    .param p1, "$item"    # Lcom/bayyari/tv/domain/model/EpgProgram;
    .param p2, "it"    # Landroid/view/View;

    .line 32
    invoke-static {p0}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;->access$getOnClick$p(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/bayyari/tv/domain/model/EpgProgram;)V
    .locals 4
    .param p1, "item"    # Lcom/bayyari/tv/domain/model/EpgProgram;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;->textProgramTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/EpgProgram;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;->textProgramTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/EpgProgram;->getStartMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bayyari/tv/util/ExtensionsKt;->toEpgTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/EpgProgram;->getEndMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bayyari/tv/util/ExtensionsKt;->toEpgTime(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;

    invoke-virtual {v0}, Lcom/bayyari/tv/databinding/ItemEpgProgramBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter$EpgViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;Lcom/bayyari/tv/domain/model/EpgProgram;)V

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

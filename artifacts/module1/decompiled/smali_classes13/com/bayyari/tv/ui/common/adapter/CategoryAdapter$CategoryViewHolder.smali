.class public final Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter$CategoryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CategoryViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter$CategoryViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/bayyari/tv/databinding/ItemCategoryBinding;",
        "<init>",
        "(Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;Lcom/bayyari/tv/databinding/ItemCategoryBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/bayyari/tv/domain/model/Category;",
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
.field private final binding:Lcom/bayyari/tv/databinding/ItemCategoryBinding;

.field final synthetic this$0:Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;Lcom/bayyari/tv/databinding/ItemCategoryBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;
    .param p2, "binding"    # Lcom/bayyari/tv/databinding/ItemCategoryBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/databinding/ItemCategoryBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter$CategoryViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;

    .line 26
    invoke-virtual {p2}, Lcom/bayyari/tv/databinding/ItemCategoryBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    iput-object p2, p0, Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter$CategoryViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemCategoryBinding;

    .line 24
    return-void
.end method

.method static final bind$lambda$0(Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;Lcom/bayyari/tv/domain/model/Category;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;
    .param p1, "$item"    # Lcom/bayyari/tv/domain/model/Category;
    .param p2, "it"    # Landroid/view/View;

    .line 30
    invoke-static {p0}, Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;->access$getOnClick$p(Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/bayyari/tv/domain/model/Category;)V
    .locals 3
    .param p1, "item"    # Lcom/bayyari/tv/domain/model/Category;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter$CategoryViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemCategoryBinding;

    iget-object v0, v0, Lcom/bayyari/tv/databinding/ItemCategoryBinding;->textCategory:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter$CategoryViewHolder;->binding:Lcom/bayyari/tv/databinding/ItemCategoryBinding;

    invoke-virtual {v0}, Lcom/bayyari/tv/databinding/ItemCategoryBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter$CategoryViewHolder;->this$0:Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter$CategoryViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter$CategoryViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;Lcom/bayyari/tv/domain/model/Category;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

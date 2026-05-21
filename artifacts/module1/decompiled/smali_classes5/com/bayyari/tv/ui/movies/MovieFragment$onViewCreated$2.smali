.class public final Lcom/bayyari/tv/ui/movies/MovieFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "MovieFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/movies/MovieFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/bayyari/tv/ui/movies/MovieFragment$onViewCreated$2",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onNothingSelected",
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
.field final synthetic this$0:Lcom/bayyari/tv/ui/movies/MovieFragment;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/movies/MovieFragment;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/bayyari/tv/ui/movies/MovieFragment;

    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MovieFragment$onViewCreated$2;->this$0:Lcom/bayyari/tv/ui/movies/MovieFragment;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 52
    packed-switch p3, :pswitch_data_0

    .line 56
    sget-object v0, Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;->ADDED:Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;

    goto :goto_0

    .line 55
    :pswitch_0
    sget-object v0, Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;->YEAR:Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;

    goto :goto_0

    .line 54
    :pswitch_1
    sget-object v0, Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;->RATING:Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;

    goto :goto_0

    .line 53
    :pswitch_2
    sget-object v0, Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;->NAME:Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;

    .line 52
    :goto_0
    nop

    .line 58
    .local v0, "sort":Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;
    iget-object v1, p0, Lcom/bayyari/tv/ui/movies/MovieFragment$onViewCreated$2;->this$0:Lcom/bayyari/tv/ui/movies/MovieFragment;

    invoke-static {v1}, Lcom/bayyari/tv/ui/movies/MovieFragment;->access$getViewModel(Lcom/bayyari/tv/ui/movies/MovieFragment;)Lcom/bayyari/tv/ui/movies/MovieViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bayyari/tv/ui/movies/MovieViewModel;->setSort(Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;)V

    .line 59
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 61
    return-void
.end method

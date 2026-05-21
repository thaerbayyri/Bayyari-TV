.class Landroidx/leanback/app/SearchFragment$6;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroidx/leanback/widget/SearchBar$SearchBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/SearchFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/leanback/app/SearchFragment;

    .line 305
    iput-object p1, p0, Landroidx/leanback/app/SearchFragment$6;->this$0:Landroidx/leanback/app/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardDismiss(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 326
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$6;->this$0:Landroidx/leanback/app/SearchFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/SearchFragment;->queryComplete()V

    .line 327
    return-void
.end method

.method public onSearchQueryChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$6;->this$0:Landroidx/leanback/app/SearchFragment;

    iget-object v0, v0, Landroidx/leanback/app/SearchFragment;->mProvider:Landroidx/leanback/app/SearchFragment$SearchResultProvider;

    .line 313
    iget-object v1, p0, Landroidx/leanback/app/SearchFragment$6;->this$0:Landroidx/leanback/app/SearchFragment;

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v1, p1}, Landroidx/leanback/app/SearchFragment;->retrieveResults(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_0
    iput-object p1, v1, Landroidx/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    .line 315
    :goto_0
    return-void
.end method

.method public onSearchQuerySubmit(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$6;->this$0:Landroidx/leanback/app/SearchFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/SearchFragment;->submitQuery(Ljava/lang/String;)V

    .line 321
    return-void
.end method

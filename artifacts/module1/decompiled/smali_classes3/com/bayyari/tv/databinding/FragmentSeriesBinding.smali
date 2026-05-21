.class public final Lcom/bayyari/tv/databinding/FragmentSeriesBinding;
.super Ljava/lang/Object;
.source "FragmentSeriesBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headerRow:Landroid/widget/LinearLayout;

.field public final recyclerSeries:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final searchSeries:Landroidx/appcompat/widget/SearchView;

.field public final textSeriesCount:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/SearchView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "headerRow"    # Landroid/widget/LinearLayout;
    .param p3, "recyclerSeries"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "searchSeries"    # Landroidx/appcompat/widget/SearchView;
    .param p5, "textSeriesCount"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "headerRow",
            "recyclerSeries",
            "searchSeries",
            "textSeriesCount"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    iput-object p2, p0, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;->headerRow:Landroid/widget/LinearLayout;

    .line 42
    iput-object p3, p0, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;->recyclerSeries:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    iput-object p4, p0, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;->searchSeries:Landroidx/appcompat/widget/SearchView;

    .line 44
    iput-object p5, p0, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;->textSeriesCount:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentSeriesBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 74
    sget v0, Lcom/bayyari/tv/R$id;->headerRow:I

    .line 75
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    .line 76
    .local v4, "headerRow":Landroid/widget/LinearLayout;
    if-eqz v4, :cond_3

    .line 80
    sget v0, Lcom/bayyari/tv/R$id;->recyclerSeries:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .local v5, "recyclerSeries":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v5, :cond_2

    .line 86
    sget v0, Lcom/bayyari/tv/R$id;->searchSeries:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/SearchView;

    .line 88
    .local v6, "searchSeries":Landroidx/appcompat/widget/SearchView;
    if-eqz v6, :cond_1

    .line 92
    sget v0, Lcom/bayyari/tv/R$id;->textSeriesCount:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 94
    .local v7, "textSeriesCount":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 98
    new-instance v2, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v7}, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/SearchView;Landroid/widget/TextView;)V

    return-object v2

    .line 95
    :cond_0
    goto :goto_0

    .line 89
    .end local v7    # "textSeriesCount":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 83
    .end local v6    # "searchSeries":Landroidx/appcompat/widget/SearchView;
    :cond_2
    goto :goto_0

    .line 77
    .end local v5    # "recyclerSeries":Landroidx/recyclerview/widget/RecyclerView;
    :cond_3
    nop

    .line 101
    .end local v4    # "headerRow":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/FragmentSeriesBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentSeriesBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentSeriesBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 61
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_series:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentSeriesBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentSeriesBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

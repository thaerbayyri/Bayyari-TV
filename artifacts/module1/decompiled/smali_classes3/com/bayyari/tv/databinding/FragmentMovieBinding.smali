.class public final Lcom/bayyari/tv/databinding/FragmentMovieBinding;
.super Ljava/lang/Object;
.source "FragmentMovieBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final chipCategories:Lcom/google/android/material/chip/ChipGroup;

.field public final headerRow:Landroid/widget/LinearLayout;

.field public final recyclerMovies:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final searchMovies:Landroidx/appcompat/widget/SearchView;

.field public final spinnerSort:Landroid/widget/Spinner;

.field public final textMovieCount:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/SearchView;Landroid/widget/Spinner;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "chipCategories"    # Lcom/google/android/material/chip/ChipGroup;
    .param p3, "headerRow"    # Landroid/widget/LinearLayout;
    .param p4, "recyclerMovies"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p5, "searchMovies"    # Landroidx/appcompat/widget/SearchView;
    .param p6, "spinnerSort"    # Landroid/widget/Spinner;
    .param p7, "textMovieCount"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "chipCategories",
            "headerRow",
            "recyclerMovies",
            "searchMovies",
            "spinnerSort",
            "textMovieCount"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iput-object p2, p0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->chipCategories:Lcom/google/android/material/chip/ChipGroup;

    .line 51
    iput-object p3, p0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->headerRow:Landroid/widget/LinearLayout;

    .line 52
    iput-object p4, p0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->recyclerMovies:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    iput-object p5, p0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->searchMovies:Landroidx/appcompat/widget/SearchView;

    .line 54
    iput-object p6, p0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->spinnerSort:Landroid/widget/Spinner;

    .line 55
    iput-object p7, p0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->textMovieCount:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentMovieBinding;
    .locals 10
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 85
    sget v0, Lcom/bayyari/tv/R$id;->chipCategories:I

    .line 86
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/chip/ChipGroup;

    .line 87
    .local v4, "chipCategories":Lcom/google/android/material/chip/ChipGroup;
    if-eqz v4, :cond_5

    .line 91
    sget v0, Lcom/bayyari/tv/R$id;->headerRow:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    .line 93
    .local v5, "headerRow":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_4

    .line 97
    sget v0, Lcom/bayyari/tv/R$id;->recyclerMovies:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    .local v6, "recyclerMovies":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v6, :cond_3

    .line 103
    sget v0, Lcom/bayyari/tv/R$id;->searchMovies:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/SearchView;

    .line 105
    .local v7, "searchMovies":Landroidx/appcompat/widget/SearchView;
    if-eqz v7, :cond_2

    .line 109
    sget v0, Lcom/bayyari/tv/R$id;->spinnerSort:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Spinner;

    .line 111
    .local v8, "spinnerSort":Landroid/widget/Spinner;
    if-eqz v8, :cond_1

    .line 115
    sget v0, Lcom/bayyari/tv/R$id;->textMovieCount:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 117
    .local v9, "textMovieCount":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 121
    new-instance v2, Lcom/bayyari/tv/databinding/FragmentMovieBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v9}, Lcom/bayyari/tv/databinding/FragmentMovieBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/SearchView;Landroid/widget/Spinner;Landroid/widget/TextView;)V

    return-object v2

    .line 118
    :cond_0
    goto :goto_0

    .line 112
    .end local v9    # "textMovieCount":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 106
    .end local v8    # "spinnerSort":Landroid/widget/Spinner;
    :cond_2
    goto :goto_0

    .line 100
    .end local v7    # "searchMovies":Landroidx/appcompat/widget/SearchView;
    :cond_3
    goto :goto_0

    .line 94
    .end local v6    # "recyclerMovies":Landroidx/recyclerview/widget/RecyclerView;
    :cond_4
    goto :goto_0

    .line 88
    .end local v5    # "headerRow":Landroid/widget/LinearLayout;
    :cond_5
    nop

    .line 124
    .end local v4    # "chipCategories":Lcom/google/android/material/chip/ChipGroup;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/FragmentMovieBinding;
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

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentMovieBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentMovieBinding;
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

    .line 72
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_movie:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentMovieBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

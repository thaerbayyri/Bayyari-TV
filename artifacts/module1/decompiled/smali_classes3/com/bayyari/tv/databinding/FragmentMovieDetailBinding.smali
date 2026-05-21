.class public final Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;
.super Ljava/lang/Object;
.source "FragmentMovieDetailBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonPlay:Landroid/widget/Button;

.field public final imagePoster:Landroid/widget/ImageView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textPlot:Landroid/widget/TextView;

.field public final textTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "buttonPlay"    # Landroid/widget/Button;
    .param p3, "imagePoster"    # Landroid/widget/ImageView;
    .param p4, "textPlot"    # Landroid/widget/TextView;
    .param p5, "textTitle"    # Landroid/widget/TextView;
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
            "buttonPlay",
            "imagePoster",
            "textPlot",
            "textTitle"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 39
    iput-object p2, p0, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->buttonPlay:Landroid/widget/Button;

    .line 40
    iput-object p3, p0, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->imagePoster:Landroid/widget/ImageView;

    .line 41
    iput-object p4, p0, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->textPlot:Landroid/widget/TextView;

    .line 42
    iput-object p5, p0, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->textTitle:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;
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

    .line 72
    sget v0, Lcom/bayyari/tv/R$id;->buttonPlay:I

    .line 73
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    .line 74
    .local v4, "buttonPlay":Landroid/widget/Button;
    if-eqz v4, :cond_3

    .line 78
    sget v0, Lcom/bayyari/tv/R$id;->imagePoster:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    .line 80
    .local v5, "imagePoster":Landroid/widget/ImageView;
    if-eqz v5, :cond_2

    .line 84
    sget v0, Lcom/bayyari/tv/R$id;->textPlot:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 86
    .local v6, "textPlot":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 90
    sget v0, Lcom/bayyari/tv/R$id;->textTitle:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 92
    .local v7, "textTitle":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 96
    new-instance v2, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v2 .. v7}, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 93
    :cond_0
    goto :goto_0

    .line 87
    .end local v7    # "textTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 81
    .end local v6    # "textPlot":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 75
    .end local v5    # "imagePoster":Landroid/widget/ImageView;
    :cond_3
    nop

    .line 99
    .end local v4    # "buttonPlay":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;
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

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;
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

    .line 59
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_movie_detail:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method

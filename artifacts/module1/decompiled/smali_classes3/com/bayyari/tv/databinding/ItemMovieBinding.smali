.class public final Lcom/bayyari/tv/databinding/ItemMovieBinding;
.super Ljava/lang/Object;
.source "ItemMovieBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imagePoster:Landroid/widget/ImageView;

.field public final posterCard:Landroidx/cardview/widget/CardView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textMovieSub:Landroid/widget/TextView;

.field public final textMovieTitle:Landroid/widget/TextView;

.field public final textRating:Landroid/widget/TextView;

.field public final textTag:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "imagePoster"    # Landroid/widget/ImageView;
    .param p3, "posterCard"    # Landroidx/cardview/widget/CardView;
    .param p4, "textMovieSub"    # Landroid/widget/TextView;
    .param p5, "textMovieTitle"    # Landroid/widget/TextView;
    .param p6, "textRating"    # Landroid/widget/TextView;
    .param p7, "textTag"    # Landroid/widget/TextView;
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
            "imagePoster",
            "posterCard",
            "textMovieSub",
            "textMovieTitle",
            "textRating",
            "textTag"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bayyari/tv/databinding/ItemMovieBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    iput-object p2, p0, Lcom/bayyari/tv/databinding/ItemMovieBinding;->imagePoster:Landroid/widget/ImageView;

    .line 47
    iput-object p3, p0, Lcom/bayyari/tv/databinding/ItemMovieBinding;->posterCard:Landroidx/cardview/widget/CardView;

    .line 48
    iput-object p4, p0, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textMovieSub:Landroid/widget/TextView;

    .line 49
    iput-object p5, p0, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textMovieTitle:Landroid/widget/TextView;

    .line 50
    iput-object p6, p0, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textRating:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/bayyari/tv/databinding/ItemMovieBinding;->textTag:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ItemMovieBinding;
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

    .line 81
    sget v0, Lcom/bayyari/tv/R$id;->imagePoster:I

    .line 82
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 83
    .local v4, "imagePoster":Landroid/widget/ImageView;
    if-eqz v4, :cond_5

    .line 87
    sget v0, Lcom/bayyari/tv/R$id;->posterCard:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/cardview/widget/CardView;

    .line 89
    .local v5, "posterCard":Landroidx/cardview/widget/CardView;
    if-eqz v5, :cond_4

    .line 93
    sget v0, Lcom/bayyari/tv/R$id;->textMovieSub:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 95
    .local v6, "textMovieSub":Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 99
    sget v0, Lcom/bayyari/tv/R$id;->textMovieTitle:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 101
    .local v7, "textMovieTitle":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 105
    sget v0, Lcom/bayyari/tv/R$id;->textRating:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 107
    .local v8, "textRating":Landroid/widget/TextView;
    if-eqz v8, :cond_1

    .line 111
    sget v0, Lcom/bayyari/tv/R$id;->textTag:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 113
    .local v9, "textTag":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 117
    new-instance v2, Lcom/bayyari/tv/databinding/ItemMovieBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v9}, Lcom/bayyari/tv/databinding/ItemMovieBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 114
    :cond_0
    goto :goto_0

    .line 108
    .end local v9    # "textTag":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 102
    .end local v8    # "textRating":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 96
    .end local v7    # "textMovieTitle":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 90
    .end local v6    # "textMovieSub":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 84
    .end local v5    # "posterCard":Landroidx/cardview/widget/CardView;
    :cond_5
    nop

    .line 120
    .end local v4    # "imagePoster":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ItemMovieBinding;
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

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/ItemMovieBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ItemMovieBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ItemMovieBinding;
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

    .line 68
    sget v0, Lcom/bayyari/tv/R$layout;->item_movie:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/ItemMovieBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ItemMovieBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/ItemMovieBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/bayyari/tv/databinding/ItemMovieBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

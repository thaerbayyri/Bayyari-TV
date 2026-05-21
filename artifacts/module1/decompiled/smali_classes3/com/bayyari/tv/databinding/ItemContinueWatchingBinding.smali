.class public final Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;
.super Ljava/lang/Object;
.source "ItemContinueWatchingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imagePoster:Landroid/widget/ImageView;

.field public final posterCard:Landroidx/cardview/widget/CardView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textSubtitle:Landroid/widget/TextView;

.field public final textTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "imagePoster"    # Landroid/widget/ImageView;
    .param p3, "posterCard"    # Landroidx/cardview/widget/CardView;
    .param p4, "progressBar"    # Landroid/widget/ProgressBar;
    .param p5, "textSubtitle"    # Landroid/widget/TextView;
    .param p6, "textTitle"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "progressBar",
            "textSubtitle",
            "textTitle"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 45
    iput-object p2, p0, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->imagePoster:Landroid/widget/ImageView;

    .line 46
    iput-object p3, p0, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->posterCard:Landroidx/cardview/widget/CardView;

    .line 47
    iput-object p4, p0, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 48
    iput-object p5, p0, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->textSubtitle:Landroid/widget/TextView;

    .line 49
    iput-object p6, p0, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->textTitle:Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;
    .locals 9
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 79
    sget v0, Lcom/bayyari/tv/R$id;->imagePoster:I

    .line 80
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 81
    .local v4, "imagePoster":Landroid/widget/ImageView;
    if-eqz v4, :cond_4

    .line 85
    sget v0, Lcom/bayyari/tv/R$id;->posterCard:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/cardview/widget/CardView;

    .line 87
    .local v5, "posterCard":Landroidx/cardview/widget/CardView;
    if-eqz v5, :cond_3

    .line 91
    sget v0, Lcom/bayyari/tv/R$id;->progressBar:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ProgressBar;

    .line 93
    .local v6, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v6, :cond_2

    .line 97
    sget v0, Lcom/bayyari/tv/R$id;->textSubtitle:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 99
    .local v7, "textSubtitle":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 103
    sget v0, Lcom/bayyari/tv/R$id;->textTitle:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 105
    .local v8, "textTitle":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 109
    new-instance v2, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v8}, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 106
    :cond_0
    goto :goto_0

    .line 100
    .end local v8    # "textTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 94
    .end local v7    # "textSubtitle":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 88
    .end local v6    # "progressBar":Landroid/widget/ProgressBar;
    :cond_3
    goto :goto_0

    .line 82
    .end local v5    # "posterCard":Landroidx/cardview/widget/CardView;
    :cond_4
    nop

    .line 112
    .end local v4    # "imagePoster":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;
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

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;
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

    .line 66
    sget v0, Lcom/bayyari/tv/R$layout;->item_continue_watching:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bayyari/tv/databinding/ItemContinueWatchingBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

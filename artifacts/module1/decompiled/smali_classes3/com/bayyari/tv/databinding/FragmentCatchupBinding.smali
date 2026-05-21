.class public final Lcom/bayyari/tv/databinding/FragmentCatchupBinding;
.super Ljava/lang/Object;
.source "FragmentCatchupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonPickDate:Lcom/google/android/material/button/MaterialButton;

.field public final catchupSub:Landroid/widget/TextView;

.field public final catchupTitle:Landroid/widget/TextView;

.field public final recyclerCatchUp:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "buttonPickDate"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "catchupSub"    # Landroid/widget/TextView;
    .param p4, "catchupTitle"    # Landroid/widget/TextView;
    .param p5, "recyclerCatchUp"    # Landroidx/recyclerview/widget/RecyclerView;
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
            "buttonPickDate",
            "catchupSub",
            "catchupTitle",
            "recyclerCatchUp"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    iput-object p2, p0, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->buttonPickDate:Lcom/google/android/material/button/MaterialButton;

    .line 41
    iput-object p3, p0, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->catchupSub:Landroid/widget/TextView;

    .line 42
    iput-object p4, p0, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->catchupTitle:Landroid/widget/TextView;

    .line 43
    iput-object p5, p0, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->recyclerCatchUp:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentCatchupBinding;
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

    .line 73
    sget v0, Lcom/bayyari/tv/R$id;->buttonPickDate:I

    .line 74
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 75
    .local v4, "buttonPickDate":Lcom/google/android/material/button/MaterialButton;
    if-eqz v4, :cond_3

    .line 79
    sget v0, Lcom/bayyari/tv/R$id;->catchupSub:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 81
    .local v5, "catchupSub":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 85
    sget v0, Lcom/bayyari/tv/R$id;->catchupTitle:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 87
    .local v6, "catchupTitle":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 91
    sget v0, Lcom/bayyari/tv/R$id;->recyclerCatchUp:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    .local v7, "recyclerCatchUp":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v7, :cond_0

    .line 97
    new-instance v2, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v7}, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v2

    .line 94
    :cond_0
    goto :goto_0

    .line 88
    .end local v7    # "recyclerCatchUp":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    goto :goto_0

    .line 82
    .end local v6    # "catchupTitle":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 76
    .end local v5    # "catchupSub":Landroid/widget/TextView;
    :cond_3
    nop

    .line 100
    .end local v4    # "buttonPickDate":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/FragmentCatchupBinding;
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

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentCatchupBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentCatchupBinding;
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

    .line 60
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_catchup:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentCatchupBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.class public final Lcom/bayyari/tv/databinding/FragmentAddServerBinding;
.super Ljava/lang/Object;
.source "FragmentAddServerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonSave:Lcom/google/android/material/button/MaterialButton;

.field public final editLabel:Lcom/google/android/material/textfield/TextInputEditText;

.field public final editM3u:Lcom/google/android/material/textfield/TextInputEditText;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "buttonSave"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "editLabel"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p4, "editM3u"    # Lcom/google/android/material/textfield/TextInputEditText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "buttonSave",
            "editLabel",
            "editM3u"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->rootView:Landroid/widget/ScrollView;

    .line 35
    iput-object p2, p0, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->buttonSave:Lcom/google/android/material/button/MaterialButton;

    .line 36
    iput-object p3, p0, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->editLabel:Lcom/google/android/material/textfield/TextInputEditText;

    .line 37
    iput-object p4, p0, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->editM3u:Lcom/google/android/material/textfield/TextInputEditText;

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentAddServerBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 67
    sget v0, Lcom/bayyari/tv/R$id;->buttonSave:I

    .line 68
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 69
    .local v1, "buttonSave":Lcom/google/android/material/button/MaterialButton;
    if-eqz v1, :cond_2

    .line 73
    sget v0, Lcom/bayyari/tv/R$id;->editLabel:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 75
    .local v2, "editLabel":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v2, :cond_1

    .line 79
    sget v0, Lcom/bayyari/tv/R$id;->editM3u:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 81
    .local v3, "editM3u":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v3, :cond_0

    .line 85
    new-instance v4, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/ScrollView;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;-><init>(Landroid/widget/ScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    return-object v4

    .line 82
    :cond_0
    goto :goto_0

    .line 76
    .end local v3    # "editM3u":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_1
    goto :goto_0

    .line 70
    .end local v2    # "editLabel":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_2
    nop

    .line 87
    .end local v1    # "buttonSave":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/FragmentAddServerBinding;
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

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentAddServerBinding;
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

    .line 54
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_add_server:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

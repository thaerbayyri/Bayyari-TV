.class public final Lcom/bayyari/tv/databinding/FragmentLoginBinding;
.super Ljava/lang/Object;
.source "FragmentLoginBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonAddM3u:Landroid/widget/TextView;

.field public final buttonLogin:Lcom/google/android/material/button/MaterialButton;

.field public final editPassword:Lcom/google/android/material/textfield/TextInputEditText;

.field public final editServer:Lcom/google/android/material/textfield/TextInputEditText;

.field public final editUsername:Lcom/google/android/material/textfield/TextInputEditText;

.field public final loginCard:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/ScrollView;

.field public final switchRemember:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final textServerInfo:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/LinearLayout;Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "buttonAddM3u"    # Landroid/widget/TextView;
    .param p3, "buttonLogin"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "editPassword"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p5, "editServer"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p6, "editUsername"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p7, "loginCard"    # Landroid/widget/LinearLayout;
    .param p8, "switchRemember"    # Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .param p9, "textServerInfo"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "buttonAddM3u",
            "buttonLogin",
            "editPassword",
            "editServer",
            "editUsername",
            "loginCard",
            "switchRemember",
            "textServerInfo"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->rootView:Landroid/widget/ScrollView;

    .line 56
    iput-object p2, p0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->buttonAddM3u:Landroid/widget/TextView;

    .line 57
    iput-object p3, p0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->buttonLogin:Lcom/google/android/material/button/MaterialButton;

    .line 58
    iput-object p4, p0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->editPassword:Lcom/google/android/material/textfield/TextInputEditText;

    .line 59
    iput-object p5, p0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->editServer:Lcom/google/android/material/textfield/TextInputEditText;

    .line 60
    iput-object p6, p0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->editUsername:Lcom/google/android/material/textfield/TextInputEditText;

    .line 61
    iput-object p7, p0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->loginCard:Landroid/widget/LinearLayout;

    .line 62
    iput-object p8, p0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->switchRemember:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 63
    iput-object p9, p0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->textServerInfo:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentLoginBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 93
    sget v0, Lcom/bayyari/tv/R$id;->buttonAddM3u:I

    .line 94
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, "buttonAddM3u":Landroid/widget/TextView;
    if-eqz v4, :cond_7

    .line 99
    sget v0, Lcom/bayyari/tv/R$id;->buttonLogin:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 101
    .local v5, "buttonLogin":Lcom/google/android/material/button/MaterialButton;
    if-eqz v5, :cond_6

    .line 105
    sget v0, Lcom/bayyari/tv/R$id;->editPassword:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 107
    .local v6, "editPassword":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v6, :cond_5

    .line 111
    sget v0, Lcom/bayyari/tv/R$id;->editServer:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/textfield/TextInputEditText;

    .line 113
    .local v7, "editServer":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v7, :cond_4

    .line 117
    sget v0, Lcom/bayyari/tv/R$id;->editUsername:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    .line 119
    .local v8, "editUsername":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v8, :cond_3

    .line 123
    sget v0, Lcom/bayyari/tv/R$id;->loginCard:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    .line 125
    .local v9, "loginCard":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_2

    .line 129
    sget v0, Lcom/bayyari/tv/R$id;->switchRemember:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 131
    .local v10, "switchRemember":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    if-eqz v10, :cond_1

    .line 135
    sget v0, Lcom/bayyari/tv/R$id;->textServerInfo:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    .line 137
    .local v11, "textServerInfo":Landroid/widget/TextView;
    if-eqz v11, :cond_0

    .line 141
    new-instance v2, Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    invoke-direct/range {v2 .. v11}, Lcom/bayyari/tv/databinding/FragmentLoginBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/LinearLayout;Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/TextView;)V

    return-object v2

    .line 138
    :cond_0
    goto :goto_0

    .line 132
    .end local v11    # "textServerInfo":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 126
    .end local v10    # "switchRemember":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    :cond_2
    goto :goto_0

    .line 120
    .end local v9    # "loginCard":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 114
    .end local v8    # "editUsername":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_4
    goto :goto_0

    .line 108
    .end local v7    # "editServer":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_5
    goto :goto_0

    .line 102
    .end local v6    # "editPassword":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_6
    goto :goto_0

    .line 96
    .end local v5    # "buttonLogin":Lcom/google/android/material/button/MaterialButton;
    :cond_7
    nop

    .line 144
    .end local v4    # "buttonAddM3u":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/FragmentLoginBinding;
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

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentLoginBinding;
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

    .line 80
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

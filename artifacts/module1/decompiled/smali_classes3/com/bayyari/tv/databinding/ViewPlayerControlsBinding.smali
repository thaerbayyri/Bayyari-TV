.class public final Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;
.super Ljava/lang/Object;
.source "ViewPlayerControlsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonAspect:Lcom/google/android/material/button/MaterialButton;

.field public final buttonAudio:Lcom/google/android/material/button/MaterialButton;

.field public final buttonEpg:Lcom/google/android/material/button/MaterialButton;

.field public final buttonExternal:Lcom/google/android/material/button/MaterialButton;

.field public final buttonLock:Lcom/google/android/material/button/MaterialButton;

.field public final buttonNext:Lcom/google/android/material/button/MaterialButton;

.field public final buttonPip:Lcom/google/android/material/button/MaterialButton;

.field public final buttonPlayPause:Lcom/google/android/material/button/MaterialButton;

.field public final buttonPrev:Lcom/google/android/material/button/MaterialButton;

.field public final buttonSubtitles:Lcom/google/android/material/button/MaterialButton;

.field public final controlsRow:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textSubtitle:Landroid/widget/TextView;

.field public final textTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "buttonAspect"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "buttonAudio"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "buttonEpg"    # Lcom/google/android/material/button/MaterialButton;
    .param p5, "buttonExternal"    # Lcom/google/android/material/button/MaterialButton;
    .param p6, "buttonLock"    # Lcom/google/android/material/button/MaterialButton;
    .param p7, "buttonNext"    # Lcom/google/android/material/button/MaterialButton;
    .param p8, "buttonPip"    # Lcom/google/android/material/button/MaterialButton;
    .param p9, "buttonPlayPause"    # Lcom/google/android/material/button/MaterialButton;
    .param p10, "buttonPrev"    # Lcom/google/android/material/button/MaterialButton;
    .param p11, "buttonSubtitles"    # Lcom/google/android/material/button/MaterialButton;
    .param p12, "controlsRow"    # Landroid/widget/LinearLayout;
    .param p13, "textSubtitle"    # Landroid/widget/TextView;
    .param p14, "textTitle"    # Landroid/widget/TextView;
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "buttonAspect",
            "buttonAudio",
            "buttonEpg",
            "buttonExternal",
            "buttonLock",
            "buttonNext",
            "buttonPip",
            "buttonPlayPause",
            "buttonPrev",
            "buttonSubtitles",
            "controlsRow",
            "textSubtitle",
            "textTitle"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    iput-object p2, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->buttonAspect:Lcom/google/android/material/button/MaterialButton;

    .line 73
    iput-object p3, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->buttonAudio:Lcom/google/android/material/button/MaterialButton;

    .line 74
    iput-object p4, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->buttonEpg:Lcom/google/android/material/button/MaterialButton;

    .line 75
    iput-object p5, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->buttonExternal:Lcom/google/android/material/button/MaterialButton;

    .line 76
    iput-object p6, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->buttonLock:Lcom/google/android/material/button/MaterialButton;

    .line 77
    iput-object p7, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->buttonNext:Lcom/google/android/material/button/MaterialButton;

    .line 78
    iput-object p8, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->buttonPip:Lcom/google/android/material/button/MaterialButton;

    .line 79
    iput-object p9, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->buttonPlayPause:Lcom/google/android/material/button/MaterialButton;

    .line 80
    iput-object p10, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->buttonPrev:Lcom/google/android/material/button/MaterialButton;

    .line 81
    iput-object p11, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->buttonSubtitles:Lcom/google/android/material/button/MaterialButton;

    .line 82
    iput-object p12, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->controlsRow:Landroid/widget/LinearLayout;

    .line 83
    iput-object p13, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->textSubtitle:Landroid/widget/TextView;

    .line 84
    iput-object p14, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->textTitle:Landroid/widget/TextView;

    .line 85
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;
    .locals 18
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 114
    move-object/from16 v0, p0

    sget v1, Lcom/bayyari/tv/R$id;->buttonAspect:I

    .line 115
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 116
    .local v5, "buttonAspect":Lcom/google/android/material/button/MaterialButton;
    if-eqz v5, :cond_c

    .line 120
    sget v1, Lcom/bayyari/tv/R$id;->buttonAudio:I

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 122
    .local v6, "buttonAudio":Lcom/google/android/material/button/MaterialButton;
    if-eqz v6, :cond_b

    .line 126
    sget v1, Lcom/bayyari/tv/R$id;->buttonEpg:I

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 128
    .local v7, "buttonEpg":Lcom/google/android/material/button/MaterialButton;
    if-eqz v7, :cond_a

    .line 132
    sget v1, Lcom/bayyari/tv/R$id;->buttonExternal:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 134
    .local v8, "buttonExternal":Lcom/google/android/material/button/MaterialButton;
    if-eqz v8, :cond_9

    .line 138
    sget v1, Lcom/bayyari/tv/R$id;->buttonLock:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 140
    .local v9, "buttonLock":Lcom/google/android/material/button/MaterialButton;
    if-eqz v9, :cond_8

    .line 144
    sget v1, Lcom/bayyari/tv/R$id;->buttonNext:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 146
    .local v10, "buttonNext":Lcom/google/android/material/button/MaterialButton;
    if-eqz v10, :cond_7

    .line 150
    sget v1, Lcom/bayyari/tv/R$id;->buttonPip:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 152
    .local v11, "buttonPip":Lcom/google/android/material/button/MaterialButton;
    if-eqz v11, :cond_6

    .line 156
    sget v1, Lcom/bayyari/tv/R$id;->buttonPlayPause:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    .line 158
    .local v12, "buttonPlayPause":Lcom/google/android/material/button/MaterialButton;
    if-eqz v12, :cond_5

    .line 162
    sget v1, Lcom/bayyari/tv/R$id;->buttonPrev:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 164
    .local v13, "buttonPrev":Lcom/google/android/material/button/MaterialButton;
    if-eqz v13, :cond_4

    .line 168
    sget v1, Lcom/bayyari/tv/R$id;->buttonSubtitles:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 170
    .local v14, "buttonSubtitles":Lcom/google/android/material/button/MaterialButton;
    if-eqz v14, :cond_3

    .line 174
    sget v1, Lcom/bayyari/tv/R$id;->controlsRow:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    .line 176
    .local v15, "controlsRow":Landroid/widget/LinearLayout;
    if-eqz v15, :cond_2

    .line 180
    sget v1, Lcom/bayyari/tv/R$id;->textSubtitle:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 182
    .local v16, "textSubtitle":Landroid/widget/TextView;
    if-eqz v16, :cond_1

    .line 186
    sget v1, Lcom/bayyari/tv/R$id;->textTitle:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    .line 188
    .local v17, "textTitle":Landroid/widget/TextView;
    if-eqz v17, :cond_0

    .line 192
    new-instance v3, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v17}, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 189
    :cond_0
    goto :goto_0

    .line 183
    .end local v17    # "textTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 177
    .end local v16    # "textSubtitle":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 171
    .end local v15    # "controlsRow":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 165
    .end local v14    # "buttonSubtitles":Lcom/google/android/material/button/MaterialButton;
    :cond_4
    goto :goto_0

    .line 159
    .end local v13    # "buttonPrev":Lcom/google/android/material/button/MaterialButton;
    :cond_5
    goto :goto_0

    .line 153
    .end local v12    # "buttonPlayPause":Lcom/google/android/material/button/MaterialButton;
    :cond_6
    goto :goto_0

    .line 147
    .end local v11    # "buttonPip":Lcom/google/android/material/button/MaterialButton;
    :cond_7
    goto :goto_0

    .line 141
    .end local v10    # "buttonNext":Lcom/google/android/material/button/MaterialButton;
    :cond_8
    goto :goto_0

    .line 135
    .end local v9    # "buttonLock":Lcom/google/android/material/button/MaterialButton;
    :cond_9
    goto :goto_0

    .line 129
    .end local v8    # "buttonExternal":Lcom/google/android/material/button/MaterialButton;
    :cond_a
    goto :goto_0

    .line 123
    .end local v7    # "buttonEpg":Lcom/google/android/material/button/MaterialButton;
    :cond_b
    goto :goto_0

    .line 117
    .end local v6    # "buttonAudio":Lcom/google/android/material/button/MaterialButton;
    :cond_c
    nop

    .line 196
    .end local v5    # "buttonAspect":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;
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

    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;
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

    .line 101
    sget v0, Lcom/bayyari/tv/R$layout;->view_player_controls:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

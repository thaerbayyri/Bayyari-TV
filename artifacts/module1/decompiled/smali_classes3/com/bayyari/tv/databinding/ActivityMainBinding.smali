.class public final Lcom/bayyari/tv/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatar:Landroid/widget/TextView;

.field public final chipCatchup:Landroid/widget/TextView;

.field public final chipHome:Landroid/widget/TextView;

.field public final chipLive:Landroid/widget/TextView;

.field public final chipMovies:Landroid/widget/TextView;

.field public final chipSeries:Landroid/widget/TextView;

.field public final chipSettings:Landroid/widget/TextView;

.field public final iconBell:Landroid/widget/ImageView;

.field public final iconSearch:Landroid/widget/ImageView;

.field public final logoGroup:Landroid/widget/LinearLayout;

.field public final navChipsRow:Landroid/widget/LinearLayout;

.field public final navHostFragment:Landroid/widget/FrameLayout;

.field public final navScroll:Landroid/widget/HorizontalScrollView;

.field public final rightCluster:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final topBar:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final topBarHolder:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 16
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "avatar"    # Landroid/widget/TextView;
    .param p3, "chipCatchup"    # Landroid/widget/TextView;
    .param p4, "chipHome"    # Landroid/widget/TextView;
    .param p5, "chipLive"    # Landroid/widget/TextView;
    .param p6, "chipMovies"    # Landroid/widget/TextView;
    .param p7, "chipSeries"    # Landroid/widget/TextView;
    .param p8, "chipSettings"    # Landroid/widget/TextView;
    .param p9, "iconBell"    # Landroid/widget/ImageView;
    .param p10, "iconSearch"    # Landroid/widget/ImageView;
    .param p11, "logoGroup"    # Landroid/widget/LinearLayout;
    .param p12, "navChipsRow"    # Landroid/widget/LinearLayout;
    .param p13, "navHostFragment"    # Landroid/widget/FrameLayout;
    .param p14, "navScroll"    # Landroid/widget/HorizontalScrollView;
    .param p15, "rightCluster"    # Landroid/widget/LinearLayout;
    .param p16, "topBar"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p17, "topBarHolder"    # Lcom/google/android/material/appbar/AppBarLayout;
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "avatar",
            "chipCatchup",
            "chipHome",
            "chipLive",
            "chipMovies",
            "chipSeries",
            "chipSettings",
            "iconBell",
            "iconSearch",
            "logoGroup",
            "navChipsRow",
            "navHostFragment",
            "navScroll",
            "rightCluster",
            "topBar",
            "topBarHolder"
        }
    .end annotation

    .line 81
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 83
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->avatar:Landroid/widget/TextView;

    .line 84
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->chipCatchup:Landroid/widget/TextView;

    .line 85
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->chipHome:Landroid/widget/TextView;

    .line 86
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->chipLive:Landroid/widget/TextView;

    .line 87
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->chipMovies:Landroid/widget/TextView;

    .line 88
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->chipSeries:Landroid/widget/TextView;

    .line 89
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->chipSettings:Landroid/widget/TextView;

    .line 90
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->iconBell:Landroid/widget/ImageView;

    .line 91
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->iconSearch:Landroid/widget/ImageView;

    .line 92
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->logoGroup:Landroid/widget/LinearLayout;

    .line 93
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->navChipsRow:Landroid/widget/LinearLayout;

    .line 94
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->navHostFragment:Landroid/widget/FrameLayout;

    .line 95
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->navScroll:Landroid/widget/HorizontalScrollView;

    .line 96
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->rightCluster:Landroid/widget/LinearLayout;

    .line 97
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->topBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 98
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->topBarHolder:Lcom/google/android/material/appbar/AppBarLayout;

    .line 99
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ActivityMainBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 128
    move-object/from16 v0, p0

    sget v1, Lcom/bayyari/tv/R$id;->avatar:I

    .line 129
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    .line 130
    .local v5, "avatar":Landroid/widget/TextView;
    if-eqz v5, :cond_f

    .line 134
    sget v1, Lcom/bayyari/tv/R$id;->chipCatchup:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    .line 136
    .local v6, "chipCatchup":Landroid/widget/TextView;
    if-eqz v6, :cond_e

    .line 140
    sget v1, Lcom/bayyari/tv/R$id;->chipHome:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    .line 142
    .local v7, "chipHome":Landroid/widget/TextView;
    if-eqz v7, :cond_d

    .line 146
    sget v1, Lcom/bayyari/tv/R$id;->chipLive:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 148
    .local v8, "chipLive":Landroid/widget/TextView;
    if-eqz v8, :cond_c

    .line 152
    sget v1, Lcom/bayyari/tv/R$id;->chipMovies:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 154
    .local v9, "chipMovies":Landroid/widget/TextView;
    if-eqz v9, :cond_b

    .line 158
    sget v1, Lcom/bayyari/tv/R$id;->chipSeries:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 160
    .local v10, "chipSeries":Landroid/widget/TextView;
    if-eqz v10, :cond_a

    .line 164
    sget v1, Lcom/bayyari/tv/R$id;->chipSettings:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 166
    .local v11, "chipSettings":Landroid/widget/TextView;
    if-eqz v11, :cond_9

    .line 170
    sget v1, Lcom/bayyari/tv/R$id;->iconBell:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    .line 172
    .local v12, "iconBell":Landroid/widget/ImageView;
    if-eqz v12, :cond_8

    .line 176
    sget v1, Lcom/bayyari/tv/R$id;->iconSearch:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    .line 178
    .local v13, "iconSearch":Landroid/widget/ImageView;
    if-eqz v13, :cond_7

    .line 182
    sget v1, Lcom/bayyari/tv/R$id;->logoGroup:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    .line 184
    .local v14, "logoGroup":Landroid/widget/LinearLayout;
    if-eqz v14, :cond_6

    .line 188
    sget v1, Lcom/bayyari/tv/R$id;->navChipsRow:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    .line 190
    .local v15, "navChipsRow":Landroid/widget/LinearLayout;
    if-eqz v15, :cond_5

    .line 194
    sget v1, Lcom/bayyari/tv/R$id;->nav_host_fragment:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/FrameLayout;

    .line 196
    .local v16, "navHostFragment":Landroid/widget/FrameLayout;
    if-eqz v16, :cond_4

    .line 200
    sget v1, Lcom/bayyari/tv/R$id;->navScroll:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/HorizontalScrollView;

    .line 202
    .local v17, "navScroll":Landroid/widget/HorizontalScrollView;
    if-eqz v17, :cond_3

    .line 206
    sget v1, Lcom/bayyari/tv/R$id;->rightCluster:I

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/LinearLayout;

    .line 208
    .local v18, "rightCluster":Landroid/widget/LinearLayout;
    if-eqz v18, :cond_2

    .line 212
    sget v1, Lcom/bayyari/tv/R$id;->topBar:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 214
    .local v19, "topBar":Landroidx/constraintlayout/widget/ConstraintLayout;
    if-eqz v19, :cond_1

    .line 218
    sget v1, Lcom/bayyari/tv/R$id;->topBarHolder:I

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/google/android/material/appbar/AppBarLayout;

    .line 220
    .local v20, "topBarHolder":Lcom/google/android/material/appbar/AppBarLayout;
    if-eqz v20, :cond_0

    .line 224
    new-instance v3, Lcom/bayyari/tv/databinding/ActivityMainBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v20}, Lcom/bayyari/tv/databinding/ActivityMainBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    return-object v3

    .line 221
    :cond_0
    goto :goto_0

    .line 215
    .end local v20    # "topBarHolder":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_1
    goto :goto_0

    .line 209
    .end local v19    # "topBar":Landroidx/constraintlayout/widget/ConstraintLayout;
    :cond_2
    goto :goto_0

    .line 203
    .end local v18    # "rightCluster":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 197
    .end local v17    # "navScroll":Landroid/widget/HorizontalScrollView;
    :cond_4
    goto :goto_0

    .line 191
    .end local v16    # "navHostFragment":Landroid/widget/FrameLayout;
    :cond_5
    goto :goto_0

    .line 185
    .end local v15    # "navChipsRow":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 179
    .end local v14    # "logoGroup":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 173
    .end local v13    # "iconSearch":Landroid/widget/ImageView;
    :cond_8
    goto :goto_0

    .line 167
    .end local v12    # "iconBell":Landroid/widget/ImageView;
    :cond_9
    goto :goto_0

    .line 161
    .end local v11    # "chipSettings":Landroid/widget/TextView;
    :cond_a
    goto :goto_0

    .line 155
    .end local v10    # "chipSeries":Landroid/widget/TextView;
    :cond_b
    goto :goto_0

    .line 149
    .end local v9    # "chipMovies":Landroid/widget/TextView;
    :cond_c
    goto :goto_0

    .line 143
    .end local v8    # "chipLive":Landroid/widget/TextView;
    :cond_d
    goto :goto_0

    .line 137
    .end local v7    # "chipHome":Landroid/widget/TextView;
    :cond_e
    goto :goto_0

    .line 131
    .end local v6    # "chipCatchup":Landroid/widget/TextView;
    :cond_f
    nop

    .line 228
    .end local v5    # "avatar":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ActivityMainBinding;
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

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ActivityMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ActivityMainBinding;
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

    .line 115
    sget v0, Lcom/bayyari/tv/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ActivityMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/bayyari/tv/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

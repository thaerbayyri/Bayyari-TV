.class public final Lcom/bayyari/tv/databinding/FragmentHomeBinding;
.super Ljava/lang/Object;
.source "FragmentHomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonHeroAdd:Lcom/google/android/material/button/MaterialButton;

.field public final buttonHeroPlay:Lcom/google/android/material/button/MaterialButton;

.field public final hero:Landroid/widget/FrameLayout;

.field public final heroBackdrop:Landroid/widget/ImageView;

.field public final heroMeta:Landroid/widget/TextView;

.field public final heroRating:Landroid/widget/TextView;

.field public final heroTitle:Landroid/widget/TextView;

.field public final recyclerContinue:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyclerLive:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyclerMovies:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyclerSeries:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final seeAllContinue:Landroid/widget/TextView;

.field public final seeAllLive:Landroid/widget/TextView;

.field public final seeAllMovies:Landroid/widget/TextView;

.field public final seeAllSeries:Landroid/widget/TextView;

.field public final statChannels:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

.field public final statMovies:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

.field public final statQuality:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

.field public final statSeries:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/bayyari/tv/databinding/IncludeStatCellBinding;Lcom/bayyari/tv/databinding/IncludeStatCellBinding;Lcom/bayyari/tv/databinding/IncludeStatCellBinding;Lcom/bayyari/tv/databinding/IncludeStatCellBinding;)V
    .locals 16
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "buttonHeroAdd"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "buttonHeroPlay"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "hero"    # Landroid/widget/FrameLayout;
    .param p5, "heroBackdrop"    # Landroid/widget/ImageView;
    .param p6, "heroMeta"    # Landroid/widget/TextView;
    .param p7, "heroRating"    # Landroid/widget/TextView;
    .param p8, "heroTitle"    # Landroid/widget/TextView;
    .param p9, "recyclerContinue"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p10, "recyclerLive"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p11, "recyclerMovies"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p12, "recyclerSeries"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p13, "seeAllContinue"    # Landroid/widget/TextView;
    .param p14, "seeAllLive"    # Landroid/widget/TextView;
    .param p15, "seeAllMovies"    # Landroid/widget/TextView;
    .param p16, "seeAllSeries"    # Landroid/widget/TextView;
    .param p17, "statChannels"    # Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    .param p18, "statMovies"    # Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    .param p19, "statQuality"    # Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    .param p20, "statSeries"    # Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "buttonHeroAdd",
            "buttonHeroPlay",
            "hero",
            "heroBackdrop",
            "heroMeta",
            "heroRating",
            "heroTitle",
            "recyclerContinue",
            "recyclerLive",
            "recyclerMovies",
            "recyclerSeries",
            "seeAllContinue",
            "seeAllLive",
            "seeAllMovies",
            "seeAllSeries",
            "statChannels",
            "statMovies",
            "statQuality",
            "statSeries"
        }
    .end annotation

    .line 92
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 94
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->buttonHeroAdd:Lcom/google/android/material/button/MaterialButton;

    .line 95
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->buttonHeroPlay:Lcom/google/android/material/button/MaterialButton;

    .line 96
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->hero:Landroid/widget/FrameLayout;

    .line 97
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroBackdrop:Landroid/widget/ImageView;

    .line 98
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroMeta:Landroid/widget/TextView;

    .line 99
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroRating:Landroid/widget/TextView;

    .line 100
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroTitle:Landroid/widget/TextView;

    .line 101
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerContinue:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerLive:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerMovies:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerSeries:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->seeAllContinue:Landroid/widget/TextView;

    .line 106
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->seeAllLive:Landroid/widget/TextView;

    .line 107
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->seeAllMovies:Landroid/widget/TextView;

    .line 108
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->seeAllSeries:Landroid/widget/TextView;

    .line 109
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->statChannels:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    .line 110
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->statMovies:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    .line 111
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->statQuality:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    .line 112
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->statSeries:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    .line 113
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentHomeBinding;
    .locals 27
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 142
    move-object/from16 v0, p0

    sget v1, Lcom/bayyari/tv/R$id;->buttonHeroAdd:I

    .line 143
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 144
    .local v5, "buttonHeroAdd":Lcom/google/android/material/button/MaterialButton;
    if-eqz v5, :cond_12

    .line 148
    sget v1, Lcom/bayyari/tv/R$id;->buttonHeroPlay:I

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 150
    .local v6, "buttonHeroPlay":Lcom/google/android/material/button/MaterialButton;
    if-eqz v6, :cond_11

    .line 154
    sget v1, Lcom/bayyari/tv/R$id;->hero:I

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    .line 156
    .local v7, "hero":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_10

    .line 160
    sget v1, Lcom/bayyari/tv/R$id;->heroBackdrop:I

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    .line 162
    .local v8, "heroBackdrop":Landroid/widget/ImageView;
    if-eqz v8, :cond_f

    .line 166
    sget v1, Lcom/bayyari/tv/R$id;->heroMeta:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 168
    .local v9, "heroMeta":Landroid/widget/TextView;
    if-eqz v9, :cond_e

    .line 172
    sget v1, Lcom/bayyari/tv/R$id;->heroRating:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 174
    .local v10, "heroRating":Landroid/widget/TextView;
    if-eqz v10, :cond_d

    .line 178
    sget v1, Lcom/bayyari/tv/R$id;->heroTitle:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 180
    .local v11, "heroTitle":Landroid/widget/TextView;
    if-eqz v11, :cond_c

    .line 184
    sget v1, Lcom/bayyari/tv/R$id;->recyclerContinue:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    .local v12, "recyclerContinue":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v12, :cond_b

    .line 190
    sget v1, Lcom/bayyari/tv/R$id;->recyclerLive:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    .local v13, "recyclerLive":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v13, :cond_a

    .line 196
    sget v1, Lcom/bayyari/tv/R$id;->recyclerMovies:I

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    .local v14, "recyclerMovies":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v14, :cond_9

    .line 202
    sget v1, Lcom/bayyari/tv/R$id;->recyclerSeries:I

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    .line 204
    .local v15, "recyclerSeries":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v15, :cond_8

    .line 208
    sget v1, Lcom/bayyari/tv/R$id;->seeAllContinue:I

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 210
    .local v16, "seeAllContinue":Landroid/widget/TextView;
    if-eqz v16, :cond_7

    .line 214
    sget v1, Lcom/bayyari/tv/R$id;->seeAllLive:I

    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    .line 216
    .local v17, "seeAllLive":Landroid/widget/TextView;
    if-eqz v17, :cond_6

    .line 220
    sget v1, Lcom/bayyari/tv/R$id;->seeAllMovies:I

    .line 221
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    .line 222
    .local v18, "seeAllMovies":Landroid/widget/TextView;
    if-eqz v18, :cond_5

    .line 226
    sget v1, Lcom/bayyari/tv/R$id;->seeAllSeries:I

    .line 227
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    .line 228
    .local v19, "seeAllSeries":Landroid/widget/TextView;
    if-eqz v19, :cond_4

    .line 232
    sget v1, Lcom/bayyari/tv/R$id;->statChannels:I

    .line 233
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 234
    .local v2, "statChannels":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 237
    invoke-static {v2}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    move-result-object v20

    .line 239
    .local v20, "binding_statChannels":Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    sget v1, Lcom/bayyari/tv/R$id;->statMovies:I

    .line 240
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v24

    .line 241
    .local v24, "statMovies":Landroid/view/View;
    if-eqz v24, :cond_2

    .line 244
    invoke-static/range {v24 .. v24}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    move-result-object v21

    .line 246
    .local v21, "binding_statMovies":Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    sget v1, Lcom/bayyari/tv/R$id;->statQuality:I

    .line 247
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v25

    .line 248
    .local v25, "statQuality":Landroid/view/View;
    if-eqz v25, :cond_1

    .line 251
    invoke-static/range {v25 .. v25}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    move-result-object v22

    .line 253
    .local v22, "binding_statQuality":Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    sget v1, Lcom/bayyari/tv/R$id;->statSeries:I

    .line 254
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v26

    .line 255
    .local v26, "statSeries":Landroid/view/View;
    if-eqz v26, :cond_0

    .line 258
    invoke-static/range {v26 .. v26}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    move-result-object v23

    .line 260
    .local v23, "binding_statSeries":Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    new-instance v3, Lcom/bayyari/tv/databinding/FragmentHomeBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v23}, Lcom/bayyari/tv/databinding/FragmentHomeBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/bayyari/tv/databinding/IncludeStatCellBinding;Lcom/bayyari/tv/databinding/IncludeStatCellBinding;Lcom/bayyari/tv/databinding/IncludeStatCellBinding;Lcom/bayyari/tv/databinding/IncludeStatCellBinding;)V

    return-object v3

    .line 256
    .end local v23    # "binding_statSeries":Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    :cond_0
    goto :goto_0

    .line 249
    .end local v22    # "binding_statQuality":Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    .end local v26    # "statSeries":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 242
    .end local v21    # "binding_statMovies":Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    .end local v25    # "statQuality":Landroid/view/View;
    :cond_2
    goto :goto_0

    .line 235
    .end local v20    # "binding_statChannels":Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    .end local v24    # "statMovies":Landroid/view/View;
    :cond_3
    goto :goto_0

    .line 229
    .end local v2    # "statChannels":Landroid/view/View;
    :cond_4
    goto :goto_0

    .line 223
    .end local v19    # "seeAllSeries":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 217
    .end local v18    # "seeAllMovies":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 211
    .end local v17    # "seeAllLive":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 205
    .end local v16    # "seeAllContinue":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 199
    .end local v15    # "recyclerSeries":Landroidx/recyclerview/widget/RecyclerView;
    :cond_9
    goto :goto_0

    .line 193
    .end local v14    # "recyclerMovies":Landroidx/recyclerview/widget/RecyclerView;
    :cond_a
    goto :goto_0

    .line 187
    .end local v13    # "recyclerLive":Landroidx/recyclerview/widget/RecyclerView;
    :cond_b
    goto :goto_0

    .line 181
    .end local v12    # "recyclerContinue":Landroidx/recyclerview/widget/RecyclerView;
    :cond_c
    goto :goto_0

    .line 175
    .end local v11    # "heroTitle":Landroid/widget/TextView;
    :cond_d
    goto :goto_0

    .line 169
    .end local v10    # "heroRating":Landroid/widget/TextView;
    :cond_e
    goto :goto_0

    .line 163
    .end local v9    # "heroMeta":Landroid/widget/TextView;
    :cond_f
    goto :goto_0

    .line 157
    .end local v8    # "heroBackdrop":Landroid/widget/ImageView;
    :cond_10
    goto :goto_0

    .line 151
    .end local v7    # "hero":Landroid/widget/FrameLayout;
    :cond_11
    goto :goto_0

    .line 145
    .end local v6    # "buttonHeroPlay":Lcom/google/android/material/button/MaterialButton;
    :cond_12
    nop

    .line 265
    .end local v5    # "buttonHeroAdd":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/FragmentHomeBinding;
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

    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentHomeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentHomeBinding;
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

    .line 129
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_home:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentHomeBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method

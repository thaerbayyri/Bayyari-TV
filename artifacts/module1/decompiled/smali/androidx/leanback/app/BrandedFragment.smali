.class public Landroidx/leanback/app/BrandedFragment;
.super Landroid/app/Fragment;
.source "BrandedFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TITLE_SHOW:Ljava/lang/String; = "titleShow"


# instance fields
.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

.field private mSearchAffordanceColorSet:Z

.field private mSearchAffordanceColors:Landroidx/leanback/widget/SearchOrbView$Colors;

.field private mShowingTitle:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleHelper:Landroidx/leanback/widget/TitleHelper;

.field private mTitleView:Landroid/view/View;

.field private mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/leanback/app/BrandedFragment;->mShowingTitle:Z

    return-void
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 226
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSearchAffordanceColor()I
    .locals 1

    .line 312
    invoke-virtual {p0}, Landroidx/leanback/app/BrandedFragment;->getSearchAffordanceColors()Landroidx/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    iget v0, v0, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    return v0
.end method

.method public getSearchAffordanceColors()Landroidx/leanback/widget/SearchOrbView$Colors;
    .locals 2

    .line 289
    iget-boolean v0, p0, Landroidx/leanback/app/BrandedFragment;->mSearchAffordanceColorSet:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mSearchAffordanceColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/TitleViewAdapter;->getSearchAffordanceColors()Landroidx/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    return-object v0

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment views not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getTitleHelper()Landroidx/leanback/widget/TitleHelper;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public getTitleViewAdapter()Landroidx/leanback/widget/TitleViewAdapter;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    return-object v0
.end method

.method public installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/app/BrandedFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "titleLayoutRoot":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    sget v1, Landroidx/leanback/R$id;->browse_title_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/leanback/app/BrandedFragment;->setTitleView(Landroid/view/View;)V

    goto :goto_0

    .line 96
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/leanback/app/BrandedFragment;->setTitleView(Landroid/view/View;)V

    .line 98
    :goto_0
    return-void
.end method

.method public final isShowingTitle()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Landroidx/leanback/app/BrandedFragment;->mShowingTitle:Z

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    .line 172
    iput-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    .line 173
    iput-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    .line 174
    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 74
    .local v0, "typedValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroidx/leanback/R$attr;->browseTitleViewLayout:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 76
    .local v4, "found":Z
    :goto_0
    if-eqz v4, :cond_1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1

    :cond_1
    sget v2, Landroidx/leanback/R$layout;->lb_browse_title:I

    :goto_1
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onPause()V
    .locals 2

    .line 326
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    .line 329
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 330
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 334
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 335
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    .line 338
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 152
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    const-string/jumbo v0, "titleShow"

    iget-boolean v1, p0, Landroidx/leanback/app/BrandedFragment;->mShowingTitle:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 317
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 318
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 319
    iget-boolean v0, p0, Landroidx/leanback/app/BrandedFragment;->mShowingTitle:Z

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedFragment;->showTitle(Z)V

    .line 320
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    .line 322
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 158
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    if-eqz p2, :cond_0

    .line 160
    const-string/jumbo v0, "titleShow"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/leanback/app/BrandedFragment;->mShowingTitle:Z

    .line 162
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Landroidx/leanback/widget/TitleHelper;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    .line 164
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    iget-boolean v1, p0, Landroidx/leanback/app/BrandedFragment;->mShowingTitle:Z

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleHelper;->showTitle(Z)V

    .line 166
    :cond_1
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 213
    iput-object p1, p0, Landroidx/leanback/app/BrandedFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 214
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :cond_0
    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 263
    iput-object p1, p0, Landroidx/leanback/app/BrandedFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    .line 264
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleViewAdapter;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 267
    :cond_0
    return-void
.end method

.method public setSearchAffordanceColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 305
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedFragment;->setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 306
    return-void
.end method

.method public setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 2
    .param p1, "colors"    # Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 276
    iput-object p1, p0, Landroidx/leanback/app/BrandedFragment;->mSearchAffordanceColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/leanback/app/BrandedFragment;->mSearchAffordanceColorSet:Z

    .line 278
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroidx/leanback/app/BrandedFragment;->mSearchAffordanceColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 281
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 235
    iput-object p1, p0, Landroidx/leanback/app/BrandedFragment;->mTitle:Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 3
    .param p1, "titleView"    # Landroid/view/View;

    .line 105
    iput-object p1, p0, Landroidx/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    .line 108
    iput-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    check-cast v0, Landroidx/leanback/widget/TitleViewAdapter$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/TitleViewAdapter$Provider;->getTitleViewAdapter()Landroidx/leanback/widget/TitleViewAdapter;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    .line 111
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroidx/leanback/app/BrandedFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroidx/leanback/app/BrandedFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-boolean v0, p0, Landroidx/leanback/app/BrandedFragment;->mSearchAffordanceColorSet:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroidx/leanback/app/BrandedFragment;->mSearchAffordanceColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 116
    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedFragment;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/app/BrandedFragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 120
    new-instance v0, Landroidx/leanback/widget/TitleHelper;

    invoke-virtual {p0}, Landroidx/leanback/app/BrandedFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    .line 123
    :cond_3
    :goto_0
    return-void
.end method

.method public showTitle(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 200
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleViewAdapter;->updateComponentsVisibility(I)V

    .line 203
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedFragment;->showTitle(Z)V

    .line 204
    return-void
.end method

.method public showTitle(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 182
    iget-boolean v0, p0, Landroidx/leanback/app/BrandedFragment;->mShowingTitle:Z

    if-ne p1, v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    iput-boolean p1, p0, Landroidx/leanback/app/BrandedFragment;->mShowingTitle:Z

    .line 186
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Landroidx/leanback/app/BrandedFragment;->mTitleHelper:Landroidx/leanback/widget/TitleHelper;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/TitleHelper;->showTitle(Z)V

    .line 189
    :cond_1
    return-void
.end method

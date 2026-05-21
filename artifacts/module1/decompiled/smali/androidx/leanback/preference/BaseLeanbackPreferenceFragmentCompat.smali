.class public abstract Landroidx/leanback/preference/BaseLeanbackPreferenceFragmentCompat;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "BaseLeanbackPreferenceFragmentCompat.java"


# instance fields
.field private mThemedContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroidx/leanback/preference/BaseLeanbackPreferenceFragmentCompat;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 4

    .line 47
    iget-object v0, p0, Landroidx/leanback/preference/BaseLeanbackPreferenceFragmentCompat;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/preference/BaseLeanbackPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 49
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroidx/leanback/preference/BaseLeanbackPreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/preference/R$attr;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 51
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 52
    .local v1, "theme":I
    if-nez v1, :cond_0

    .line 54
    sget v1, Landroidx/leanback/preference/R$style;->PreferenceThemeOverlayLeanback:I

    .line 65
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/leanback/preference/BaseLeanbackPreferenceFragmentCompat;->mThemedContext:Landroid/content/Context;

    .line 67
    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "theme":I
    :cond_1
    iget-object v0, p0, Landroidx/leanback/preference/BaseLeanbackPreferenceFragmentCompat;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    sget v0, Landroidx/leanback/preference/R$layout;->leanback_preferences_list:I

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    .line 75
    .local v0, "verticalGridView":Landroidx/leanback/widget/VerticalGridView;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 76
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setFocusScrollStrategy(I)V

    .line 77
    new-instance v1, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 79
    return-object v0
.end method

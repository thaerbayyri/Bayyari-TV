.class public abstract Landroidx/leanback/preference/BaseLeanbackPreferenceFragment;
.super Landroidx/preference/PreferenceFragment;
.source "BaseLeanbackPreferenceFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbackFragment()Landroid/app/Fragment;
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroidx/leanback/preference/BaseLeanbackPreferenceFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    sget v0, Landroidx/leanback/preference/R$layout;->leanback_preferences_list:I

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    .line 45
    .local v0, "verticalGridView":Landroidx/leanback/widget/VerticalGridView;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 46
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setFocusScrollStrategy(I)V

    .line 47
    new-instance v1, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 49
    return-object v0
.end method

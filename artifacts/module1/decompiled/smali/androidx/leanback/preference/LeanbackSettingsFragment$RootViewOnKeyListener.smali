.class Landroidx/leanback/preference/LeanbackSettingsFragment$RootViewOnKeyListener;
.super Ljava/lang/Object;
.source "LeanbackSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/preference/LeanbackSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootViewOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/preference/LeanbackSettingsFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/preference/LeanbackSettingsFragment;)V
    .locals 0

    .line 183
    iput-object p1, p0, Landroidx/leanback/preference/LeanbackSettingsFragment$RootViewOnKeyListener;->this$0:Landroidx/leanback/preference/LeanbackSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 188
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 189
    iget-object v0, p0, Landroidx/leanback/preference/LeanbackSettingsFragment$RootViewOnKeyListener;->this$0:Landroidx/leanback/preference/LeanbackSettingsFragment;

    invoke-virtual {v0}, Landroidx/leanback/preference/LeanbackSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

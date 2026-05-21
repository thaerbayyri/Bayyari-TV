.class Landroidx/leanback/preference/LeanbackSettingsFragmentCompat$RootViewOnKeyListener;
.super Ljava/lang/Object;
.source "LeanbackSettingsFragmentCompat.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/preference/LeanbackSettingsFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootViewOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/preference/LeanbackSettingsFragmentCompat;


# direct methods
.method constructor <init>(Landroidx/leanback/preference/LeanbackSettingsFragmentCompat;)V
    .locals 0

    .line 177
    iput-object p1, p0, Landroidx/leanback/preference/LeanbackSettingsFragmentCompat$RootViewOnKeyListener;->this$0:Landroidx/leanback/preference/LeanbackSettingsFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 182
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 183
    iget-object v0, p0, Landroidx/leanback/preference/LeanbackSettingsFragmentCompat$RootViewOnKeyListener;->this$0:Landroidx/leanback/preference/LeanbackSettingsFragmentCompat;

    invoke-virtual {v0}, Landroidx/leanback/preference/LeanbackSettingsFragmentCompat;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

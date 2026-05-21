.class public final Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;
.super Ljava/lang/Object;
.source "ActivityLivePlayerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final epgOverlay:Lcom/bayyari/tv/ui/common/EpgOverlayView;

.field public final playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

.field public final playerView:Landroidx/media3/ui/PlayerView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/bayyari/tv/ui/common/EpgOverlayView;Lcom/bayyari/tv/ui/common/PlayerControlsView;Landroidx/media3/ui/PlayerView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "epgOverlay"    # Lcom/bayyari/tv/ui/common/EpgOverlayView;
    .param p3, "playerControls"    # Lcom/bayyari/tv/ui/common/PlayerControlsView;
    .param p4, "playerView"    # Landroidx/media3/ui/PlayerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "epgOverlay",
            "playerControls",
            "playerView"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 37
    iput-object p2, p0, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->epgOverlay:Lcom/bayyari/tv/ui/common/EpgOverlayView;

    .line 38
    iput-object p3, p0, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    .line 39
    iput-object p4, p0, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerView:Landroidx/media3/ui/PlayerView;

    .line 40
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;
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

    .line 69
    sget v0, Lcom/bayyari/tv/R$id;->epg_overlay:I

    .line 70
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/ui/common/EpgOverlayView;

    .line 71
    .local v1, "epgOverlay":Lcom/bayyari/tv/ui/common/EpgOverlayView;
    if-eqz v1, :cond_2

    .line 75
    sget v0, Lcom/bayyari/tv/R$id;->player_controls:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/ui/common/PlayerControlsView;

    .line 77
    .local v2, "playerControls":Lcom/bayyari/tv/ui/common/PlayerControlsView;
    if-eqz v2, :cond_1

    .line 81
    sget v0, Lcom/bayyari/tv/R$id;->player_view:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/media3/ui/PlayerView;

    .line 83
    .local v3, "playerView":Landroidx/media3/ui/PlayerView;
    if-eqz v3, :cond_0

    .line 87
    new-instance v4, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;-><init>(Landroid/widget/FrameLayout;Lcom/bayyari/tv/ui/common/EpgOverlayView;Lcom/bayyari/tv/ui/common/PlayerControlsView;Landroidx/media3/ui/PlayerView;)V

    return-object v4

    .line 84
    :cond_0
    goto :goto_0

    .line 78
    .end local v3    # "playerView":Landroidx/media3/ui/PlayerView;
    :cond_1
    goto :goto_0

    .line 72
    .end local v2    # "playerControls":Lcom/bayyari/tv/ui/common/PlayerControlsView;
    :cond_2
    nop

    .line 90
    .end local v1    # "epgOverlay":Lcom/bayyari/tv/ui/common/EpgOverlayView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;
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

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;
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

    .line 56
    sget v0, Lcom/bayyari/tv/R$layout;->activity_live_player:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

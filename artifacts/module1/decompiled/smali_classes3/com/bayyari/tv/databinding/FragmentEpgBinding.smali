.class public final Lcom/bayyari/tv/databinding/FragmentEpgBinding;
.super Ljava/lang/Object;
.source "FragmentEpgBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final epgOverlay:Lcom/bayyari/tv/ui/common/EpgOverlayView;

.field private final rootView:Lcom/bayyari/tv/ui/common/EpgOverlayView;


# direct methods
.method private constructor <init>(Lcom/bayyari/tv/ui/common/EpgOverlayView;Lcom/bayyari/tv/ui/common/EpgOverlayView;)V
    .locals 0
    .param p1, "rootView"    # Lcom/bayyari/tv/ui/common/EpgOverlayView;
    .param p2, "epgOverlay"    # Lcom/bayyari/tv/ui/common/EpgOverlayView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootView",
            "epgOverlay"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bayyari/tv/databinding/FragmentEpgBinding;->rootView:Lcom/bayyari/tv/ui/common/EpgOverlayView;

    .line 24
    iput-object p2, p0, Lcom/bayyari/tv/databinding/FragmentEpgBinding;->epgOverlay:Lcom/bayyari/tv/ui/common/EpgOverlayView;

    .line 25
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentEpgBinding;
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 50
    if-eqz p0, :cond_0

    .line 54
    move-object v0, p0

    check-cast v0, Lcom/bayyari/tv/ui/common/EpgOverlayView;

    .line 56
    .local v0, "epgOverlay":Lcom/bayyari/tv/ui/common/EpgOverlayView;
    new-instance v1, Lcom/bayyari/tv/databinding/FragmentEpgBinding;

    move-object v2, p0

    check-cast v2, Lcom/bayyari/tv/ui/common/EpgOverlayView;

    invoke-direct {v1, v2, v0}, Lcom/bayyari/tv/databinding/FragmentEpgBinding;-><init>(Lcom/bayyari/tv/ui/common/EpgOverlayView;Lcom/bayyari/tv/ui/common/EpgOverlayView;)V

    return-object v1

    .line 51
    .end local v0    # "epgOverlay":Lcom/bayyari/tv/ui/common/EpgOverlayView;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/FragmentEpgBinding;
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

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/FragmentEpgBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentEpgBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/FragmentEpgBinding;
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

    .line 41
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_epg:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/FragmentEpgBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentEpgBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/FragmentEpgBinding;->getRoot()Lcom/bayyari/tv/ui/common/EpgOverlayView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/bayyari/tv/ui/common/EpgOverlayView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentEpgBinding;->rootView:Lcom/bayyari/tv/ui/common/EpgOverlayView;

    return-object v0
.end method

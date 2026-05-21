.class public final Lcom/bayyari/tv/databinding/ItemChannelBinding;
.super Ljava/lang/Object;
.source "ItemChannelBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageLogo:Landroid/widget/ImageView;

.field public final livePill:Landroid/widget/LinearLayout;

.field public final progressEpg:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final textChannelName:Landroid/widget/TextView;

.field public final textProgram:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/cardview/widget/CardView;
    .param p2, "imageLogo"    # Landroid/widget/ImageView;
    .param p3, "livePill"    # Landroid/widget/LinearLayout;
    .param p4, "progressEpg"    # Landroid/widget/ProgressBar;
    .param p5, "textChannelName"    # Landroid/widget/TextView;
    .param p6, "textProgram"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "imageLogo",
            "livePill",
            "progressEpg",
            "textChannelName",
            "textProgram"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/bayyari/tv/databinding/ItemChannelBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 44
    iput-object p2, p0, Lcom/bayyari/tv/databinding/ItemChannelBinding;->imageLogo:Landroid/widget/ImageView;

    .line 45
    iput-object p3, p0, Lcom/bayyari/tv/databinding/ItemChannelBinding;->livePill:Landroid/widget/LinearLayout;

    .line 46
    iput-object p4, p0, Lcom/bayyari/tv/databinding/ItemChannelBinding;->progressEpg:Landroid/widget/ProgressBar;

    .line 47
    iput-object p5, p0, Lcom/bayyari/tv/databinding/ItemChannelBinding;->textChannelName:Landroid/widget/TextView;

    .line 48
    iput-object p6, p0, Lcom/bayyari/tv/databinding/ItemChannelBinding;->textProgram:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ItemChannelBinding;
    .locals 9
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 78
    sget v0, Lcom/bayyari/tv/R$id;->imageLogo:I

    .line 79
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 80
    .local v4, "imageLogo":Landroid/widget/ImageView;
    if-eqz v4, :cond_4

    .line 84
    sget v0, Lcom/bayyari/tv/R$id;->livePill:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    .line 86
    .local v5, "livePill":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_3

    .line 90
    sget v0, Lcom/bayyari/tv/R$id;->progressEpg:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ProgressBar;

    .line 92
    .local v6, "progressEpg":Landroid/widget/ProgressBar;
    if-eqz v6, :cond_2

    .line 96
    sget v0, Lcom/bayyari/tv/R$id;->textChannelName:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 98
    .local v7, "textChannelName":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 102
    sget v0, Lcom/bayyari/tv/R$id;->textProgram:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 104
    .local v8, "textProgram":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 108
    new-instance v2, Lcom/bayyari/tv/databinding/ItemChannelBinding;

    move-object v3, p0

    check-cast v3, Landroidx/cardview/widget/CardView;

    invoke-direct/range {v2 .. v8}, Lcom/bayyari/tv/databinding/ItemChannelBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 105
    :cond_0
    goto :goto_0

    .line 99
    .end local v8    # "textProgram":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 93
    .end local v7    # "textChannelName":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 87
    .end local v6    # "progressEpg":Landroid/widget/ProgressBar;
    :cond_3
    goto :goto_0

    .line 81
    .end local v5    # "livePill":Landroid/widget/LinearLayout;
    :cond_4
    nop

    .line 111
    .end local v4    # "imageLogo":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ItemChannelBinding;
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

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bayyari/tv/databinding/ItemChannelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ItemChannelBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/bayyari/tv/databinding/ItemChannelBinding;
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

    .line 65
    sget v0, Lcom/bayyari/tv/R$layout;->item_channel:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/bayyari/tv/databinding/ItemChannelBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/ItemChannelBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/bayyari/tv/databinding/ItemChannelBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bayyari/tv/databinding/ItemChannelBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

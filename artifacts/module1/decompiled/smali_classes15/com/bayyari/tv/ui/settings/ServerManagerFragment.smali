.class public final Lcom/bayyari/tv/ui/settings/ServerManagerFragment;
.super Lcom/bayyari/tv/ui/settings/Hilt_ServerManagerFragment;
.source "ServerManagerFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/settings/ServerManagerFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "getAuthRepository",
        "()Lcom/bayyari/tv/data/repository/AuthRepository;",
        "setAuthRepository",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;)V",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_server_manager:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/settings/Hilt_ServerManagerFragment;-><init>(I)V

    .line 13
    return-void
.end method

.method static final onViewCreated$lambda$0(Lcom/bayyari/tv/ui/settings/ServerManagerFragment;Lcom/bayyari/tv/domain/model/Server;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/settings/ServerManagerFragment;
    .param p1, "server"    # Lcom/bayyari/tv/domain/model/Server;

    const-string v0, "server"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/settings/ServerManagerFragment;->getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/data/repository/AuthRepository;->setActiveServer(I)V

    .line 25
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/settings/ServerManagerFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/ServerManagerFragment;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "authRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/settings/ServerManagerFragment;->binding:Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;

    .line 35
    invoke-super {p0}, Lcom/bayyari/tv/ui/settings/Hilt_ServerManagerFragment;->onDestroyView()V

    .line 36
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/settings/ServerManagerFragment;->binding:Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;

    .line 23
    new-instance v0, Lcom/bayyari/tv/ui/settings/ServerAdapter;

    new-instance v1, Lcom/bayyari/tv/ui/settings/ServerManagerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/bayyari/tv/ui/settings/ServerManagerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/settings/ServerManagerFragment;)V

    invoke-direct {v0, v1}, Lcom/bayyari/tv/ui/settings/ServerAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 27
    .local v0, "adapter":Lcom/bayyari/tv/ui/settings/ServerAdapter;
    iget-object v1, p0, Lcom/bayyari/tv/ui/settings/ServerManagerFragment;->binding:Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;->recyclerServers:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/settings/ServerManagerFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/bayyari/tv/ui/settings/ServerManagerFragment;->binding:Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;->recyclerServers:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/settings/ServerManagerFragment;->getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/data/repository/AuthRepository;->getServers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/settings/ServerAdapter;->submitList(Ljava/util/List;)V

    .line 31
    return-void
.end method

.method public final setAuthRepository(Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/repository/AuthRepository;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/bayyari/tv/ui/settings/ServerManagerFragment;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 17
    return-void
.end method

.class public final Lcom/bayyari/tv/ui/live/LiveFragment;
.super Lcom/bayyari/tv/ui/live/Hilt_LiveFragment;
.source "LiveFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiveFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveFragment.kt\ncom/bayyari/tv/ui/live/LiveFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n106#2,15:128\n1#3:143\n*S KotlinDebug\n*F\n+ 1 LiveFragment.kt\ncom/bayyari/tv/ui/live/LiveFragment\n*L\n27#1:128,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0019H\u0016J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020%H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/live/LiveFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/live/LiveViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/live/LiveViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentLiveBinding;",
        "favoriteDao",
        "Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
        "getFavoriteDao",
        "()Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
        "setFavoriteDao",
        "(Lcom/bayyari/tv/data/local/dao/FavoriteDao;)V",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "getAuthRepository",
        "()Lcom/bayyari/tv/data/repository/AuthRepository;",
        "setAuthRepository",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;)V",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "addFavorite",
        "streamId",
        "",
        "navigateToCatchup",
        "showChannelInfo",
        "name",
        "",
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

.field private binding:Lcom/bayyari/tv/databinding/FragmentLiveBinding;

.field public favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 25
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_live:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/live/Hilt_LiveFragment;-><init>(I)V

    .line 27
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 128
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 129
    new-instance v1, Lcom/bayyari/tv/ui/live/LiveFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/live/LiveFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 128
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 130
    const/4 v2, 0x0

    .line 128
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 131
    const/4 v3, 0x0

    .line 128
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 133
    .local v4, "$i$f$viewModels\\1\\27":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/live/LiveFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/live/LiveFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 134
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/live/LiveViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/live/LiveFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/live/LiveFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/live/LiveFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/live/LiveFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 142
    nop

    .line 134
    new-instance v9, Lcom/bayyari/tv/ui/live/LiveFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/live/LiveFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 27
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels\\1\\27":I
    .end local v5    # "owner$delegate\\1":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 24
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/live/LiveFragment;)Lcom/bayyari/tv/ui/live/LiveViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LiveFragment;

    .line 24
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->getViewModel()Lcom/bayyari/tv/ui/live/LiveViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final addFavorite(I)V
    .locals 8
    .param p1, "streamId"    # I

    .line 101
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v0

    .line 102
    .local v0, "serverId":I
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/live/LiveFragment$addFavorite$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v0, v3}, Lcom/bayyari/tv/ui/live/LiveFragment$addFavorite$1;-><init>(Lcom/bayyari/tv/ui/live/LiveFragment;IILkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 112
    return-void

    .line 101
    .end local v0    # "serverId":I
    :cond_0
    return-void
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/live/LiveViewModel;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/live/LiveViewModel;

    return-object v0
.end method

.method private final navigateToCatchup(I)V
    .locals 4
    .param p1, "streamId"    # I

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 143
    .local v1, "$this$navigateToCatchup_u24lambda_u245\\1":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 115
    .local v2, "$i$a$-apply-LiveFragment$navigateToCatchup$args$1\\1\\115\\0":I
    const-string v3, "streamId"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    .end local v1    # "$this$navigateToCatchup_u24lambda_u245\\1":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-LiveFragment$navigateToCatchup$args$1\\1\\115\\0":I
    .local v0, "args":Landroid/os/Bundle;
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    sget v2, Lcom/bayyari/tv/R$id;->action_live_to_catchup:I

    invoke-virtual {v1, v2, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method static final onViewCreated$lambda$0(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/domain/model/Category;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LiveFragment;
    .param p1, "category"    # Lcom/bayyari/tv/domain/model/Category;

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->getViewModel()Lcom/bayyari/tv/ui/live/LiveViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Category;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/live/LiveViewModel;->selectCategory(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onViewCreated$lambda$2(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/domain/model/Channel;)Lkotlin/Unit;
    .locals 5
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LiveFragment;
    .param p1, "channel"    # Lcom/bayyari/tv/domain/model/Channel;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$onViewCreated_u24lambda_u242_u24lambda_u241\\1":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 46
    .local v2, "$i$a$-apply-LiveFragment$onViewCreated$channelAdapter$1$1\\1\\45\\0":I
    const-string v3, "extra_stream_id"

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getStreamId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    nop

    .line 45
    .end local v1    # "$this$onViewCreated_u24lambda_u242_u24lambda_u241\\1":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-LiveFragment$onViewCreated$channelAdapter$1$1\\1\\45\\0":I
    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/live/LiveFragment;->startActivity(Landroid/content/Intent;)V

    .line 48
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onViewCreated$lambda$4(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/domain/model/Channel;)Lkotlin/Unit;
    .locals 4
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LiveFragment;
    .param p1, "channel"    # Lcom/bayyari/tv/domain/model/Channel;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget v0, Lcom/bayyari/tv/R$string;->live_add_favorite:I

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/live/LiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    sget v1, Lcom/bayyari/tv/R$string;->live_catchup:I

    invoke-virtual {p0, v1}, Lcom/bayyari/tv/ui/live/LiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    nop

    .line 53
    sget v2, Lcom/bayyari/tv/R$string;->live_info:I

    invoke-virtual {p0, v2}, Lcom/bayyari/tv/ui/live/LiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 51
    nop

    .line 50
    nop

    .line 55
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    move-object v2, v0

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/domain/model/Channel;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 64
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final onViewCreated$lambda$4$lambda$3(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/domain/model/Channel;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LiveFragment;
    .param p1, "$channel"    # Lcom/bayyari/tv/domain/model/Channel;
    .param p3, "which"    # I

    .line 57
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/bayyari/tv/ui/live/LiveFragment;->showChannelInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getStreamId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/bayyari/tv/ui/live/LiveFragment;->navigateToCatchup(I)V

    goto :goto_0

    .line 58
    :pswitch_2
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getStreamId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/bayyari/tv/ui/live/LiveFragment;->addFavorite(I)V

    .line 62
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final showChannelInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 120
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    sget v1, Lcom/bayyari/tv/R$string;->live_info:I

    invoke-virtual {p0, v1}, Lcom/bayyari/tv/ui/live/LiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 123
    sget v1, Lcom/bayyari/tv/R$string;->action_ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 125
    return-void
.end method


# virtual methods
.method public final getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "authRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFavoriteDao()Lcom/bayyari/tv/data/local/dao/FavoriteDao;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "favoriteDao"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->binding:Lcom/bayyari/tv/databinding/FragmentLiveBinding;

    .line 97
    invoke-super {p0}, Lcom/bayyari/tv/ui/live/Hilt_LiveFragment;->onDestroyView()V

    .line 98
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentLiveBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentLiveBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->binding:Lcom/bayyari/tv/databinding/FragmentLiveBinding;

    .line 38
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->binding:Lcom/bayyari/tv/databinding/FragmentLiveBinding;

    if-nez v0, :cond_0

    return-void

    .line 40
    .local v0, "b":Lcom/bayyari/tv/databinding/FragmentLiveBinding;
    :cond_0
    new-instance v1, Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda1;-><init>(Lcom/bayyari/tv/ui/live/LiveFragment;)V

    invoke-direct {v1, v2}, Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .local v1, "categoryAdapter":Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;
    new-instance v2, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    new-instance v3, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda2;-><init>(Lcom/bayyari/tv/ui/live/LiveFragment;)V

    new-instance v4, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda3;-><init>(Lcom/bayyari/tv/ui/live/LiveFragment;)V

    invoke-direct {v2, v3, v4}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 67
    .local v2, "channelAdapter":Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;
    iget-object v3, v0, Lcom/bayyari/tv/databinding/FragmentLiveBinding;->recyclerCategories:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 68
    iget-object v3, v0, Lcom/bayyari/tv/databinding/FragmentLiveBinding;->recyclerCategories:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    iget-object v3, v0, Lcom/bayyari/tv/databinding/FragmentLiveBinding;->recyclerChannels:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    iget-object v3, v0, Lcom/bayyari/tv/databinding/FragmentLiveBinding;->recyclerChannels:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v2

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 73
    iget-object v3, v0, Lcom/bayyari/tv/databinding/FragmentLiveBinding;->searchLive:Landroidx/appcompat/widget/SearchView;

    new-instance v4, Lcom/bayyari/tv/ui/live/LiveFragment$onViewCreated$1;

    invoke-direct {v4, p0}, Lcom/bayyari/tv/ui/live/LiveFragment$onViewCreated$1;-><init>(Lcom/bayyari/tv/ui/live/LiveFragment;)V

    check-cast v4, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    const-string v4, "getViewLifecycleOwner(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/bayyari/tv/ui/live/LiveFragment$onViewCreated$2;

    const/4 v11, 0x0

    invoke-direct {v3, p0, v1, v11}, Lcom/bayyari/tv/ui/live/LiveFragment$onViewCreated$2;-><init>(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/ui/common/adapter/CategoryAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 88
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/bayyari/tv/ui/live/LiveFragment$onViewCreated$3;

    invoke-direct {v3, p0, v2, v11}, Lcom/bayyari/tv/ui/live/LiveFragment$onViewCreated$3;-><init>(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 92
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LiveFragment;->getViewModel()Lcom/bayyari/tv/ui/live/LiveViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bayyari/tv/ui/live/LiveViewModel;->refresh()V

    .line 93
    return-void
.end method

.method public final setAuthRepository(Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/repository/AuthRepository;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 34
    return-void
.end method

.method public final setFavoriteDao(Lcom/bayyari/tv/data/local/dao/FavoriteDao;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    .line 31
    return-void
.end method

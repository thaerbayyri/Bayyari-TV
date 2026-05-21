.class public final Lcom/bayyari/tv/ui/auth/LoginFragment;
.super Lcom/bayyari/tv/ui/auth/Hilt_LoginFragment;
.source "LoginFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/bayyari/tv/ui/auth/LoginFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,78:1\n106#2,15:79\n*S KotlinDebug\n*F\n+ 1 LoginFragment.kt\ncom/bayyari/tv/ui/auth/LoginFragment\n*L\n20#1:79,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/auth/LoginFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/auth/LoginViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/auth/LoginViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentLoginBinding;",
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
.field private binding:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 18
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_login:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/auth/Hilt_LoginFragment;-><init>(I)V

    .line 20
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 79
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 80
    new-instance v1, Lcom/bayyari/tv/ui/auth/LoginFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/auth/LoginFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 79
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 81
    const/4 v2, 0x0

    .line 79
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 82
    const/4 v3, 0x0

    .line 79
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 84
    .local v4, "$i$f$viewModels\\1\\20":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/auth/LoginFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/auth/LoginFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 85
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/auth/LoginViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/auth/LoginFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/auth/LoginFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/auth/LoginFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/auth/LoginFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 93
    nop

    .line 85
    new-instance v9, Lcom/bayyari/tv/ui/auth/LoginFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/auth/LoginFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 20
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels\\1\\20":I
    .end local v5    # "owner$delegate\\1":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 17
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/auth/LoginFragment;)Lcom/bayyari/tv/ui/auth/LoginViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/auth/LoginFragment;

    .line 17
    invoke-direct {p0}, Lcom/bayyari/tv/ui/auth/LoginFragment;->getViewModel()Lcom/bayyari/tv/ui/auth/LoginViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/auth/LoginViewModel;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/auth/LoginViewModel;

    return-object v0
.end method

.method static final onViewCreated$lambda$0(Lcom/bayyari/tv/ui/auth/LoginFragment;Lcom/bayyari/tv/databinding/FragmentLoginBinding;Landroid/view/View;)V
    .locals 6
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/auth/LoginFragment;
    .param p1, "$b"    # Lcom/bayyari/tv/databinding/FragmentLoginBinding;
    .param p2, "it"    # Landroid/view/View;

    .line 28
    invoke-direct {p0}, Lcom/bayyari/tv/ui/auth/LoginFragment;->getViewModel()Lcom/bayyari/tv/ui/auth/LoginViewModel;

    move-result-object v0

    .line 29
    iget-object v1, p1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->editServer:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, ""

    if-nez v1, :cond_1

    move-object v1, v3

    .line 30
    :cond_1
    iget-object v4, p1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->editUsername:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    if-nez v4, :cond_3

    move-object v4, v3

    .line 31
    :cond_3
    iget-object v5, p1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->editPassword:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v2

    .line 32
    :goto_2
    nop

    .line 33
    iget-object v2, p1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->switchRemember:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v2}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->isChecked()Z

    move-result v5

    .line 28
    move-object v2, v4

    const-string v4, "BAYYARI-TV"

    invoke-virtual/range {v0 .. v5}, Lcom/bayyari/tv/ui/auth/LoginViewModel;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method static final onViewCreated$lambda$1(Lcom/bayyari/tv/ui/auth/LoginFragment;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/auth/LoginFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 38
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/auth/LoginFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 39
    sget v1, Lcom/bayyari/tv/R$id;->login_container:I

    new-instance v2, Lcom/bayyari/tv/ui/auth/AddServerFragment;

    invoke-direct {v2}, Lcom/bayyari/tv/ui/auth/AddServerFragment;-><init>()V

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 42
    return-void
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginFragment;->binding:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    .line 75
    invoke-super {p0}, Lcom/bayyari/tv/ui/auth/Hilt_LoginFragment;->onDestroyView()V

    .line 76
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginFragment;->binding:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    .line 25
    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginFragment;->binding:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    if-nez v0, :cond_0

    return-void

    .line 27
    .local v0, "b":Lcom/bayyari/tv/databinding/FragmentLoginBinding;
    :cond_0
    iget-object v1, v0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->buttonLogin:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lcom/bayyari/tv/ui/auth/LoginFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/bayyari/tv/ui/auth/LoginFragment$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/auth/LoginFragment;Lcom/bayyari/tv/databinding/FragmentLoginBinding;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, v0, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->buttonAddM3u:Landroid/widget/TextView;

    new-instance v2, Lcom/bayyari/tv/ui/auth/LoginFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/bayyari/tv/ui/auth/LoginFragment$$ExternalSyntheticLambda1;-><init>(Lcom/bayyari/tv/ui/auth/LoginFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/auth/LoginFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3;-><init>(Lcom/bayyari/tv/ui/auth/LoginFragment;Lcom/bayyari/tv/databinding/FragmentLoginBinding;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 71
    return-void
.end method

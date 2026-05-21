.class public final Lcom/bayyari/tv/ui/auth/AddServerFragment;
.super Lcom/bayyari/tv/ui/auth/Hilt_AddServerFragment;
.source "AddServerFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/auth/AddServerFragment;",
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
        "Lcom/bayyari/tv/databinding/FragmentAddServerBinding;",
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

.field private binding:Lcom/bayyari/tv/databinding/FragmentAddServerBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_add_server:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/auth/Hilt_AddServerFragment;-><init>(I)V

    .line 17
    return-void
.end method

.method static final onViewCreated$lambda$0(Lcom/bayyari/tv/databinding/FragmentAddServerBinding;Lcom/bayyari/tv/ui/auth/AddServerFragment;Landroid/view/View;)V
    .locals 13
    .param p0, "$b"    # Lcom/bayyari/tv/databinding/FragmentAddServerBinding;
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/auth/AddServerFragment;
    .param p2, "it"    # Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->editLabel:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, ""

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, "label":Ljava/lang/String;
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->editM3u:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 32
    .local v6, "url":Ljava/lang/String;
    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {p1}, Lcom/bayyari/tv/ui/auth/AddServerFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/bayyari/tv/R$string;->login_error_server_url:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 34
    return-void

    .line 36
    :cond_4
    const-string v0, "http://"

    const/4 v2, 0x1

    invoke-static {v6, v0, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https://"

    invoke-static {v6, v0, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 37
    invoke-virtual {p1}, Lcom/bayyari/tv/ui/auth/AddServerFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/bayyari/tv/R$string;->login_error_server_url:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    return-void

    .line 40
    :cond_5
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->buttonSave:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 41
    invoke-virtual {p1}, Lcom/bayyari/tv/ui/auth/AddServerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;

    const/4 v8, 0x0

    move-object v7, p0

    move-object v4, p1

    .end local p0    # "$b":Lcom/bayyari/tv/databinding/FragmentAddServerBinding;
    .end local p1    # "this$0":Lcom/bayyari/tv/ui/auth/AddServerFragment;
    .local v4, "this$0":Lcom/bayyari/tv/ui/auth/AddServerFragment;
    .local v7, "$b":Lcom/bayyari/tv/databinding/FragmentAddServerBinding;
    invoke-direct/range {v3 .. v8}, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;-><init>(Lcom/bayyari/tv/ui/auth/AddServerFragment;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/databinding/FragmentAddServerBinding;Lkotlin/coroutines/Continuation;)V

    .end local v7    # "$b":Lcom/bayyari/tv/databinding/FragmentAddServerBinding;
    .restart local p0    # "$b":Lcom/bayyari/tv/databinding/FragmentAddServerBinding;
    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 52
    return-void
.end method


# virtual methods
.method public final getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "authRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment;->binding:Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

    .line 57
    invoke-super {p0}, Lcom/bayyari/tv/ui/auth/Hilt_AddServerFragment;->onDestroyView()V

    .line 58
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment;->binding:Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

    .line 27
    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment;->binding:Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

    if-nez v0, :cond_0

    return-void

    .line 29
    .local v0, "b":Lcom/bayyari/tv/databinding/FragmentAddServerBinding;
    :cond_0
    iget-object v1, v0, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->buttonSave:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lcom/bayyari/tv/ui/auth/AddServerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/bayyari/tv/ui/auth/AddServerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/databinding/FragmentAddServerBinding;Lcom/bayyari/tv/ui/auth/AddServerFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public final setAuthRepository(Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/repository/AuthRepository;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 21
    return-void
.end method

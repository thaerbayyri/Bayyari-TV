.class public final Lcom/bayyari/tv/ui/settings/SettingsFragment;
.super Lcom/bayyari/tv/ui/settings/Hilt_SettingsFragment;
.source "SettingsFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/bayyari/tv/ui/settings/SettingsFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,78:1\n106#2,15:79\n*S KotlinDebug\n*F\n+ 1 SettingsFragment.kt\ncom/bayyari/tv/ui/settings/SettingsFragment\n*L\n22#1:79,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/settings/SettingsFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/settings/SettingsViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/settings/SettingsViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onCreatePreferences",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
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
.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 20
    invoke-direct {p0}, Lcom/bayyari/tv/ui/settings/Hilt_SettingsFragment;-><init>()V

    .line 22
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 79
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 80
    new-instance v1, Lcom/bayyari/tv/ui/settings/SettingsFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/settings/SettingsFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

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
    .local v4, "$i$f$viewModels\\1\\22":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/settings/SettingsFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/settings/SettingsFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 85
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/settings/SettingsFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/settings/SettingsFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/settings/SettingsFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/settings/SettingsFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 93
    nop

    .line 85
    new-instance v9, Lcom/bayyari/tv/ui/settings/SettingsFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/settings/SettingsFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 22
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels\\1\\22":I
    .end local v5    # "owner$delegate\\1":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 19
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/settings/SettingsFragment;)Lcom/bayyari/tv/ui/settings/SettingsViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/settings/SettingsFragment;

    .line 19
    invoke-direct {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->getViewModel()Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/settings/SettingsViewModel;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    return-object v0
.end method

.method static final onCreatePreferences$lambda$1(Lcom/bayyari/tv/ui/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 3
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/settings/SettingsFragment;
    .param p1, "it"    # Landroidx/preference/Preference;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    sget v1, Lcom/bayyari/tv/R$string;->settings_change_playlist:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 30
    sget v1, Lcom/bayyari/tv/R$string;->settings_change_playlist_confirm:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 31
    sget v1, Lcom/bayyari/tv/R$string;->action_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 32
    sget v1, Lcom/bayyari/tv/R$string;->action_ok:I

    new-instance v2, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method static final onCreatePreferences$lambda$1$lambda$0(Lcom/bayyari/tv/ui/settings/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/settings/SettingsFragment;

    .line 33
    invoke-direct {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->getViewModel()Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->signOut()V

    .line 34
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/bayyari/tv/ui/auth/LoginActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const p2, 0x10008000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "addFlags(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    nop

    .line 36
    .local p1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->finishAffinity()V

    .line 38
    return-void
.end method

.method static final onCreatePreferences$lambda$2(Lcom/bayyari/tv/ui/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 2
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/settings/SettingsFragment;
    .param p1, "it"    # Landroidx/preference/Preference;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/bayyari/tv/R$id;->action_settings_to_server_manager:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method static final onCreatePreferences$lambda$3(Lcom/bayyari/tv/ui/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/settings/SettingsFragment;
    .param p2, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->getViewModel()Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->setDefaultPlayer(Ljava/lang/String;)V

    .line 50
    const/4 p1, 0x1

    return p1
.end method

.method static final onCreatePreferences$lambda$4(Lcom/bayyari/tv/ui/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/settings/SettingsFragment;
    .param p2, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->getViewModel()Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->setStreamFormat(Ljava/lang/String;)V

    .line 55
    const/4 p1, 0x1

    return p1
.end method

.method static final onCreatePreferences$lambda$5(Lcom/bayyari/tv/ui/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/settings/SettingsFragment;
    .param p2, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->getViewModel()Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->setAutoPlayNext(Z)V

    .line 60
    const/4 p1, 0x1

    return p1
.end method

.method static final onCreatePreferences$lambda$6(Lcom/bayyari/tv/ui/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/settings/SettingsFragment;
    .param p2, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->getViewModel()Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->setParentalPin(Ljava/lang/String;)V

    .line 65
    const/4 p1, 0x1

    return p1
.end method

.method static final onCreatePreferences$lambda$7(Lcom/bayyari/tv/ui/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 7
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/settings/SettingsFragment;
    .param p1, "it"    # Landroidx/preference/Preference;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/bayyari/tv/ui/settings/SettingsFragment$onCreatePreferences$7$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/bayyari/tv/ui/settings/SettingsFragment$onCreatePreferences$7$1;-><init>(Lcom/bayyari/tv/ui/settings/SettingsFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 74
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 25
    sget v0, Lcom/bayyari/tv/R$xml;->preferences_settings:I

    invoke-virtual {p0, v0, p2}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 27
    const-string v0, "pref_change_playlist"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/bayyari/tv/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 43
    :cond_0
    const-string v0, "pref_servers"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/bayyari/tv/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 48
    :cond_1
    const-string v0, "pref_default_player"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/bayyari/tv/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    :cond_2
    const-string v0, "pref_stream_format"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/bayyari/tv/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    :cond_3
    const-string v0, "pref_auto_play_next"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/bayyari/tv/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    :cond_4
    const-string v0, "pref_parental_pin"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/bayyari/tv/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    :cond_5
    const-string v0, "pref_app_info"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->getViewModel()Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->getServerInfo()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    :cond_6
    const-string v0, "pref_clear_cache"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/bayyari/tv/ui/settings/SettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/bayyari/tv/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    :cond_7
    return-void
.end method

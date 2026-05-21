.class public final Lcom/bayyari/tv/ui/live/LivePlayerActivity;
.super Lcom/bayyari/tv/ui/live/Hilt_LivePlayerActivity;
.source "LivePlayerActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/live/LivePlayerActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLivePlayerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LivePlayerActivity.kt\ncom/bayyari/tv/ui/live/LivePlayerActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,196:1\n75#2,13:197\n1563#3:210\n1634#3,3:211\n1563#3:216\n1634#3,3:217\n37#4,2:214\n37#4,2:220\n*S KotlinDebug\n*F\n+ 1 LivePlayerActivity.kt\ncom/bayyari/tv/ui/live/LivePlayerActivity\n*L\n45#1:197,13\n168#1:210\n168#1:211,3\n181#1:216\n181#1:217,3\n168#1:214,2\n181#1:220,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 02\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0014J\u0008\u0010(\u001a\u00020%H\u0002J\u0008\u0010)\u001a\u00020%H\u0002J\u0008\u0010*\u001a\u00020%H\u0002J\u0008\u0010+\u001a\u00020%H\u0002J\u0008\u0010,\u001a\u00020%H\u0002J\u0008\u0010-\u001a\u00020%H\u0002J\u0008\u0010.\u001a\u00020%H\u0002J\u0008\u0010/\u001a\u00020%H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/live/LivePlayerActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "iptvPlayer",
        "Lcom/bayyari/tv/player/IptvPlayer;",
        "getIptvPlayer",
        "()Lcom/bayyari/tv/player/IptvPlayer;",
        "setIptvPlayer",
        "(Lcom/bayyari/tv/player/IptvPlayer;)V",
        "prefs",
        "Lcom/bayyari/tv/util/EncryptedPrefs;",
        "getPrefs",
        "()Lcom/bayyari/tv/util/EncryptedPrefs;",
        "setPrefs",
        "(Lcom/bayyari/tv/util/EncryptedPrefs;)V",
        "networkUtils",
        "Lcom/bayyari/tv/util/NetworkUtils;",
        "getNetworkUtils",
        "()Lcom/bayyari/tv/util/NetworkUtils;",
        "setNetworkUtils",
        "(Lcom/bayyari/tv/util/NetworkUtils;)V",
        "viewModel",
        "Lcom/bayyari/tv/ui/live/LivePlayerViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;",
        "aspectIndex",
        "",
        "wasPlaying",
        "",
        "hideHandler",
        "Landroid/os/Handler;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "toggleControls",
        "toggleAspectRatio",
        "enterPip",
        "openExternalPlayer",
        "toggleEpg",
        "showAudioTracks",
        "showSubtitleTracks",
        "onDestroy",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/bayyari/tv/ui/live/LivePlayerActivity$Companion;

.field public static final EXTRA_STREAM_ID:Ljava/lang/String; = "extra_stream_id"


# instance fields
.field private aspectIndex:I

.field private binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

.field private final hideHandler:Landroid/os/Handler;

.field public iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public networkUtils:Lcom/bayyari/tv/util/NetworkUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public prefs:Lcom/bayyari/tv/util/EncryptedPrefs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;

.field private wasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bayyari/tv/ui/live/LivePlayerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->Companion:Lcom/bayyari/tv/ui/live/LivePlayerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 30
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/Hilt_LivePlayerActivity;-><init>()V

    .line 45
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 197
    .local v0, "$this$viewModels_u24default\\1":Landroidx/activity/ComponentActivity;
    nop

    .line 198
    const/4 v1, 0x0

    .line 197
    .local v1, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 199
    const/4 v2, 0x0

    .line 197
    .local v2, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 201
    .local v3, "$i$f$viewModels\\1\\45":I
    new-instance v4, Lcom/bayyari/tv/ui/live/LivePlayerActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v4, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 205
    .local v4, "factoryPromise\\1":Lkotlin/jvm/functions/Function0;
    new-instance v5, Landroidx/lifecycle/ViewModelLazy;

    const-class v6, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 207
    new-instance v7, Lcom/bayyari/tv/ui/live/LivePlayerActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v7, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 208
    nop

    .line 209
    new-instance v8, Lcom/bayyari/tv/ui/live/LivePlayerActivity$special$$inlined$viewModels$default$3;

    invoke-direct {v8, v1, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 205
    invoke-direct {v5, v6, v7, v4, v8}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/Lazy;

    .line 45
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/activity/ComponentActivity;
    .end local v1    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$viewModels\\1\\45":I
    .end local v4    # "factoryPromise\\1":Lkotlin/jvm/functions/Function0;
    iput-object v5, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->wasPlaying:Z

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->hideHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lcom/bayyari/tv/ui/live/LivePlayerViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 29
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getViewModel()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getWasPlaying$p(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Z
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 29
    iget-boolean v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->wasPlaying:Z

    return v0
.end method

.method public static final synthetic access$setWasPlaying$p(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;
    .param p1, "<set-?>"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->wasPlaying:Z

    return-void
.end method

.method private final enterPip()V
    .locals 4

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 139
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    .line 140
    new-instance v1, Landroid/util/Rational;

    const/16 v2, 0x10

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    .line 139
    nop

    .line 142
    .local v0, "params":Landroid/app/PictureInPictureParams;
    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 144
    .end local v0    # "params":Landroid/app/PictureInPictureParams;
    :cond_0
    return-void
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    return-object v0
.end method

.method static final onCreate$lambda$0(Landroidx/media3/common/PlaybackException;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Landroidx/media3/common/PlaybackException;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onCreate$lambda$1(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lkotlin/Unit;
    .locals 3
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 68
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    .line 69
    .local v0, "player":Landroidx/media3/exoplayer/ExoPlayer;
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->pause()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->play()V

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v1, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    iget-object v1, v1, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setPlayState(Z)V

    .line 71
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final onCreate$lambda$2(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 72
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->toggleAspectRatio()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onCreate$lambda$3(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 73
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->enterPip()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onCreate$lambda$4(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 74
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->openExternalPlayer()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onCreate$lambda$5(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 75
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->showAudioTracks()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onCreate$lambda$6(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 76
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->showSubtitleTracks()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onCreate$lambda$7(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 77
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->toggleEpg()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onCreate$lambda$8(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 80
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->toggleControls()V

    .line 81
    return-void
.end method

.method private final openExternalPlayer()V
    .locals 7

    .line 147
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getViewModel()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->getChannel()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/domain/model/Channel;

    if-nez v0, :cond_0

    return-void

    .line 148
    .local v0, "current":Lcom/bayyari/tv/domain/model/Channel;
    :cond_0
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getViewModel()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->buildStreamUrl(Lcom/bayyari/tv/domain/model/Channel;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .local v3, "$this$openExternalPlayer_u24lambda_u2410\\1":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 150
    .local v4, "$i$a$-apply-LivePlayerActivity$openExternalPlayer$intent$1\\1\\149\\0":I
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "video/*"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    nop

    .line 149
    .end local v3    # "$this$openExternalPlayer_u24lambda_u2410\\1":Landroid/content/Intent;
    .end local v4    # "$i$a$-apply-LivePlayerActivity$openExternalPlayer$intent$1\\1\\149\\0":I
    nop

    .line 152
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    :cond_1
    return-void
.end method

.method private final showAudioTracks()V
    .locals 10

    .line 166
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/player/IptvPlayer;->audioTracks()Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "tracks":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 168
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 210
    .local v2, "$i$f$map\\1\\168":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination\\2":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 211
    .local v5, "$i$f$mapTo\\2\\210":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 212
    .local v7, "item\\2":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;

    .local v8, "it\\3":Lcom/bayyari/tv/player/TrackSelector$TrackInfo;
    const/4 v9, 0x0

    .line 168
    .local v9, "$i$a$-map-LivePlayerActivity$showAudioTracks$labels$1\\3\\212\\0":I
    invoke-virtual {v8}, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 212
    .end local v8    # "it\\3":Lcom/bayyari/tv/player/TrackSelector$TrackInfo;
    .end local v9    # "$i$a$-map-LivePlayerActivity$showAudioTracks$labels$1\\3\\212\\0":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    .end local v7    # "item\\2":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination\\2":Ljava/util/Collection;
    .end local v4    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo\\2\\210":I
    check-cast v3, Ljava/util/List;

    .line 210
    nop

    .end local v1    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map\\1\\168":I
    check-cast v3, Ljava/util/Collection;

    .line 168
    nop

    .local v3, "$this$toTypedArray\\4":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 214
    .local v1, "$i$f$toTypedArray\\4\\168":I
    move-object v2, v3

    .line 215
    .local v2, "this_\\4":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 168
    .end local v1    # "$i$f$toTypedArray\\4\\168":I
    .end local v2    # "this_\\4":Ljava/util/Collection;
    .end local v3    # "$this$toTypedArray\\4":Ljava/util/Collection;
    check-cast v1, [Ljava/lang/String;

    .line 169
    .local v1, "labels":[Ljava/lang/String;
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    sget v3, Lcom/bayyari/tv/R$string;->live_audio_track:I

    invoke-virtual {p0, v3}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 171
    move-object v3, v1

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 176
    return-void
.end method

.method static final showAudioTracks$lambda$12(Ljava/util/List;Lcom/bayyari/tv/ui/live/LivePlayerActivity;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "$tracks"    # Ljava/util/List;
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;
    .param p3, "which"    # I

    .line 172
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;

    .line 173
    .local p2, "selected":Lcom/bayyari/tv/player/TrackSelector$TrackInfo;
    invoke-virtual {p1}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;->getGroupIndex()I

    move-result v1

    invoke-virtual {p2}, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;->getTrackIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bayyari/tv/player/IptvPlayer;->setAudioTrack(II)V

    .line 174
    return-void
.end method

.method private final showSubtitleTracks()V
    .locals 10

    .line 179
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/player/IptvPlayer;->subtitleTracks()Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "tracks":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 181
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 216
    .local v2, "$i$f$map\\1\\181":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination\\2":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 217
    .local v5, "$i$f$mapTo\\2\\216":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 218
    .local v7, "item\\2":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;

    .local v8, "it\\3":Lcom/bayyari/tv/player/TrackSelector$TrackInfo;
    const/4 v9, 0x0

    .line 181
    .local v9, "$i$a$-map-LivePlayerActivity$showSubtitleTracks$labels$1\\3\\218\\0":I
    invoke-virtual {v8}, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 218
    .end local v8    # "it\\3":Lcom/bayyari/tv/player/TrackSelector$TrackInfo;
    .end local v9    # "$i$a$-map-LivePlayerActivity$showSubtitleTracks$labels$1\\3\\218\\0":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v7    # "item\\2":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination\\2":Ljava/util/Collection;
    .end local v4    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo\\2\\216":I
    check-cast v3, Ljava/util/List;

    .line 216
    nop

    .end local v1    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map\\1\\181":I
    check-cast v3, Ljava/util/Collection;

    .line 181
    nop

    .local v3, "$this$toTypedArray\\4":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 220
    .local v1, "$i$f$toTypedArray\\4\\181":I
    move-object v2, v3

    .line 221
    .local v2, "this_\\4":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 181
    .end local v1    # "$i$f$toTypedArray\\4\\181":I
    .end local v2    # "this_\\4":Ljava/util/Collection;
    .end local v3    # "$this$toTypedArray\\4":Ljava/util/Collection;
    check-cast v1, [Ljava/lang/String;

    .line 182
    .local v1, "labels":[Ljava/lang/String;
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    sget v3, Lcom/bayyari/tv/R$string;->live_subtitle_track:I

    invoke-virtual {p0, v3}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 184
    move-object v3, v1

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, v0, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda11;-><init>(Ljava/util/List;Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 189
    return-void
.end method

.method static final showSubtitleTracks$lambda$14(Ljava/util/List;Lcom/bayyari/tv/ui/live/LivePlayerActivity;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "$tracks"    # Ljava/util/List;
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;
    .param p3, "which"    # I

    .line 185
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;

    .line 186
    .local p2, "selected":Lcom/bayyari/tv/player/TrackSelector$TrackInfo;
    invoke-virtual {p1}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;->getGroupIndex()I

    move-result v1

    invoke-virtual {p2}, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;->getTrackIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bayyari/tv/player/IptvPlayer;->setSubtitleTrack(II)V

    .line 187
    return-void
.end method

.method private final toggleAspectRatio()V
    .locals 3

    .line 127
    iget v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->aspectIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x4

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->aspectIndex:I

    .line 128
    iget v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->aspectIndex:I

    packed-switch v0, :pswitch_data_0

    .line 132
    goto :goto_0

    .line 131
    :pswitch_0
    move v1, v2

    goto :goto_0

    .line 130
    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    .line 129
    :pswitch_2
    const/4 v1, 0x0

    .line 128
    :goto_0
    nop

    .line 134
    .local v1, "mode":I
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 135
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final toggleControls()V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->getVisibility()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 114
    .local v0, "visible":Z
    :goto_0
    nop

    .line 118
    iget-object v4, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    .line 114
    if-eqz v0, :cond_3

    .line 115
    if-nez v4, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    iget-object v1, v4, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->hideHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    :cond_3
    if-nez v4, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    iget-object v1, v4, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    invoke-virtual {v1, v3}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->hideHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->hideHandler:Landroid/os/Handler;

    new-instance v2, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda9;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    .line 122
    nop

    .line 120
    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    :goto_1
    return-void
.end method

.method static final toggleControls$lambda$9(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V
    .locals 2
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 121
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setVisibility(I)V

    .line 122
    return-void
.end method

.method private final toggleEpg()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->epgOverlay:Lcom/bayyari/tv/ui/common/EpgOverlayView;

    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iget-object v1, v1, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->epgOverlay:Lcom/bayyari/tv/ui/common/EpgOverlayView;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/common/EpgOverlayView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 159
    const/16 v1, 0x8

    goto :goto_1

    .line 161
    :cond_2
    const/4 v1, 0x0

    .line 158
    :goto_1
    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/common/EpgOverlayView;->setVisibility(I)V

    .line 163
    return-void
.end method


# virtual methods
.method public final getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "iptvPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNetworkUtils()Lcom/bayyari/tv/util/NetworkUtils;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->networkUtils:Lcom/bayyari/tv/util/NetworkUtils;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "networkUtils"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPrefs()Lcom/bayyari/tv/util/EncryptedPrefs;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "prefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lcom/bayyari/tv/ui/live/Hilt_LivePlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    .line 54
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 56
    new-instance v0, Landroid/content/Intent;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const-class v4, Lcom/bayyari/tv/player/PlayerService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Player;

    invoke-virtual {v0, v3}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 59
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    new-instance v3, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3}, Lcom/bayyari/tv/player/IptvPlayer;->addRetryListener(Lkotlin/jvm/functions/Function1;)V

    .line 61
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_stream_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, "streamId":I
    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getPrefs()Lcom/bayyari/tv/util/EncryptedPrefs;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bayyari/tv/util/EncryptedPrefs;->setLastChannelId(I)V

    .line 64
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getViewModel()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->load(I)V

    .line 67
    :cond_2
    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    iget-object v3, v3, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    new-instance v4, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setOnPlayPause(Lkotlin/jvm/functions/Function0;)V

    .line 72
    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    iget-object v3, v3, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    new-instance v4, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setOnAspectRatio(Lkotlin/jvm/functions/Function0;)V

    .line 73
    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5
    iget-object v3, v3, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    new-instance v4, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda3;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setOnPip(Lkotlin/jvm/functions/Function0;)V

    .line 74
    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    iget-object v3, v3, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    new-instance v4, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda4;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setOnExternal(Lkotlin/jvm/functions/Function0;)V

    .line 75
    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v3, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_7
    iget-object v3, v3, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    new-instance v4, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda5;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setOnAudioTracks(Lkotlin/jvm/functions/Function0;)V

    .line 76
    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v3, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_8
    iget-object v3, v3, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    new-instance v4, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda6;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setOnSubtitleTracks(Lkotlin/jvm/functions/Function0;)V

    .line 77
    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v3, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    iget-object v3, v3, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerControls:Lcom/bayyari/tv/ui/common/PlayerControlsView;

    new-instance v4, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda7;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/bayyari/tv/ui/common/PlayerControlsView;->setOnEpg(Lkotlin/jvm/functions/Function0;)V

    .line 79
    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_a
    iget-object v1, v3, Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;->playerView:Landroidx/media3/ui/PlayerView;

    new-instance v3, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$$ExternalSyntheticLambda8;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    invoke-virtual {v1, v3}, Landroidx/media3/ui/PlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10;

    invoke-direct {v1, p0, v2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$10;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 94
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$11;

    invoke-direct {v1, p0, v2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$11;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 100
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$12;

    invoke-direct {v1, p0, v2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity$onCreate$12;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/player/IptvPlayer;->release()V

    .line 193
    invoke-super {p0}, Lcom/bayyari/tv/ui/live/Hilt_LivePlayerActivity;->onDestroy()V

    .line 194
    return-void
.end method

.method public final setIptvPlayer(Lcom/bayyari/tv/player/IptvPlayer;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/player/IptvPlayer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    .line 37
    return-void
.end method

.method public final setNetworkUtils(Lcom/bayyari/tv/util/NetworkUtils;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/util/NetworkUtils;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->networkUtils:Lcom/bayyari/tv/util/NetworkUtils;

    .line 43
    return-void
.end method

.method public final setPrefs(Lcom/bayyari/tv/util/EncryptedPrefs;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/util/EncryptedPrefs;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    .line 40
    return-void
.end method

.class public final Lcom/bayyari/tv/ui/TvMainActivity;
.super Lcom/bayyari/tv/ui/Hilt_TvMainActivity;
.source "TvMainActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0008\u0010\u000e\u001a\u00020\u000bH\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/TvMainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "getAuthRepository",
        "()Lcom/bayyari/tv/data/repository/AuthRepository;",
        "setAuthRepository",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bayyari/tv/ui/TvMainActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "authRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget v0, Lcom/bayyari/tv/R$layout;->activity_tv_main:I

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/TvMainActivity;->setContentView(I)V

    .line 22
    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/TvMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 24
    sget v1, Lcom/bayyari/tv/R$id;->tv_container:I

    new-instance v2, Lcom/bayyari/tv/ui/home/TvHomeFragment;

    invoke-direct {v2}, Lcom/bayyari/tv/ui/home/TvHomeFragment;-><init>()V

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 27
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->onStart()V

    .line 31
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/TvMainActivity;->getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/bayyari/tv/ui/auth/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/TvMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    :cond_0
    return-void
.end method

.method public final setAuthRepository(Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/repository/AuthRepository;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/bayyari/tv/ui/TvMainActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 16
    return-void
.end method

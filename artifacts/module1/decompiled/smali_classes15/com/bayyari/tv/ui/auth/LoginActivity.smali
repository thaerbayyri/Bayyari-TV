.class public final Lcom/bayyari/tv/ui/auth/LoginActivity;
.super Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity;
.source "LoginActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/auth/LoginActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 12
    invoke-super {p0, p1}, Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    sget v0, Lcom/bayyari/tv/R$layout;->activity_login:I

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/auth/LoginActivity;->setContentView(I)V

    .line 15
    if-nez p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/auth/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 17
    sget v1, Lcom/bayyari/tv/R$id;->login_container:I

    new-instance v2, Lcom/bayyari/tv/ui/auth/LoginFragment;

    invoke-direct {v2}, Lcom/bayyari/tv/ui/auth/LoginFragment;-><init>()V

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 20
    :cond_0
    return-void
.end method

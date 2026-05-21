.class public final Lcom/bayyari/tv/di/PlayerModule_ProvideLoadControlFactory;
.super Ljava/lang/Object;
.source "PlayerModule_ProvideLoadControlFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroidx/media3/exoplayer/LoadControl;",
        ">;"
    }
.end annotation


# instance fields
.field private final prefsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bayyari/tv/di/PlayerModule_ProvideLoadControlFactory;->prefsProvider:Ldagger/internal/Provider;

    .line 34
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/di/PlayerModule_ProvideLoadControlFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
            ">;)",
            "Lcom/bayyari/tv/di/PlayerModule_ProvideLoadControlFactory;"
        }
    .end annotation

    .line 43
    .local p0, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    new-instance v0, Lcom/bayyari/tv/di/PlayerModule_ProvideLoadControlFactory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/di/PlayerModule_ProvideLoadControlFactory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideLoadControl(Lcom/bayyari/tv/util/EncryptedPrefs;)Landroidx/media3/exoplayer/LoadControl;
    .locals 1
    .param p0, "prefs"    # Lcom/bayyari/tv/util/EncryptedPrefs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefs"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/bayyari/tv/di/PlayerModule;->INSTANCE:Lcom/bayyari/tv/di/PlayerModule;

    invoke-virtual {v0, p0}, Lcom/bayyari/tv/di/PlayerModule;->provideLoadControl(Lcom/bayyari/tv/util/EncryptedPrefs;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/LoadControl;

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/media3/exoplayer/LoadControl;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bayyari/tv/di/PlayerModule_ProvideLoadControlFactory;->prefsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-static {v0}, Lcom/bayyari/tv/di/PlayerModule_ProvideLoadControlFactory;->provideLoadControl(Lcom/bayyari/tv/util/EncryptedPrefs;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/bayyari/tv/di/PlayerModule_ProvideLoadControlFactory;->get()Landroidx/media3/exoplayer/LoadControl;

    move-result-object v0

    return-object v0
.end method

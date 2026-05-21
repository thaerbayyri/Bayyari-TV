.class public final Lcom/bayyari/tv/data/api/DynamicHostInterceptor_Factory;
.super Ljava/lang/Object;
.source "DynamicHostInterceptor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/data/api/DynamicHostInterceptor;",
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

    .line 30
    .local p1, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bayyari/tv/data/api/DynamicHostInterceptor_Factory;->prefsProvider:Ldagger/internal/Provider;

    .line 32
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/data/api/DynamicHostInterceptor_Factory;
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
            "Lcom/bayyari/tv/data/api/DynamicHostInterceptor_Factory;"
        }
    .end annotation

    .line 40
    .local p0, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    new-instance v0, Lcom/bayyari/tv/data/api/DynamicHostInterceptor_Factory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/api/DynamicHostInterceptor_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/util/EncryptedPrefs;)Lcom/bayyari/tv/data/api/DynamicHostInterceptor;
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

    .line 44
    new-instance v0, Lcom/bayyari/tv/data/api/DynamicHostInterceptor;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/api/DynamicHostInterceptor;-><init>(Lcom/bayyari/tv/util/EncryptedPrefs;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/data/api/DynamicHostInterceptor;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/data/api/DynamicHostInterceptor_Factory;->prefsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-static {v0}, Lcom/bayyari/tv/data/api/DynamicHostInterceptor_Factory;->newInstance(Lcom/bayyari/tv/util/EncryptedPrefs;)Lcom/bayyari/tv/data/api/DynamicHostInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/bayyari/tv/data/api/DynamicHostInterceptor_Factory;->get()Lcom/bayyari/tv/data/api/DynamicHostInterceptor;

    move-result-object v0

    return-object v0
.end method

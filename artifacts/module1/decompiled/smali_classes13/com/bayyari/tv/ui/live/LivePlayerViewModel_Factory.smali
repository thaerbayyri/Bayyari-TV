.class public final Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;
.super Ljava/lang/Object;
.source "LivePlayerViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/ui/live/LivePlayerViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final authRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final epgRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/EpgRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final liveRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
            ">;"
        }
    .end annotation
.end field

.field private final streamUrlBuilderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/StreamUrlBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "authRepositoryProvider",
            "liveRepositoryProvider",
            "epgRepositoryProvider",
            "streamUrlBuilderProvider",
            "prefsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/EpgRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/StreamUrlBuilder;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local p3, "epgRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/EpgRepository;>;"
    .local p4, "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    .local p5, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 47
    iput-object p2, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    .line 48
    iput-object p3, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->epgRepositoryProvider:Ldagger/internal/Provider;

    .line 49
    iput-object p4, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    .line 50
    iput-object p5, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->prefsProvider:Ldagger/internal/Provider;

    .line 51
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "authRepositoryProvider",
            "liveRepositoryProvider",
            "epgRepositoryProvider",
            "streamUrlBuilderProvider",
            "prefsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/EpgRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/StreamUrlBuilder;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
            ">;)",
            "Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;"
        }
    .end annotation

    .line 62
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p1, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local p2, "epgRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/EpgRepository;>;"
    .local p3, "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    .local p4, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    new-instance v0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .end local p1    # "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .end local p2    # "epgRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/EpgRepository;>;"
    .end local p3    # "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    .end local p4    # "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    .local v1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local v2, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local v3, "epgRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/EpgRepository;>;"
    .local v4, "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    .local v5, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/util/StreamUrlBuilder;Lcom/bayyari/tv/util/EncryptedPrefs;)Lcom/bayyari/tv/ui/live/LivePlayerViewModel;
    .locals 6
    .param p0, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p1, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .param p2, "epgRepository"    # Lcom/bayyari/tv/data/repository/EpgRepository;
    .param p3, "streamUrlBuilder"    # Lcom/bayyari/tv/util/StreamUrlBuilder;
    .param p4, "prefs"    # Lcom/bayyari/tv/util/EncryptedPrefs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "authRepository",
            "liveRepository",
            "epgRepository",
            "streamUrlBuilder",
            "prefs"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "authRepository":Lcom/bayyari/tv/data/repository/AuthRepository;
    .end local p1    # "liveRepository":Lcom/bayyari/tv/data/repository/LiveRepository;
    .end local p2    # "epgRepository":Lcom/bayyari/tv/data/repository/EpgRepository;
    .end local p3    # "streamUrlBuilder":Lcom/bayyari/tv/util/StreamUrlBuilder;
    .end local p4    # "prefs":Lcom/bayyari/tv/util/EncryptedPrefs;
    .local v1, "authRepository":Lcom/bayyari/tv/data/repository/AuthRepository;
    .local v2, "liveRepository":Lcom/bayyari/tv/data/repository/LiveRepository;
    .local v3, "epgRepository":Lcom/bayyari/tv/data/repository/EpgRepository;
    .local v4, "streamUrlBuilder":Lcom/bayyari/tv/util/StreamUrlBuilder;
    .local v5, "prefs":Lcom/bayyari/tv/util/EncryptedPrefs;
    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/util/StreamUrlBuilder;Lcom/bayyari/tv/util/EncryptedPrefs;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/LiveRepository;

    iget-object v2, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->epgRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/EpgRepository;

    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bayyari/tv/util/StreamUrlBuilder;

    iget-object v4, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->prefsProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/util/StreamUrlBuilder;Lcom/bayyari/tv/util/EncryptedPrefs;)Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_Factory;->get()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    move-result-object v0

    return-object v0
.end method

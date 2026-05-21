.class public final Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;
.super Ljava/lang/Object;
.source "SettingsViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/ui/settings/SettingsViewModel;",
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

.field private final channelDaoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/ChannelDao;",
            ">;"
        }
    .end annotation
.end field

.field private final epgDaoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/EpgDao;",
            ">;"
        }
    .end annotation
.end field

.field private final movieDaoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/MovieDao;",
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

.field private final seriesDaoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/SeriesDao;",
            ">;"
        }
    .end annotation
.end field

.field private final watchHistoryDaoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "authRepositoryProvider",
            "prefsProvider",
            "channelDaoProvider",
            "movieDaoProvider",
            "seriesDaoProvider",
            "epgDaoProvider",
            "watchHistoryDaoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/ChannelDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/MovieDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/SeriesDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/EpgDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    .local p3, "channelDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/ChannelDao;>;"
    .local p4, "movieDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/MovieDao;>;"
    .local p5, "seriesDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/SeriesDao;>;"
    .local p6, "epgDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/EpgDao;>;"
    .local p7, "watchHistoryDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 53
    iput-object p2, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->prefsProvider:Ldagger/internal/Provider;

    .line 54
    iput-object p3, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->channelDaoProvider:Ldagger/internal/Provider;

    .line 55
    iput-object p4, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->movieDaoProvider:Ldagger/internal/Provider;

    .line 56
    iput-object p5, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->seriesDaoProvider:Ldagger/internal/Provider;

    .line 57
    iput-object p6, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->epgDaoProvider:Ldagger/internal/Provider;

    .line 58
    iput-object p7, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->watchHistoryDaoProvider:Ldagger/internal/Provider;

    .line 59
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "authRepositoryProvider",
            "prefsProvider",
            "channelDaoProvider",
            "movieDaoProvider",
            "seriesDaoProvider",
            "epgDaoProvider",
            "watchHistoryDaoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/ChannelDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/MovieDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/SeriesDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/EpgDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
            ">;)",
            "Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;"
        }
    .end annotation

    .line 70
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p1, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    .local p2, "channelDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/ChannelDao;>;"
    .local p3, "movieDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/MovieDao;>;"
    .local p4, "seriesDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/SeriesDao;>;"
    .local p5, "epgDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/EpgDao;>;"
    .local p6, "watchHistoryDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;>;"
    new-instance v0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p0    # "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .end local p1    # "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    .end local p2    # "channelDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/ChannelDao;>;"
    .end local p3    # "movieDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/MovieDao;>;"
    .end local p4    # "seriesDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/SeriesDao;>;"
    .end local p5    # "epgDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/EpgDao;>;"
    .end local p6    # "watchHistoryDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;>;"
    .local v1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local v2, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    .local v3, "channelDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/ChannelDao;>;"
    .local v4, "movieDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/MovieDao;>;"
    .local v5, "seriesDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/SeriesDao;>;"
    .local v6, "epgDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/EpgDao;>;"
    .local v7, "watchHistoryDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;>;"
    invoke-direct/range {v0 .. v7}, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/util/EncryptedPrefs;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/data/local/dao/MovieDao;Lcom/bayyari/tv/data/local/dao/SeriesDao;Lcom/bayyari/tv/data/local/dao/EpgDao;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)Lcom/bayyari/tv/ui/settings/SettingsViewModel;
    .locals 8
    .param p0, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p1, "prefs"    # Lcom/bayyari/tv/util/EncryptedPrefs;
    .param p2, "channelDao"    # Lcom/bayyari/tv/data/local/dao/ChannelDao;
    .param p3, "movieDao"    # Lcom/bayyari/tv/data/local/dao/MovieDao;
    .param p4, "seriesDao"    # Lcom/bayyari/tv/data/local/dao/SeriesDao;
    .param p5, "epgDao"    # Lcom/bayyari/tv/data/local/dao/EpgDao;
    .param p6, "watchHistoryDao"    # Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "authRepository",
            "prefs",
            "channelDao",
            "movieDao",
            "seriesDao",
            "epgDao",
            "watchHistoryDao"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p0    # "authRepository":Lcom/bayyari/tv/data/repository/AuthRepository;
    .end local p1    # "prefs":Lcom/bayyari/tv/util/EncryptedPrefs;
    .end local p2    # "channelDao":Lcom/bayyari/tv/data/local/dao/ChannelDao;
    .end local p3    # "movieDao":Lcom/bayyari/tv/data/local/dao/MovieDao;
    .end local p4    # "seriesDao":Lcom/bayyari/tv/data/local/dao/SeriesDao;
    .end local p5    # "epgDao":Lcom/bayyari/tv/data/local/dao/EpgDao;
    .end local p6    # "watchHistoryDao":Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .local v1, "authRepository":Lcom/bayyari/tv/data/repository/AuthRepository;
    .local v2, "prefs":Lcom/bayyari/tv/util/EncryptedPrefs;
    .local v3, "channelDao":Lcom/bayyari/tv/data/local/dao/ChannelDao;
    .local v4, "movieDao":Lcom/bayyari/tv/data/local/dao/MovieDao;
    .local v5, "seriesDao":Lcom/bayyari/tv/data/local/dao/SeriesDao;
    .local v6, "epgDao":Lcom/bayyari/tv/data/local/dao/EpgDao;
    .local v7, "watchHistoryDao":Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    invoke-direct/range {v0 .. v7}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/util/EncryptedPrefs;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/data/local/dao/MovieDao;Lcom/bayyari/tv/data/local/dao/SeriesDao;Lcom/bayyari/tv/data/local/dao/EpgDao;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/ui/settings/SettingsViewModel;
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->prefsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/bayyari/tv/util/EncryptedPrefs;

    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->channelDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/bayyari/tv/data/local/dao/ChannelDao;

    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->movieDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/bayyari/tv/data/local/dao/MovieDao;

    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->seriesDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/bayyari/tv/data/local/dao/SeriesDao;

    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->epgDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bayyari/tv/data/local/dao/EpgDao;

    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->watchHistoryDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    invoke-static/range {v1 .. v7}, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/util/EncryptedPrefs;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/data/local/dao/MovieDao;Lcom/bayyari/tv/data/local/dao/SeriesDao;Lcom/bayyari/tv/data/local/dao/EpgDao;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/settings/SettingsViewModel_Factory;->get()Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;
.super Ljava/lang/Object;
.source "HomeViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/ui/home/HomeViewModel;",
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

.field private final liveRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final movieRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final seriesRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/SeriesRepository;",
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
            "movieRepositoryProvider",
            "seriesRepositoryProvider",
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
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/SeriesRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local p3, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    .local p4, "seriesRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/SeriesRepository;>;"
    .local p5, "watchHistoryDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 48
    iput-object p2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    .line 49
    iput-object p3, p0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->movieRepositoryProvider:Ldagger/internal/Provider;

    .line 50
    iput-object p4, p0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->seriesRepositoryProvider:Ldagger/internal/Provider;

    .line 51
    iput-object p5, p0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->watchHistoryDaoProvider:Ldagger/internal/Provider;

    .line 52
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;
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
            "movieRepositoryProvider",
            "seriesRepositoryProvider",
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
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/SeriesRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
            ">;)",
            "Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;"
        }
    .end annotation

    .line 64
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p1, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local p2, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    .local p3, "seriesRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/SeriesRepository;>;"
    .local p4, "watchHistoryDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;>;"
    new-instance v0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .end local p1    # "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .end local p2    # "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    .end local p3    # "seriesRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/SeriesRepository;>;"
    .end local p4    # "watchHistoryDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;>;"
    .local v1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local v2, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local v3, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    .local v4, "seriesRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/SeriesRepository;>;"
    .local v5, "watchHistoryDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;>;"
    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)Lcom/bayyari/tv/ui/home/HomeViewModel;
    .locals 6
    .param p0, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p1, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .param p2, "movieRepository"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .param p3, "seriesRepository"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
    .param p4, "watchHistoryDao"    # Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
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
            "movieRepository",
            "seriesRepository",
            "watchHistoryDao"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/bayyari/tv/ui/home/HomeViewModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "authRepository":Lcom/bayyari/tv/data/repository/AuthRepository;
    .end local p1    # "liveRepository":Lcom/bayyari/tv/data/repository/LiveRepository;
    .end local p2    # "movieRepository":Lcom/bayyari/tv/data/repository/MovieRepository;
    .end local p3    # "seriesRepository":Lcom/bayyari/tv/data/repository/SeriesRepository;
    .end local p4    # "watchHistoryDao":Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .local v1, "authRepository":Lcom/bayyari/tv/data/repository/AuthRepository;
    .local v2, "liveRepository":Lcom/bayyari/tv/data/repository/LiveRepository;
    .local v3, "movieRepository":Lcom/bayyari/tv/data/repository/MovieRepository;
    .local v4, "seriesRepository":Lcom/bayyari/tv/data/repository/SeriesRepository;
    .local v5, "watchHistoryDao":Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/ui/home/HomeViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/ui/home/HomeViewModel;
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v1, p0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/LiveRepository;

    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/MovieRepository;

    iget-object v3, p0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->seriesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bayyari/tv/data/repository/SeriesRepository;

    iget-object v4, p0, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->watchHistoryDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)Lcom/bayyari/tv/ui/home/HomeViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/HomeViewModel_Factory;->get()Lcom/bayyari/tv/ui/home/HomeViewModel;

    move-result-object v0

    return-object v0
.end method

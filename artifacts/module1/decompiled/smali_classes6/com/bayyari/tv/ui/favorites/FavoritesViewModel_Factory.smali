.class public final Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;
.super Ljava/lang/Object;
.source "FavoritesViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;",
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

.field private final favoriteDaoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
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
            "favoriteDaoProvider",
            "liveRepositoryProvider",
            "movieRepositoryProvider",
            "seriesRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/SeriesRepository;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "favoriteDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/FavoriteDao;>;"
    .local p3, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local p4, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    .local p5, "seriesRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/SeriesRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 47
    iput-object p2, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->favoriteDaoProvider:Ldagger/internal/Provider;

    .line 48
    iput-object p3, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    .line 49
    iput-object p4, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->movieRepositoryProvider:Ldagger/internal/Provider;

    .line 50
    iput-object p5, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->seriesRepositoryProvider:Ldagger/internal/Provider;

    .line 51
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;
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
            "favoriteDaoProvider",
            "liveRepositoryProvider",
            "movieRepositoryProvider",
            "seriesRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/SeriesRepository;",
            ">;)",
            "Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;"
        }
    .end annotation

    .line 62
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p1, "favoriteDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/FavoriteDao;>;"
    .local p2, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local p3, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    .local p4, "seriesRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/SeriesRepository;>;"
    new-instance v0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .end local p1    # "favoriteDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/FavoriteDao;>;"
    .end local p2    # "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .end local p3    # "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    .end local p4    # "seriesRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/SeriesRepository;>;"
    .local v1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local v2, "favoriteDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/FavoriteDao;>;"
    .local v3, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local v4, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    .local v5, "seriesRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/SeriesRepository;>;"
    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;
    .locals 6
    .param p0, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p1, "favoriteDao"    # Lcom/bayyari/tv/data/local/dao/FavoriteDao;
    .param p2, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .param p3, "movieRepository"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .param p4, "seriesRepository"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
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
            "favoriteDao",
            "liveRepository",
            "movieRepository",
            "seriesRepository"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "authRepository":Lcom/bayyari/tv/data/repository/AuthRepository;
    .end local p1    # "favoriteDao":Lcom/bayyari/tv/data/local/dao/FavoriteDao;
    .end local p2    # "liveRepository":Lcom/bayyari/tv/data/repository/LiveRepository;
    .end local p3    # "movieRepository":Lcom/bayyari/tv/data/repository/MovieRepository;
    .end local p4    # "seriesRepository":Lcom/bayyari/tv/data/repository/SeriesRepository;
    .local v1, "authRepository":Lcom/bayyari/tv/data/repository/AuthRepository;
    .local v2, "favoriteDao":Lcom/bayyari/tv/data/local/dao/FavoriteDao;
    .local v3, "liveRepository":Lcom/bayyari/tv/data/repository/LiveRepository;
    .local v4, "movieRepository":Lcom/bayyari/tv/data/repository/MovieRepository;
    .local v5, "seriesRepository":Lcom/bayyari/tv/data/repository/SeriesRepository;
    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v1, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->favoriteDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    iget-object v2, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/LiveRepository;

    iget-object v3, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bayyari/tv/data/repository/MovieRepository;

    iget-object v4, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->seriesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bayyari/tv/data/repository/SeriesRepository;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_Factory;->get()Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    move-result-object v0

    return-object v0
.end method

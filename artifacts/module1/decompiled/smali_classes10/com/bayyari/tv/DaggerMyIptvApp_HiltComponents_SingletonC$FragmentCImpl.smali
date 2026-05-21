.class final Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;
.super Lcom/bayyari/tv/MyIptvApp_HiltComponents$FragmentC;
.source "DaggerMyIptvApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final fragmentCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;

.field private final singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;
    .param p4, "fragmentParam"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentParam"
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Lcom/bayyari/tv/MyIptvApp_HiltComponents$FragmentC;-><init>()V

    .line 451
    iput-object p0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;

    .line 455
    iput-object p1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 456
    iput-object p2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 457
    iput-object p3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 460
    return-void
.end method

.method private injectAddServerFragment2(Lcom/bayyari/tv/ui/auth/AddServerFragment;)Lcom/bayyari/tv/ui/auth/AddServerFragment;
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/ui/auth/AddServerFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/auth/AddServerFragment_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/auth/AddServerFragment;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 559
    return-object p1
.end method

.method private injectEpgFragment2(Lcom/bayyari/tv/ui/live/EpgFragment;)Lcom/bayyari/tv/ui/live/EpgFragment;
    .locals 1
    .param p1, "instance2"    # Lcom/bayyari/tv/ui/live/EpgFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance2"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/live/EpgFragment;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 565
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->epgRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/EpgRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;->injectEpgRepository(Lcom/bayyari/tv/ui/live/EpgFragment;Lcom/bayyari/tv/data/repository/EpgRepository;)V

    .line 566
    return-object p1
.end method

.method private injectLiveFragment2(Lcom/bayyari/tv/ui/live/LiveFragment;)Lcom/bayyari/tv/ui/live/LiveFragment;
    .locals 1
    .param p1, "instance3"    # Lcom/bayyari/tv/ui/live/LiveFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance3"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->favoriteDao()Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;->injectFavoriteDao(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/data/local/dao/FavoriteDao;)V

    .line 572
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 573
    return-object p1
.end method

.method private injectServerManagerFragment2(Lcom/bayyari/tv/ui/settings/ServerManagerFragment;)Lcom/bayyari/tv/ui/settings/ServerManagerFragment;
    .locals 1
    .param p1, "instance4"    # Lcom/bayyari/tv/ui/settings/ServerManagerFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance4"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/settings/ServerManagerFragment_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/settings/ServerManagerFragment;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 579
    return-object p1
.end method


# virtual methods
.method public getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public injectAddServerFragment(Lcom/bayyari/tv/ui/auth/AddServerFragment;)V
    .locals 0
    .param p1, "addServerFragment"    # Lcom/bayyari/tv/ui/auth/AddServerFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addServerFragment"
        }
    .end annotation

    .line 464
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->injectAddServerFragment2(Lcom/bayyari/tv/ui/auth/AddServerFragment;)Lcom/bayyari/tv/ui/auth/AddServerFragment;

    .line 465
    return-void
.end method

.method public injectCatchUpFragment(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;)V
    .locals 0
    .param p1, "catchUpFragment"    # Lcom/bayyari/tv/ui/catchup/CatchUpFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "catchUpFragment"
        }
    .end annotation

    .line 473
    return-void
.end method

.method public injectEpgFragment(Lcom/bayyari/tv/ui/live/EpgFragment;)V
    .locals 0
    .param p1, "epgFragment"    # Lcom/bayyari/tv/ui/live/EpgFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgFragment"
        }
    .end annotation

    .line 489
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->injectEpgFragment2(Lcom/bayyari/tv/ui/live/EpgFragment;)Lcom/bayyari/tv/ui/live/EpgFragment;

    .line 490
    return-void
.end method

.method public injectFavoritesFragment(Lcom/bayyari/tv/ui/favorites/FavoritesFragment;)V
    .locals 0
    .param p1, "favoritesFragment"    # Lcom/bayyari/tv/ui/favorites/FavoritesFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "favoritesFragment"
        }
    .end annotation

    .line 477
    return-void
.end method

.method public injectHomeFragment(Lcom/bayyari/tv/ui/home/HomeFragment;)V
    .locals 0
    .param p1, "homeFragment"    # Lcom/bayyari/tv/ui/home/HomeFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFragment"
        }
    .end annotation

    .line 481
    return-void
.end method

.method public injectLiveFragment(Lcom/bayyari/tv/ui/live/LiveFragment;)V
    .locals 0
    .param p1, "liveFragment"    # Lcom/bayyari/tv/ui/live/LiveFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liveFragment"
        }
    .end annotation

    .line 494
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->injectLiveFragment2(Lcom/bayyari/tv/ui/live/LiveFragment;)Lcom/bayyari/tv/ui/live/LiveFragment;

    .line 495
    return-void
.end method

.method public injectLoginFragment(Lcom/bayyari/tv/ui/auth/LoginFragment;)V
    .locals 0
    .param p1, "loginFragment"    # Lcom/bayyari/tv/ui/auth/LoginFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginFragment"
        }
    .end annotation

    .line 469
    return-void
.end method

.method public injectMovieDetailFragment(Lcom/bayyari/tv/ui/movies/MovieDetailFragment;)V
    .locals 0
    .param p1, "movieDetailFragment"    # Lcom/bayyari/tv/ui/movies/MovieDetailFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movieDetailFragment"
        }
    .end annotation

    .line 503
    return-void
.end method

.method public injectMovieFragment(Lcom/bayyari/tv/ui/movies/MovieFragment;)V
    .locals 0
    .param p1, "movieFragment"    # Lcom/bayyari/tv/ui/movies/MovieFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movieFragment"
        }
    .end annotation

    .line 507
    return-void
.end method

.method public injectSearchFragment(Lcom/bayyari/tv/ui/search/SearchFragment;)V
    .locals 0
    .param p1, "searchFragment"    # Lcom/bayyari/tv/ui/search/SearchFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchFragment"
        }
    .end annotation

    .line 515
    return-void
.end method

.method public injectSearchResultsFragment(Lcom/bayyari/tv/ui/search/SearchResultsFragment;)V
    .locals 0
    .param p1, "searchResultsFragment"    # Lcom/bayyari/tv/ui/search/SearchResultsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchResultsFragment"
        }
    .end annotation

    .line 519
    return-void
.end method

.method public injectSeasonFragment(Lcom/bayyari/tv/ui/series/SeasonFragment;)V
    .locals 0
    .param p1, "seasonFragment"    # Lcom/bayyari/tv/ui/series/SeasonFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seasonFragment"
        }
    .end annotation

    .line 523
    return-void
.end method

.method public injectSeriesDetailFragment(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;)V
    .locals 0
    .param p1, "seriesDetailFragment"    # Lcom/bayyari/tv/ui/series/SeriesDetailFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seriesDetailFragment"
        }
    .end annotation

    .line 527
    return-void
.end method

.method public injectSeriesFragment(Lcom/bayyari/tv/ui/series/SeriesFragment;)V
    .locals 0
    .param p1, "seriesFragment"    # Lcom/bayyari/tv/ui/series/SeriesFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seriesFragment"
        }
    .end annotation

    .line 531
    return-void
.end method

.method public injectServerManagerFragment(Lcom/bayyari/tv/ui/settings/ServerManagerFragment;)V
    .locals 0
    .param p1, "serverManagerFragment"    # Lcom/bayyari/tv/ui/settings/ServerManagerFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverManagerFragment"
        }
    .end annotation

    .line 539
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->injectServerManagerFragment2(Lcom/bayyari/tv/ui/settings/ServerManagerFragment;)Lcom/bayyari/tv/ui/settings/ServerManagerFragment;

    .line 540
    return-void
.end method

.method public injectSettingsFragment(Lcom/bayyari/tv/ui/settings/SettingsFragment;)V
    .locals 0
    .param p1, "settingsFragment"    # Lcom/bayyari/tv/ui/settings/SettingsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingsFragment"
        }
    .end annotation

    .line 544
    return-void
.end method

.method public injectTvHomeFragment(Lcom/bayyari/tv/ui/home/TvHomeFragment;)V
    .locals 0
    .param p1, "tvHomeFragment"    # Lcom/bayyari/tv/ui/home/TvHomeFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvHomeFragment"
        }
    .end annotation

    .line 485
    return-void
.end method

.method public injectTvLiveFragment(Lcom/bayyari/tv/ui/live/TvLiveFragment;)V
    .locals 0
    .param p1, "tvLiveFragment"    # Lcom/bayyari/tv/ui/live/TvLiveFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvLiveFragment"
        }
    .end annotation

    .line 499
    return-void
.end method

.method public injectTvMovieFragment(Lcom/bayyari/tv/ui/movies/TvMovieFragment;)V
    .locals 0
    .param p1, "tvMovieFragment"    # Lcom/bayyari/tv/ui/movies/TvMovieFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvMovieFragment"
        }
    .end annotation

    .line 511
    return-void
.end method

.method public injectTvSeriesFragment(Lcom/bayyari/tv/ui/series/TvSeriesFragment;)V
    .locals 0
    .param p1, "tvSeriesFragment"    # Lcom/bayyari/tv/ui/series/TvSeriesFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvSeriesFragment"
        }
    .end annotation

    .line 535
    return-void
.end method

.method public viewWithFragmentComponentBuilder()Ldagger/hilt/android/internal/builders/ViewWithFragmentComponentBuilder;
    .locals 6

    .line 553
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v4, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method

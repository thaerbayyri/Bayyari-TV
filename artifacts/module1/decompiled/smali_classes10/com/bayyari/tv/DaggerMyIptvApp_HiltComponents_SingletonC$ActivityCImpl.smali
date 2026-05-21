.class final Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;
.super Lcom/bayyari/tv/MyIptvApp_HiltComponents$ActivityC;
.source "DaggerMyIptvApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroid/app/Activity;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityParam"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityParam"
        }
    .end annotation

    .line 610
    invoke-direct {p0}, Lcom/bayyari/tv/MyIptvApp_HiltComponents$ActivityC;-><init>()V

    .line 607
    iput-object p0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 611
    iput-object p1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 612
    iput-object p2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 615
    return-void
.end method

.method private injectCatchUpPlayerActivity2(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;)Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;
    .locals 1
    .param p1, "instance3"    # Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance3"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 720
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 721
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/StreamUrlBuilder;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->injectStreamUrlBuilder(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/util/StreamUrlBuilder;)V

    .line 722
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->networkUtilsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/NetworkUtils;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->injectNetworkUtils(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/util/NetworkUtils;)V

    .line 723
    return-object p1
.end method

.method private injectEpisodePlayerActivity2(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;)Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;
    .locals 1
    .param p1, "instance8"    # Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance8"
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 761
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 762
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/StreamUrlBuilder;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectStreamUrlBuilder(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/util/StreamUrlBuilder;)V

    .line 763
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->watchHistoryRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectWatchHistoryRepository(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)V

    .line 764
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->networkUtilsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/NetworkUtils;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectNetworkUtils(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/util/NetworkUtils;)V

    .line 765
    return-object p1
.end method

.method private injectLivePlayerActivity2(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lcom/bayyari/tv/ui/live/LivePlayerActivity;
    .locals 1
    .param p1, "instance4"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance4"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 729
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->encryptedPrefsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->injectPrefs(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lcom/bayyari/tv/util/EncryptedPrefs;)V

    .line 730
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->networkUtilsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/NetworkUtils;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->injectNetworkUtils(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lcom/bayyari/tv/util/NetworkUtils;)V

    .line 731
    return-object p1
.end method

.method private injectMainActivity2(Lcom/bayyari/tv/ui/MainActivity;)Lcom/bayyari/tv/ui/MainActivity;
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/ui/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/MainActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 707
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->provideCrashReporterProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/CrashReporter;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;->injectCrashReporter(Lcom/bayyari/tv/ui/MainActivity;Lcom/bayyari/tv/util/CrashReporter;)V

    .line 708
    return-object p1
.end method

.method private injectMoviePlayerActivity2(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;)Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;
    .locals 1
    .param p1, "instance6"    # Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance6"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 743
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 744
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/StreamUrlBuilder;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity_MembersInjector;->injectStreamUrlBuilder(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;Lcom/bayyari/tv/util/StreamUrlBuilder;)V

    .line 745
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->watchHistoryRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity_MembersInjector;->injectWatchHistoryRepository(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)V

    .line 746
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->networkUtilsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/NetworkUtils;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity_MembersInjector;->injectNetworkUtils(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;Lcom/bayyari/tv/util/NetworkUtils;)V

    .line 747
    return-object p1
.end method

.method private injectTvLivePlayerActivity2(Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;)Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;
    .locals 1
    .param p1, "instance5"    # Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance5"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 737
    return-object p1
.end method

.method private injectTvMainActivity2(Lcom/bayyari/tv/ui/TvMainActivity;)Lcom/bayyari/tv/ui/TvMainActivity;
    .locals 1
    .param p1, "instance2"    # Lcom/bayyari/tv/ui/TvMainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance2"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/TvMainActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/TvMainActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 714
    return-object p1
.end method

.method private injectTvMoviePlayerActivity2(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;)Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;
    .locals 1
    .param p1, "instance7"    # Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance7"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 753
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 754
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/StreamUrlBuilder;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->injectStreamUrlBuilder(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;Lcom/bayyari/tv/util/StreamUrlBuilder;)V

    .line 755
    return-object p1
.end method


# virtual methods
.method public fragmentComponentBuilder()Ldagger/hilt/android/internal/builders/FragmentComponentBuilder;
    .locals 5

    .line 696
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method

.method public getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;
    .locals 5

    .line 681
    invoke-virtual {p0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->getViewModelKeys()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC-IA;)V

    invoke-static {v0, v1}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories_InternalFactoryFactory_Factory;->newInstance(Ljava/util/Map;Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;)Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelComponentBuilder()Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;
    .locals 4

    .line 691
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method

.method public getViewModelKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 686
    invoke-virtual {p0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->keySetMapOfClassOfAndBooleanBuilder()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/LazyClassKeyMap;->of(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public injectCatchUpPlayerActivity(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;)V
    .locals 0
    .param p1, "catchUpPlayerActivity"    # Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "catchUpPlayerActivity"
        }
    .end annotation

    .line 651
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->injectCatchUpPlayerActivity2(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;)Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;

    .line 652
    return-void
.end method

.method public injectEpisodePlayerActivity(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;)V
    .locals 0
    .param p1, "episodePlayerActivity"    # Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "episodePlayerActivity"
        }
    .end annotation

    .line 676
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->injectEpisodePlayerActivity2(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;)Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    .line 677
    return-void
.end method

.method public injectLivePlayerActivity(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V
    .locals 0
    .param p1, "livePlayerActivity"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "livePlayerActivity"
        }
    .end annotation

    .line 656
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->injectLivePlayerActivity2(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    .line 657
    return-void
.end method

.method public injectLoginActivity(Lcom/bayyari/tv/ui/auth/LoginActivity;)V
    .locals 0
    .param p1, "loginActivity"    # Lcom/bayyari/tv/ui/auth/LoginActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginActivity"
        }
    .end annotation

    .line 647
    return-void
.end method

.method public injectMainActivity(Lcom/bayyari/tv/ui/MainActivity;)V
    .locals 0
    .param p1, "mainActivity"    # Lcom/bayyari/tv/ui/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainActivity"
        }
    .end annotation

    .line 637
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->injectMainActivity2(Lcom/bayyari/tv/ui/MainActivity;)Lcom/bayyari/tv/ui/MainActivity;

    .line 638
    return-void
.end method

.method public injectMoviePlayerActivity(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;)V
    .locals 0
    .param p1, "moviePlayerActivity"    # Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moviePlayerActivity"
        }
    .end annotation

    .line 666
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->injectMoviePlayerActivity2(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;)Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;

    .line 667
    return-void
.end method

.method public injectTvLivePlayerActivity(Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;)V
    .locals 0
    .param p1, "tvLivePlayerActivity"    # Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvLivePlayerActivity"
        }
    .end annotation

    .line 661
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->injectTvLivePlayerActivity2(Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;)Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;

    .line 662
    return-void
.end method

.method public injectTvMainActivity(Lcom/bayyari/tv/ui/TvMainActivity;)V
    .locals 0
    .param p1, "tvMainActivity"    # Lcom/bayyari/tv/ui/TvMainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvMainActivity"
        }
    .end annotation

    .line 642
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->injectTvMainActivity2(Lcom/bayyari/tv/ui/TvMainActivity;)Lcom/bayyari/tv/ui/TvMainActivity;

    .line 643
    return-void
.end method

.method public injectTvMoviePlayerActivity(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;)V
    .locals 0
    .param p1, "tvMoviePlayerActivity"    # Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvMoviePlayerActivity"
        }
    .end annotation

    .line 671
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->injectTvMoviePlayerActivity2(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;)Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;

    .line 672
    return-void
.end method

.method keySetMapOfClassOfAndBooleanBuilder()Lcom/google/common/collect/ImmutableMap;
    .locals 3

    .line 618
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 619
    .local v0, "mapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;
    sget-object v1, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 620
    sget-object v1, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 621
    sget-object v1, Lcom/bayyari/tv/ui/home/HomeViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/home/HomeViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 622
    sget-object v1, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 623
    sget-object v1, Lcom/bayyari/tv/ui/live/LiveViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/live/LiveViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 624
    sget-object v1, Lcom/bayyari/tv/ui/auth/LoginViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/auth/LoginViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 625
    sget-object v1, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 626
    sget-object v1, Lcom/bayyari/tv/ui/movies/MovieViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/movies/MovieViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 627
    sget-object v1, Lcom/bayyari/tv/ui/search/SearchViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/search/SearchViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 628
    sget-object v1, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 629
    sget-object v1, Lcom/bayyari/tv/ui/series/SeriesViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/series/SeriesViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 630
    sget-object v1, Lcom/bayyari/tv/ui/settings/SettingsViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/settings/SettingsViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 631
    sget-object v1, Lcom/bayyari/tv/ui/home/TvHomeViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lcom/bayyari/tv/ui/home/TvHomeViewModel_HiltModules$KeyModule;->provide()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 632
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method public viewComponentBuilder()Ldagger/hilt/android/internal/builders/ViewComponentBuilder;
    .locals 5

    .line 701
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCBuilder;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;->activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCBuilder;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method

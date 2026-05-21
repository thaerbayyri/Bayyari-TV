.class final Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "DaggerMyIptvApp_HiltComponents_SingletonC.java"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchingProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final id:I

.field private final singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

.field private final viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "viewModelCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;
    .param p4, "id"    # I
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
            "viewModelCImpl",
            "id"
        }
    .end annotation

    .line 879
    .local p0, "this":Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;, "Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput-object p1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 881
    iput-object p2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 882
    iput-object p3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    .line 883
    iput p4, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->id:I

    .line 884
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 889
    .local p0, "this":Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;, "Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider<TT;>;"
    iget v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->id:I

    packed-switch v0, :pswitch_data_0

    .line 929
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->id:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 927
    :pswitch_0
    new-instance v0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/LiveRepository;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v3, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bayyari/tv/data/repository/MovieRepository;

    iget-object v4, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v4, v4, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->seriesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bayyari/tv/data/repository/SeriesRepository;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V

    return-object v0

    .line 924
    :pswitch_1
    new-instance v5, Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->encryptedPrefsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/bayyari/tv/util/EncryptedPrefs;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->channelDao()Lcom/bayyari/tv/data/local/dao/ChannelDao;

    move-result-object v8

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->movieDao()Lcom/bayyari/tv/data/local/dao/MovieDao;

    move-result-object v9

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->seriesDao()Lcom/bayyari/tv/data/local/dao/SeriesDao;

    move-result-object v10

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->epgDao()Lcom/bayyari/tv/data/local/dao/EpgDao;

    move-result-object v11

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->watchHistoryDao()Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    move-result-object v12

    invoke-direct/range {v5 .. v12}, Lcom/bayyari/tv/ui/settings/SettingsViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/util/EncryptedPrefs;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/data/local/dao/MovieDao;Lcom/bayyari/tv/data/local/dao/SeriesDao;Lcom/bayyari/tv/data/local/dao/EpgDao;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V

    return-object v5

    .line 921
    :pswitch_2
    new-instance v0, Lcom/bayyari/tv/ui/series/SeriesViewModel;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->seriesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/SeriesRepository;

    invoke-direct {v0, v1, v2}, Lcom/bayyari/tv/ui/series/SeriesViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V

    return-object v0

    .line 918
    :pswitch_3
    new-instance v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->seriesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/SeriesRepository;

    invoke-direct {v0, v1, v2}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V

    return-object v0

    .line 915
    :pswitch_4
    new-instance v0, Lcom/bayyari/tv/ui/search/SearchViewModel;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v2}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->searchUseCase()Lcom/bayyari/tv/domain/usecase/SearchUseCase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bayyari/tv/ui/search/SearchViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/domain/usecase/SearchUseCase;)V

    return-object v0

    .line 912
    :pswitch_5
    new-instance v0, Lcom/bayyari/tv/ui/movies/MovieViewModel;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/MovieRepository;

    invoke-direct {v0, v1, v2}, Lcom/bayyari/tv/ui/movies/MovieViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/MovieRepository;)V

    return-object v0

    .line 909
    :pswitch_6
    new-instance v0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/MovieRepository;

    invoke-direct {v0, v1, v2}, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/MovieRepository;)V

    return-object v0

    .line 906
    :pswitch_7
    new-instance v0, Lcom/bayyari/tv/ui/auth/LoginViewModel;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->loginUseCase()Lcom/bayyari/tv/domain/usecase/LoginUseCase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bayyari/tv/ui/auth/LoginViewModel;-><init>(Lcom/bayyari/tv/domain/usecase/LoginUseCase;)V

    return-object v0

    .line 903
    :pswitch_8
    new-instance v0, Lcom/bayyari/tv/ui/live/LiveViewModel;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-direct {v0, v1, v2}, Lcom/bayyari/tv/ui/live/LiveViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)V

    return-object v0

    .line 900
    :pswitch_9
    new-instance v3, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/bayyari/tv/data/repository/LiveRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->epgRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bayyari/tv/data/repository/EpgRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/bayyari/tv/util/StreamUrlBuilder;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->encryptedPrefsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-direct/range {v3 .. v8}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/util/StreamUrlBuilder;Lcom/bayyari/tv/util/EncryptedPrefs;)V

    return-object v3

    .line 897
    :pswitch_a
    new-instance v4, Lcom/bayyari/tv/ui/home/HomeViewModel;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bayyari/tv/data/repository/LiveRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/bayyari/tv/data/repository/MovieRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->seriesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/bayyari/tv/data/repository/SeriesRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->watchHistoryDao()Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/bayyari/tv/ui/home/HomeViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V

    return-object v4

    .line 894
    :pswitch_b
    new-instance v5, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->favoriteDao()Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    move-result-object v7

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/bayyari/tv/data/repository/LiveRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/bayyari/tv/data/repository/MovieRepository;

    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->seriesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/bayyari/tv/data/repository/SeriesRepository;

    invoke-direct/range {v5 .. v10}, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V

    return-object v5

    .line 891
    :pswitch_c
    new-instance v0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->getCatchUpUseCase()Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;-><init>(Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

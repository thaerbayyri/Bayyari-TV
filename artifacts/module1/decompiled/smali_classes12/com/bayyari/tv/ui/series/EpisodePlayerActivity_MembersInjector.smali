.class public final Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;
.super Ljava/lang/Object;
.source "EpisodePlayerActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;",
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

.field private final iptvPlayerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/player/IptvPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final networkUtilsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/NetworkUtils;",
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

.field private final watchHistoryRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;",
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
            "iptvPlayerProvider",
            "authRepositoryProvider",
            "streamUrlBuilderProvider",
            "watchHistoryRepositoryProvider",
            "networkUtilsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/player/IptvPlayer;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/StreamUrlBuilder;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/NetworkUtils;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    .local p2, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p3, "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    .local p4, "watchHistoryRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/WatchHistoryRepository;>;"
    .local p5, "networkUtilsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/NetworkUtils;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->iptvPlayerProvider:Ldagger/internal/Provider;

    .line 47
    iput-object p2, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 48
    iput-object p3, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    .line 49
    iput-object p4, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->watchHistoryRepositoryProvider:Ldagger/internal/Provider;

    .line 50
    iput-object p5, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->networkUtilsProvider:Ldagger/internal/Provider;

    .line 51
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
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
            "iptvPlayerProvider",
            "authRepositoryProvider",
            "streamUrlBuilderProvider",
            "watchHistoryRepositoryProvider",
            "networkUtilsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/player/IptvPlayer;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/StreamUrlBuilder;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/NetworkUtils;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;",
            ">;"
        }
    .end annotation

    .line 67
    .local p0, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    .local p3, "watchHistoryRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/WatchHistoryRepository;>;"
    .local p4, "networkUtilsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/NetworkUtils;>;"
    new-instance v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    .end local p1    # "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .end local p2    # "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    .end local p3    # "watchHistoryRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/WatchHistoryRepository;>;"
    .end local p4    # "networkUtilsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/NetworkUtils;>;"
    .local v1, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    .local v2, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local v3, "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    .local v4, "watchHistoryRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/WatchHistoryRepository;>;"
    .local v5, "networkUtilsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/NetworkUtils;>;"
    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAuthRepository(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "authRepository"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 79
    return-void
.end method

.method public static injectIptvPlayer(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;
    .param p1, "iptvPlayer"    # Lcom/bayyari/tv/player/IptvPlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "iptvPlayer"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    .line 73
    return-void
.end method

.method public static injectNetworkUtils(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/util/NetworkUtils;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;
    .param p1, "networkUtils"    # Lcom/bayyari/tv/util/NetworkUtils;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "networkUtils"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->networkUtils:Lcom/bayyari/tv/util/NetworkUtils;

    .line 96
    return-void
.end method

.method public static injectStreamUrlBuilder(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/util/StreamUrlBuilder;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;
    .param p1, "streamUrlBuilder"    # Lcom/bayyari/tv/util/StreamUrlBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "streamUrlBuilder"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;

    .line 85
    return-void
.end method

.method public static injectWatchHistoryRepository(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;
    .param p1, "watchHistoryRepository"    # Lcom/bayyari/tv/data/repository/WatchHistoryRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "watchHistoryRepository"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->watchHistoryRepository:Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    .line 91
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;)V
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 56
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 57
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/StreamUrlBuilder;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectStreamUrlBuilder(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/util/StreamUrlBuilder;)V

    .line 58
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->watchHistoryRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectWatchHistoryRepository(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)V

    .line 59
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->networkUtilsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/NetworkUtils;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectNetworkUtils(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lcom/bayyari/tv/util/NetworkUtils;)V

    .line 60
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 15
    check-cast p1, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    invoke-virtual {p0, p1}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity_MembersInjector;->injectMembers(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;)V

    return-void
.end method

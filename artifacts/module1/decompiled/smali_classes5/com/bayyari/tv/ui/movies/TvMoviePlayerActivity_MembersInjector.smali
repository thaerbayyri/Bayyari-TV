.class public final Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;
.super Ljava/lang/Object;
.source "TvMoviePlayerActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;",
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
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "iptvPlayerProvider",
            "authRepositoryProvider",
            "streamUrlBuilderProvider"
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
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    .local p2, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p3, "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->iptvPlayerProvider:Ldagger/internal/Provider;

    .line 39
    iput-object p2, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 40
    iput-object p3, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    .line 41
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "iptvPlayerProvider",
            "authRepositoryProvider",
            "streamUrlBuilderProvider"
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
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;",
            ">;"
        }
    .end annotation

    .line 53
    .local p0, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    new-instance v0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAuthRepository(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;
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

    .line 64
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 65
    return-void
.end method

.method public static injectIptvPlayer(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;
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

    .line 58
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    .line 59
    return-void
.end method

.method public static injectStreamUrlBuilder(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;Lcom/bayyari/tv/util/StreamUrlBuilder;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;
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

    .line 70
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;

    .line 71
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;)V
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 46
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 47
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/StreamUrlBuilder;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->injectStreamUrlBuilder(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;Lcom/bayyari/tv/util/StreamUrlBuilder;)V

    .line 48
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

    .line 13
    check-cast p1, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;

    invoke-virtual {p0, p1}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity_MembersInjector;->injectMembers(Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;)V

    return-void
.end method

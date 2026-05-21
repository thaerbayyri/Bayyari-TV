.class public final Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;
.super Ljava/lang/Object;
.source "CatchUpPlayerActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;",
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


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "iptvPlayerProvider",
            "authRepositoryProvider",
            "streamUrlBuilderProvider",
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
            "Lcom/bayyari/tv/util/NetworkUtils;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    .local p2, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p3, "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    .local p4, "networkUtilsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/NetworkUtils;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->iptvPlayerProvider:Ldagger/internal/Provider;

    .line 43
    iput-object p2, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 44
    iput-object p3, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    .line 45
    iput-object p4, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->networkUtilsProvider:Ldagger/internal/Provider;

    .line 46
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "iptvPlayerProvider",
            "authRepositoryProvider",
            "streamUrlBuilderProvider",
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
            "Lcom/bayyari/tv/util/NetworkUtils;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;",
            ">;"
        }
    .end annotation

    .line 60
    .local p0, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "streamUrlBuilderProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/StreamUrlBuilder;>;"
    .local p3, "networkUtilsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/NetworkUtils;>;"
    new-instance v0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAuthRepository(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;
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

    .line 71
    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 72
    return-void
.end method

.method public static injectIptvPlayer(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;
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

    .line 65
    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    .line 66
    return-void
.end method

.method public static injectNetworkUtils(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/util/NetworkUtils;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;
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

    .line 82
    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;->networkUtils:Lcom/bayyari/tv/util/NetworkUtils;

    .line 83
    return-void
.end method

.method public static injectStreamUrlBuilder(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/util/StreamUrlBuilder;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;
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

    .line 77
    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;->streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;

    .line 78
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;)V
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 51
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 52
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->streamUrlBuilderProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/StreamUrlBuilder;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->injectStreamUrlBuilder(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/util/StreamUrlBuilder;)V

    .line 53
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->networkUtilsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/NetworkUtils;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->injectNetworkUtils(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;Lcom/bayyari/tv/util/NetworkUtils;)V

    .line 54
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

    .line 14
    check-cast p1, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;

    invoke-virtual {p0, p1}, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity_MembersInjector;->injectMembers(Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;)V

    return-void
.end method

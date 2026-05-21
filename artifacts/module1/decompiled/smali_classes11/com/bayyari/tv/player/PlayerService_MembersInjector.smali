.class public final Lcom/bayyari/tv/player/PlayerService_MembersInjector;
.super Ljava/lang/Object;
.source "PlayerService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/bayyari/tv/player/PlayerService;",
        ">;"
    }
.end annotation


# instance fields
.field private final iptvPlayerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/player/IptvPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iptvPlayerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/player/IptvPlayer;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bayyari/tv/player/PlayerService_MembersInjector;->iptvPlayerProvider:Ldagger/internal/Provider;

    .line 30
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iptvPlayerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/player/IptvPlayer;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/bayyari/tv/player/PlayerService;",
            ">;"
        }
    .end annotation

    .line 38
    .local p0, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    new-instance v0, Lcom/bayyari/tv/player/PlayerService_MembersInjector;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/player/PlayerService_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectIptvPlayer(Lcom/bayyari/tv/player/PlayerService;Lcom/bayyari/tv/player/IptvPlayer;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/player/PlayerService;
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

    .line 43
    iput-object p1, p0, Lcom/bayyari/tv/player/PlayerService;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    .line 44
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/bayyari/tv/player/PlayerService;)V
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/player/PlayerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/bayyari/tv/player/PlayerService_MembersInjector;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/player/PlayerService_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/player/PlayerService;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 35
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

    .line 10
    check-cast p1, Lcom/bayyari/tv/player/PlayerService;

    invoke-virtual {p0, p1}, Lcom/bayyari/tv/player/PlayerService_MembersInjector;->injectMembers(Lcom/bayyari/tv/player/PlayerService;)V

    return-void
.end method

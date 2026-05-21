.class public final Lcom/bayyari/tv/player/IptvPlayer_Factory;
.super Ljava/lang/Object;
.source "IptvPlayer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/player/IptvPlayer;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final loadControlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appContextProvider",
            "loadControlProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "appContextProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Landroid/content/Context;>;"
    .local p2, "loadControlProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Landroidx/media3/exoplayer/LoadControl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bayyari/tv/player/IptvPlayer_Factory;->appContextProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lcom/bayyari/tv/player/IptvPlayer_Factory;->loadControlProvider:Ldagger/internal/Provider;

    .line 37
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/player/IptvPlayer_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appContextProvider",
            "loadControlProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;)",
            "Lcom/bayyari/tv/player/IptvPlayer_Factory;"
        }
    .end annotation

    .line 46
    .local p0, "appContextProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Landroid/content/Context;>;"
    .local p1, "loadControlProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Landroidx/media3/exoplayer/LoadControl;>;"
    new-instance v0, Lcom/bayyari/tv/player/IptvPlayer_Factory;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/player/IptvPlayer_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Landroidx/media3/exoplayer/LoadControl;)Lcom/bayyari/tv/player/IptvPlayer;
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "loadControl"    # Landroidx/media3/exoplayer/LoadControl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appContext",
            "loadControl"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/player/IptvPlayer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/LoadControl;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/player/IptvPlayer;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer_Factory;->appContextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bayyari/tv/player/IptvPlayer_Factory;->loadControlProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/LoadControl;

    invoke-static {v0, v1}, Lcom/bayyari/tv/player/IptvPlayer_Factory;->newInstance(Landroid/content/Context;Landroidx/media3/exoplayer/LoadControl;)Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/bayyari/tv/player/IptvPlayer_Factory;->get()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    return-object v0
.end method

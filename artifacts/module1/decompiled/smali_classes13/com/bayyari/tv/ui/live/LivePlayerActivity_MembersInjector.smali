.class public final Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;
.super Ljava/lang/Object;
.source "LivePlayerActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/bayyari/tv/ui/live/LivePlayerActivity;",
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

.field private final networkUtilsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/NetworkUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
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
            "prefsProvider",
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
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/NetworkUtils;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    .local p2, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    .local p3, "networkUtilsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/NetworkUtils;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->iptvPlayerProvider:Ldagger/internal/Provider;

    .line 38
    iput-object p2, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->prefsProvider:Ldagger/internal/Provider;

    .line 39
    iput-object p3, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->networkUtilsProvider:Ldagger/internal/Provider;

    .line 40
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
            "prefsProvider",
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
            "Lcom/bayyari/tv/util/EncryptedPrefs;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/NetworkUtils;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/bayyari/tv/ui/live/LivePlayerActivity;",
            ">;"
        }
    .end annotation

    .line 51
    .local p0, "iptvPlayerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/player/IptvPlayer;>;"
    .local p1, "prefsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/EncryptedPrefs;>;"
    .local p2, "networkUtilsProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/NetworkUtils;>;"
    new-instance v0, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectIptvPlayer(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;
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

    .line 56
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    .line 57
    return-void
.end method

.method public static injectNetworkUtils(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lcom/bayyari/tv/util/NetworkUtils;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;
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

    .line 66
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->networkUtils:Lcom/bayyari/tv/util/NetworkUtils;

    .line 67
    return-void
.end method

.method public static injectPrefs(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lcom/bayyari/tv/util/EncryptedPrefs;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;
    .param p1, "prefs"    # Lcom/bayyari/tv/util/EncryptedPrefs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "prefs"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    .line 62
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/ui/live/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 45
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->prefsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->injectPrefs(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lcom/bayyari/tv/util/EncryptedPrefs;)V

    .line 46
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->networkUtilsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/NetworkUtils;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->injectNetworkUtils(Lcom/bayyari/tv/ui/live/LivePlayerActivity;Lcom/bayyari/tv/util/NetworkUtils;)V

    .line 47
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
    check-cast p1, Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    invoke-virtual {p0, p1}, Lcom/bayyari/tv/ui/live/LivePlayerActivity_MembersInjector;->injectMembers(Lcom/bayyari/tv/ui/live/LivePlayerActivity;)V

    return-void
.end method

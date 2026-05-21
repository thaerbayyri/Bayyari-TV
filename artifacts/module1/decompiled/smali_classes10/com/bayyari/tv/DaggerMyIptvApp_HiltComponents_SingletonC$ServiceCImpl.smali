.class final Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ServiceCImpl;
.super Lcom/bayyari/tv/MyIptvApp_HiltComponents$ServiceC;
.source "DaggerMyIptvApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCImpl"
.end annotation


# instance fields
.field private final serviceCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ServiceCImpl;

.field private final singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "serviceParam"    # Landroid/app/Service;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "serviceParam"
        }
    .end annotation

    .line 997
    invoke-direct {p0}, Lcom/bayyari/tv/MyIptvApp_HiltComponents$ServiceC;-><init>()V

    .line 995
    iput-object p0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ServiceCImpl;->serviceCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ServiceCImpl;

    .line 998
    iput-object p1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ServiceCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 1001
    return-void
.end method

.method private injectPlayerService2(Lcom/bayyari/tv/player/PlayerService;)Lcom/bayyari/tv/player/PlayerService;
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

    .line 1010
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ServiceCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->iptvPlayerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {p1, v0}, Lcom/bayyari/tv/player/PlayerService_MembersInjector;->injectIptvPlayer(Lcom/bayyari/tv/player/PlayerService;Lcom/bayyari/tv/player/IptvPlayer;)V

    .line 1011
    return-object p1
.end method


# virtual methods
.method public injectPlayerService(Lcom/bayyari/tv/player/PlayerService;)V
    .locals 0
    .param p1, "playerService"    # Lcom/bayyari/tv/player/PlayerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerService"
        }
    .end annotation

    .line 1005
    invoke-direct {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ServiceCImpl;->injectPlayerService2(Lcom/bayyari/tv/player/PlayerService;)Lcom/bayyari/tv/player/PlayerService;

    .line 1006
    return-void
.end method

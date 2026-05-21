.class public final Lcom/bayyari/tv/data/repository/LiveRepository_Factory;
.super Ljava/lang/Object;
.source "LiveRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/data/repository/LiveRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/api/XtreamApiService;",
            ">;"
        }
    .end annotation
.end field

.field private final channelDaoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/ChannelDao;",
            ">;"
        }
    .end annotation
.end field

.field private final m3uParserProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/M3uParser;",
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
            "apiProvider",
            "channelDaoProvider",
            "m3uParserProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/api/XtreamApiService;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/ChannelDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/M3uParser;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "apiProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/api/XtreamApiService;>;"
    .local p2, "channelDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/ChannelDao;>;"
    .local p3, "m3uParserProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/M3uParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bayyari/tv/data/repository/LiveRepository_Factory;->apiProvider:Ldagger/internal/Provider;

    .line 39
    iput-object p2, p0, Lcom/bayyari/tv/data/repository/LiveRepository_Factory;->channelDaoProvider:Ldagger/internal/Provider;

    .line 40
    iput-object p3, p0, Lcom/bayyari/tv/data/repository/LiveRepository_Factory;->m3uParserProvider:Ldagger/internal/Provider;

    .line 41
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/data/repository/LiveRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "apiProvider",
            "channelDaoProvider",
            "m3uParserProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/api/XtreamApiService;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/ChannelDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/M3uParser;",
            ">;)",
            "Lcom/bayyari/tv/data/repository/LiveRepository_Factory;"
        }
    .end annotation

    .line 50
    .local p0, "apiProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/api/XtreamApiService;>;"
    .local p1, "channelDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/ChannelDao;>;"
    .local p2, "m3uParserProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/M3uParser;>;"
    new-instance v0, Lcom/bayyari/tv/data/repository/LiveRepository_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/bayyari/tv/data/repository/LiveRepository_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/util/M3uParser;)Lcom/bayyari/tv/data/repository/LiveRepository;
    .locals 1
    .param p0, "api"    # Lcom/bayyari/tv/data/api/XtreamApiService;
    .param p1, "channelDao"    # Lcom/bayyari/tv/data/local/dao/ChannelDao;
    .param p2, "m3uParser"    # Lcom/bayyari/tv/util/M3uParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "api",
            "channelDao",
            "m3uParser"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-direct {v0, p0, p1, p2}, Lcom/bayyari/tv/data/repository/LiveRepository;-><init>(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/util/M3uParser;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/data/repository/LiveRepository;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/LiveRepository_Factory;->apiProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/api/XtreamApiService;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/LiveRepository_Factory;->channelDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/local/dao/ChannelDao;

    iget-object v2, p0, Lcom/bayyari/tv/data/repository/LiveRepository_Factory;->m3uParserProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/util/M3uParser;

    invoke-static {v0, v1, v2}, Lcom/bayyari/tv/data/repository/LiveRepository_Factory;->newInstance(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/util/M3uParser;)Lcom/bayyari/tv/data/repository/LiveRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/bayyari/tv/data/repository/LiveRepository_Factory;->get()Lcom/bayyari/tv/data/repository/LiveRepository;

    move-result-object v0

    return-object v0
.end method

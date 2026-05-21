.class public final Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;
.super Ljava/lang/Object;
.source "SeriesRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/data/repository/SeriesRepository;",
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

.field private final seriesDaoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/SeriesDao;",
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
            "apiProvider",
            "seriesDaoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/api/XtreamApiService;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/SeriesDao;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "apiProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/api/XtreamApiService;>;"
    .local p2, "seriesDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/SeriesDao;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;->apiProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;->seriesDaoProvider:Ldagger/internal/Provider;

    .line 37
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "apiProvider",
            "seriesDaoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/api/XtreamApiService;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/SeriesDao;",
            ">;)",
            "Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;"
        }
    .end annotation

    .line 46
    .local p0, "apiProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/api/XtreamApiService;>;"
    .local p1, "seriesDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/SeriesDao;>;"
    new-instance v0, Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/SeriesDao;)Lcom/bayyari/tv/data/repository/SeriesRepository;
    .locals 1
    .param p0, "api"    # Lcom/bayyari/tv/data/api/XtreamApiService;
    .param p1, "seriesDao"    # Lcom/bayyari/tv/data/local/dao/SeriesDao;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "api",
            "seriesDao"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/bayyari/tv/data/repository/SeriesRepository;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/data/repository/SeriesRepository;-><init>(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/SeriesDao;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/data/repository/SeriesRepository;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;->apiProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/api/XtreamApiService;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;->seriesDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/local/dao/SeriesDao;

    invoke-static {v0, v1}, Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;->newInstance(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/SeriesDao;)Lcom/bayyari/tv/data/repository/SeriesRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/bayyari/tv/data/repository/SeriesRepository_Factory;->get()Lcom/bayyari/tv/data/repository/SeriesRepository;

    move-result-object v0

    return-object v0
.end method

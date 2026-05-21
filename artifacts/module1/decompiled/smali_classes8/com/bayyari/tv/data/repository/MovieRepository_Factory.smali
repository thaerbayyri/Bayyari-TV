.class public final Lcom/bayyari/tv/data/repository/MovieRepository_Factory;
.super Ljava/lang/Object;
.source "MovieRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/data/repository/MovieRepository;",
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

.field private final movieDaoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/MovieDao;",
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
            "movieDaoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/api/XtreamApiService;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/MovieDao;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "apiProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/api/XtreamApiService;>;"
    .local p2, "movieDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/MovieDao;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bayyari/tv/data/repository/MovieRepository_Factory;->apiProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lcom/bayyari/tv/data/repository/MovieRepository_Factory;->movieDaoProvider:Ldagger/internal/Provider;

    .line 37
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/data/repository/MovieRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "apiProvider",
            "movieDaoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/api/XtreamApiService;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/MovieDao;",
            ">;)",
            "Lcom/bayyari/tv/data/repository/MovieRepository_Factory;"
        }
    .end annotation

    .line 46
    .local p0, "apiProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/api/XtreamApiService;>;"
    .local p1, "movieDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/MovieDao;>;"
    new-instance v0, Lcom/bayyari/tv/data/repository/MovieRepository_Factory;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/data/repository/MovieRepository_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/MovieDao;)Lcom/bayyari/tv/data/repository/MovieRepository;
    .locals 1
    .param p0, "api"    # Lcom/bayyari/tv/data/api/XtreamApiService;
    .param p1, "movieDao"    # Lcom/bayyari/tv/data/local/dao/MovieDao;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "api",
            "movieDao"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/bayyari/tv/data/repository/MovieRepository;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/data/repository/MovieRepository;-><init>(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/MovieDao;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/data/repository/MovieRepository;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/MovieRepository_Factory;->apiProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/api/XtreamApiService;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/MovieRepository_Factory;->movieDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/local/dao/MovieDao;

    invoke-static {v0, v1}, Lcom/bayyari/tv/data/repository/MovieRepository_Factory;->newInstance(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/MovieDao;)Lcom/bayyari/tv/data/repository/MovieRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/bayyari/tv/data/repository/MovieRepository_Factory;->get()Lcom/bayyari/tv/data/repository/MovieRepository;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;
.super Ljava/lang/Object;
.source "SearchUseCase_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/domain/usecase/SearchUseCase;",
        ">;"
    }
.end annotation


# instance fields
.field private final liveRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final movieRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final seriesRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/SeriesRepository;",
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
            "liveRepositoryProvider",
            "movieRepositoryProvider",
            "seriesRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/SeriesRepository;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local p2, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    .local p3, "seriesRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/SeriesRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    .line 40
    iput-object p2, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;->movieRepositoryProvider:Ldagger/internal/Provider;

    .line 41
    iput-object p3, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;->seriesRepositoryProvider:Ldagger/internal/Provider;

    .line 42
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "liveRepositoryProvider",
            "movieRepositoryProvider",
            "seriesRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/SeriesRepository;",
            ">;)",
            "Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;"
        }
    .end annotation

    .line 52
    .local p0, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    .local p1, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    .local p2, "seriesRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/SeriesRepository;>;"
    new-instance v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)Lcom/bayyari/tv/domain/usecase/SearchUseCase;
    .locals 1
    .param p0, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .param p1, "movieRepository"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .param p2, "seriesRepository"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "liveRepository",
            "movieRepository",
            "seriesRepository"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase;

    invoke-direct {v0, p0, p1, p2}, Lcom/bayyari/tv/domain/usecase/SearchUseCase;-><init>(Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/domain/usecase/SearchUseCase;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/LiveRepository;

    iget-object v1, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/MovieRepository;

    iget-object v2, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;->seriesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/SeriesRepository;

    invoke-static {v0, v1, v2}, Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;->newInstance(Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)Lcom/bayyari/tv/domain/usecase/SearchUseCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/bayyari/tv/domain/usecase/SearchUseCase_Factory;->get()Lcom/bayyari/tv/domain/usecase/SearchUseCase;

    move-result-object v0

    return-object v0
.end method

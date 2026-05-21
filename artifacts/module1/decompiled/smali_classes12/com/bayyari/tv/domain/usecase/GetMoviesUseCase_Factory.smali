.class public final Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase_Factory;
.super Ljava/lang/Object;
.source "GetMoviesUseCase_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase;",
        ">;"
    }
.end annotation


# instance fields
.field private final movieRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
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
            "movieRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase_Factory;->movieRepositoryProvider:Ldagger/internal/Provider;

    .line 32
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movieRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;)",
            "Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase_Factory;"
        }
    .end annotation

    .line 40
    .local p0, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    new-instance v0, Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase_Factory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/MovieRepository;)Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase;
    .locals 1
    .param p0, "movieRepository"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movieRepository"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase;-><init>(Lcom/bayyari/tv/data/repository/MovieRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase_Factory;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/MovieRepository;

    invoke-static {v0}, Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase_Factory;->newInstance(Lcom/bayyari/tv/data/repository/MovieRepository;)Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase_Factory;->get()Lcom/bayyari/tv/domain/usecase/GetMoviesUseCase;

    move-result-object v0

    return-object v0
.end method

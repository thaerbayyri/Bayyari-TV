.class public final Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;
.super Ljava/lang/Object;
.source "MovieDetailViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;",
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
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authRepositoryProvider",
            "movieRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;->movieRepositoryProvider:Ldagger/internal/Provider;

    .line 37
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authRepositoryProvider",
            "movieRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            ">;)",
            "Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;"
        }
    .end annotation

    .line 46
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p1, "movieRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/MovieRepository;>;"
    new-instance v0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/MovieRepository;)Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;
    .locals 1
    .param p0, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p1, "movieRepository"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authRepository",
            "movieRepository"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/MovieRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v1, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/MovieRepository;

    invoke-static {v0, v1}, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;->newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/MovieRepository;)Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_Factory;->get()Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/bayyari/tv/di/DatabaseModule_ProvideMovieDaoFactory;
.super Ljava/lang/Object;
.source "DatabaseModule_ProvideMovieDaoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/data/local/dao/MovieDao;",
        ">;"
    }
.end annotation


# instance fields
.field private final dbProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/AppDatabase;",
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
            "dbProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/AppDatabase;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "dbProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/AppDatabase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bayyari/tv/di/DatabaseModule_ProvideMovieDaoFactory;->dbProvider:Ldagger/internal/Provider;

    .line 34
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/di/DatabaseModule_ProvideMovieDaoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dbProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/AppDatabase;",
            ">;)",
            "Lcom/bayyari/tv/di/DatabaseModule_ProvideMovieDaoFactory;"
        }
    .end annotation

    .line 42
    .local p0, "dbProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/AppDatabase;>;"
    new-instance v0, Lcom/bayyari/tv/di/DatabaseModule_ProvideMovieDaoFactory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/di/DatabaseModule_ProvideMovieDaoFactory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideMovieDao(Lcom/bayyari/tv/data/local/AppDatabase;)Lcom/bayyari/tv/data/local/dao/MovieDao;
    .locals 1
    .param p0, "db"    # Lcom/bayyari/tv/data/local/AppDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "db"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/bayyari/tv/di/DatabaseModule;->INSTANCE:Lcom/bayyari/tv/di/DatabaseModule;

    invoke-virtual {v0, p0}, Lcom/bayyari/tv/di/DatabaseModule;->provideMovieDao(Lcom/bayyari/tv/data/local/AppDatabase;)Lcom/bayyari/tv/data/local/dao/MovieDao;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/local/dao/MovieDao;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/data/local/dao/MovieDao;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bayyari/tv/di/DatabaseModule_ProvideMovieDaoFactory;->dbProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/local/AppDatabase;

    invoke-static {v0}, Lcom/bayyari/tv/di/DatabaseModule_ProvideMovieDaoFactory;->provideMovieDao(Lcom/bayyari/tv/data/local/AppDatabase;)Lcom/bayyari/tv/data/local/dao/MovieDao;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/bayyari/tv/di/DatabaseModule_ProvideMovieDaoFactory;->get()Lcom/bayyari/tv/data/local/dao/MovieDao;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/bayyari/tv/data/repository/WatchHistoryRepository_Factory;
.super Ljava/lang/Object;
.source "WatchHistoryRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final daoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
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
            "daoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "daoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository_Factory;->daoProvider:Ldagger/internal/Provider;

    .line 32
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/data/repository/WatchHistoryRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
            ">;)",
            "Lcom/bayyari/tv/data/repository/WatchHistoryRepository_Factory;"
        }
    .end annotation

    .line 40
    .local p0, "daoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;>;"
    new-instance v0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository_Factory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)Lcom/bayyari/tv/data/repository/WatchHistoryRepository;
    .locals 1
    .param p0, "dao"    # Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dao"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;-><init>(Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/data/repository/WatchHistoryRepository;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository_Factory;->daoProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    invoke-static {v0}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository_Factory;->newInstance(Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository_Factory;->get()Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    move-result-object v0

    return-object v0
.end method

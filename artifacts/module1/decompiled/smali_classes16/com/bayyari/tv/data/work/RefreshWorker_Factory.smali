.class public final Lcom/bayyari/tv/data/work/RefreshWorker_Factory;
.super Ljava/lang/Object;
.source "RefreshWorker_Factory.java"


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

.field private final liveRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
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
            "liveRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/bayyari/tv/data/work/RefreshWorker_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 37
    iput-object p2, p0, Lcom/bayyari/tv/data/work/RefreshWorker_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    .line 38
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/data/work/RefreshWorker_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authRepositoryProvider",
            "liveRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;)",
            "Lcom/bayyari/tv/data/work/RefreshWorker_Factory;"
        }
    .end annotation

    .line 46
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p1, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    new-instance v0, Lcom/bayyari/tv/data/work/RefreshWorker_Factory;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/data/work/RefreshWorker_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Landroidx/work/WorkerParameters;Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/work/RefreshWorker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroidx/work/WorkerParameters;
    .param p2, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p3, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "params",
            "authRepository",
            "liveRepository"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/bayyari/tv/data/work/RefreshWorker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bayyari/tv/data/work/RefreshWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)V

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;Landroidx/work/WorkerParameters;)Lcom/bayyari/tv/data/work/RefreshWorker;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroidx/work/WorkerParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "params"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/bayyari/tv/data/work/RefreshWorker_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v1, p0, Lcom/bayyari/tv/data/work/RefreshWorker_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-static {p1, p2, v0, v1}, Lcom/bayyari/tv/data/work/RefreshWorker_Factory;->newInstance(Landroid/content/Context;Landroidx/work/WorkerParameters;Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/work/RefreshWorker;

    move-result-object v0

    return-object v0
.end method

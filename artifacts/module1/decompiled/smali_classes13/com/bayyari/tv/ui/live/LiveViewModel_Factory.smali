.class public final Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;
.super Ljava/lang/Object;
.source "LiveViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/ui/live/LiveViewModel;",
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

    .line 34
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    .line 37
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;
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
            "Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;"
        }
    .end annotation

    .line 46
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p1, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    new-instance v0, Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/ui/live/LiveViewModel;
    .locals 1
    .param p0, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p1, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authRepository",
            "liveRepository"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/bayyari/tv/ui/live/LiveViewModel;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/ui/live/LiveViewModel;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/ui/live/LiveViewModel;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-static {v0, v1}, Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;->newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/ui/live/LiveViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/LiveViewModel_Factory;->get()Lcom/bayyari/tv/ui/live/LiveViewModel;

    move-result-object v0

    return-object v0
.end method

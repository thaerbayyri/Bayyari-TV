.class public final Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase_Factory;
.super Ljava/lang/Object;
.source "GetLiveChannelsUseCase_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase;",
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


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liveRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    .line 32
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liveRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            ">;)",
            "Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase_Factory;"
        }
    .end annotation

    .line 41
    .local p0, "liveRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/LiveRepository;>;"
    new-instance v0, Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase_Factory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase;
    .locals 1
    .param p0, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liveRepository"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase;-><init>(Lcom/bayyari/tv/data/repository/LiveRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase_Factory;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-static {v0}, Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase_Factory;->newInstance(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase_Factory;->get()Lcom/bayyari/tv/domain/usecase/GetLiveChannelsUseCase;

    move-result-object v0

    return-object v0
.end method

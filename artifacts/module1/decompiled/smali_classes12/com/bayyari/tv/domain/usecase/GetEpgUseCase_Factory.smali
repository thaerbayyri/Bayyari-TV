.class public final Lcom/bayyari/tv/domain/usecase/GetEpgUseCase_Factory;
.super Ljava/lang/Object;
.source "GetEpgUseCase_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/domain/usecase/GetEpgUseCase;",
        ">;"
    }
.end annotation


# instance fields
.field private final epgRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/EpgRepository;",
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
            "epgRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/EpgRepository;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "epgRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/EpgRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/GetEpgUseCase_Factory;->epgRepositoryProvider:Ldagger/internal/Provider;

    .line 32
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/domain/usecase/GetEpgUseCase_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/EpgRepository;",
            ">;)",
            "Lcom/bayyari/tv/domain/usecase/GetEpgUseCase_Factory;"
        }
    .end annotation

    .line 40
    .local p0, "epgRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/EpgRepository;>;"
    new-instance v0, Lcom/bayyari/tv/domain/usecase/GetEpgUseCase_Factory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/domain/usecase/GetEpgUseCase_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/EpgRepository;)Lcom/bayyari/tv/domain/usecase/GetEpgUseCase;
    .locals 1
    .param p0, "epgRepository"    # Lcom/bayyari/tv/data/repository/EpgRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgRepository"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/bayyari/tv/domain/usecase/GetEpgUseCase;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/domain/usecase/GetEpgUseCase;-><init>(Lcom/bayyari/tv/data/repository/EpgRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/domain/usecase/GetEpgUseCase;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/domain/usecase/GetEpgUseCase_Factory;->epgRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/EpgRepository;

    invoke-static {v0}, Lcom/bayyari/tv/domain/usecase/GetEpgUseCase_Factory;->newInstance(Lcom/bayyari/tv/data/repository/EpgRepository;)Lcom/bayyari/tv/domain/usecase/GetEpgUseCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/bayyari/tv/domain/usecase/GetEpgUseCase_Factory;->get()Lcom/bayyari/tv/domain/usecase/GetEpgUseCase;

    move-result-object v0

    return-object v0
.end method

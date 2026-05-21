.class public final Lcom/bayyari/tv/domain/usecase/LoginUseCase_Factory;
.super Ljava/lang/Object;
.source "LoginUseCase_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/domain/usecase/LoginUseCase;",
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


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/LoginUseCase_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 32
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/domain/usecase/LoginUseCase_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;)",
            "Lcom/bayyari/tv/domain/usecase/LoginUseCase_Factory;"
        }
    .end annotation

    .line 40
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    new-instance v0, Lcom/bayyari/tv/domain/usecase/LoginUseCase_Factory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/domain/usecase/LoginUseCase_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/domain/usecase/LoginUseCase;
    .locals 1
    .param p0, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authRepository"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/bayyari/tv/domain/usecase/LoginUseCase;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/domain/usecase/LoginUseCase;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/domain/usecase/LoginUseCase;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/domain/usecase/LoginUseCase_Factory;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {v0}, Lcom/bayyari/tv/domain/usecase/LoginUseCase_Factory;->newInstance(Lcom/bayyari/tv/data/repository/AuthRepository;)Lcom/bayyari/tv/domain/usecase/LoginUseCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/bayyari/tv/domain/usecase/LoginUseCase_Factory;->get()Lcom/bayyari/tv/domain/usecase/LoginUseCase;

    move-result-object v0

    return-object v0
.end method

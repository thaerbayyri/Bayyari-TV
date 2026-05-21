.class public final Lcom/bayyari/tv/ui/auth/LoginViewModel_Factory;
.super Ljava/lang/Object;
.source "LoginViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/ui/auth/LoginViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final loginUseCaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/domain/usecase/LoginUseCase;",
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
            "loginUseCaseProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/domain/usecase/LoginUseCase;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "loginUseCaseProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/domain/usecase/LoginUseCase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bayyari/tv/ui/auth/LoginViewModel_Factory;->loginUseCaseProvider:Ldagger/internal/Provider;

    .line 32
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/ui/auth/LoginViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginUseCaseProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/domain/usecase/LoginUseCase;",
            ">;)",
            "Lcom/bayyari/tv/ui/auth/LoginViewModel_Factory;"
        }
    .end annotation

    .line 40
    .local p0, "loginUseCaseProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/domain/usecase/LoginUseCase;>;"
    new-instance v0, Lcom/bayyari/tv/ui/auth/LoginViewModel_Factory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/ui/auth/LoginViewModel_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/domain/usecase/LoginUseCase;)Lcom/bayyari/tv/ui/auth/LoginViewModel;
    .locals 1
    .param p0, "loginUseCase"    # Lcom/bayyari/tv/domain/usecase/LoginUseCase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginUseCase"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/bayyari/tv/ui/auth/LoginViewModel;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/ui/auth/LoginViewModel;-><init>(Lcom/bayyari/tv/domain/usecase/LoginUseCase;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/ui/auth/LoginViewModel;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginViewModel_Factory;->loginUseCaseProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/domain/usecase/LoginUseCase;

    invoke-static {v0}, Lcom/bayyari/tv/ui/auth/LoginViewModel_Factory;->newInstance(Lcom/bayyari/tv/domain/usecase/LoginUseCase;)Lcom/bayyari/tv/ui/auth/LoginViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/auth/LoginViewModel_Factory;->get()Lcom/bayyari/tv/ui/auth/LoginViewModel;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_Factory;
.super Ljava/lang/Object;
.source "CatchUpViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final getCatchUpUseCaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;",
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
            "getCatchUpUseCaseProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "getCatchUpUseCaseProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_Factory;->getCatchUpUseCaseProvider:Ldagger/internal/Provider;

    .line 32
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "getCatchUpUseCaseProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;",
            ">;)",
            "Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_Factory;"
        }
    .end annotation

    .line 41
    .local p0, "getCatchUpUseCaseProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;>;"
    new-instance v0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_Factory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;)Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;
    .locals 1
    .param p0, "getCatchUpUseCase"    # Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "getCatchUpUseCase"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;-><init>(Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_Factory;->getCatchUpUseCaseProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;

    invoke-static {v0}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_Factory;->newInstance(Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;)Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_Factory;->get()Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    move-result-object v0

    return-object v0
.end method

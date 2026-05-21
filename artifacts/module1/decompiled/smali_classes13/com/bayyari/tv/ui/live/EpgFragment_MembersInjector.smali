.class public final Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;
.super Ljava/lang/Object;
.source "EpgFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/bayyari/tv/ui/live/EpgFragment;",
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
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authRepositoryProvider",
            "epgRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/EpgRepository;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "epgRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/EpgRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 35
    iput-object p2, p0, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;->epgRepositoryProvider:Ldagger/internal/Provider;

    .line 36
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authRepositoryProvider",
            "epgRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/EpgRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/bayyari/tv/ui/live/EpgFragment;",
            ">;"
        }
    .end annotation

    .line 46
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p1, "epgRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/EpgRepository;>;"
    new-instance v0, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAuthRepository(Lcom/bayyari/tv/ui/live/EpgFragment;Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/live/EpgFragment;
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "authRepository"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/EpgFragment;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 52
    return-void
.end method

.method public static injectEpgRepository(Lcom/bayyari/tv/ui/live/EpgFragment;Lcom/bayyari/tv/data/repository/EpgRepository;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/live/EpgFragment;
    .param p1, "epgRepository"    # Lcom/bayyari/tv/data/repository/EpgRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "epgRepository"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/EpgFragment;->epgRepository:Lcom/bayyari/tv/data/repository/EpgRepository;

    .line 57
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/bayyari/tv/ui/live/EpgFragment;)V
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/ui/live/EpgFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/live/EpgFragment;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 41
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;->epgRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/EpgRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;->injectEpgRepository(Lcom/bayyari/tv/ui/live/EpgFragment;Lcom/bayyari/tv/data/repository/EpgRepository;)V

    .line 42
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/bayyari/tv/ui/live/EpgFragment;

    invoke-virtual {p0, p1}, Lcom/bayyari/tv/ui/live/EpgFragment_MembersInjector;->injectMembers(Lcom/bayyari/tv/ui/live/EpgFragment;)V

    return-void
.end method

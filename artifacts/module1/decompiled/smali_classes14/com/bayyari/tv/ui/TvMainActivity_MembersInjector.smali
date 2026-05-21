.class public final Lcom/bayyari/tv/ui/TvMainActivity_MembersInjector;
.super Ljava/lang/Object;
.source "TvMainActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/bayyari/tv/ui/TvMainActivity;",
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

    .line 29
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bayyari/tv/ui/TvMainActivity_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 31
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
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
            "Ldagger/MembersInjector<",
            "Lcom/bayyari/tv/ui/TvMainActivity;",
            ">;"
        }
    .end annotation

    .line 40
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    new-instance v0, Lcom/bayyari/tv/ui/TvMainActivity_MembersInjector;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/ui/TvMainActivity_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAuthRepository(Lcom/bayyari/tv/ui/TvMainActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/TvMainActivity;
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

    .line 45
    iput-object p1, p0, Lcom/bayyari/tv/ui/TvMainActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 46
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/bayyari/tv/ui/TvMainActivity;)V
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/ui/TvMainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/bayyari/tv/ui/TvMainActivity_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/TvMainActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/TvMainActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 36
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

    .line 11
    check-cast p1, Lcom/bayyari/tv/ui/TvMainActivity;

    invoke-virtual {p0, p1}, Lcom/bayyari/tv/ui/TvMainActivity_MembersInjector;->injectMembers(Lcom/bayyari/tv/ui/TvMainActivity;)V

    return-void
.end method

.class public final Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;
.super Ljava/lang/Object;
.source "LiveFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/bayyari/tv/ui/live/LiveFragment;",
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

.field private final favoriteDaoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
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
            "favoriteDaoProvider",
            "authRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "favoriteDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/FavoriteDao;>;"
    .local p2, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;->favoriteDaoProvider:Ldagger/internal/Provider;

    .line 35
    iput-object p2, p0, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

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
            "favoriteDaoProvider",
            "authRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/bayyari/tv/ui/live/LiveFragment;",
            ">;"
        }
    .end annotation

    .line 46
    .local p0, "favoriteDaoProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/local/dao/FavoriteDao;>;"
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    new-instance v0, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAuthRepository(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/live/LiveFragment;
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

    .line 56
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 57
    return-void
.end method

.method public static injectFavoriteDao(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/data/local/dao/FavoriteDao;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/live/LiveFragment;
    .param p1, "favoriteDao"    # Lcom/bayyari/tv/data/local/dao/FavoriteDao;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "favoriteDao"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LiveFragment;->favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    .line 52
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/bayyari/tv/ui/live/LiveFragment;)V
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/ui/live/LiveFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;->favoriteDaoProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;->injectFavoriteDao(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/data/local/dao/FavoriteDao;)V

    .line 41
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/data/repository/AuthRepository;)V

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
    check-cast p1, Lcom/bayyari/tv/ui/live/LiveFragment;

    invoke-virtual {p0, p1}, Lcom/bayyari/tv/ui/live/LiveFragment_MembersInjector;->injectMembers(Lcom/bayyari/tv/ui/live/LiveFragment;)V

    return-void
.end method

.class public final Lcom/bayyari/tv/ui/MainActivity_MembersInjector;
.super Ljava/lang/Object;
.source "MainActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/bayyari/tv/ui/MainActivity;",
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

.field private final crashReporterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/CrashReporter;",
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
            "crashReporterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/CrashReporter;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p2, "crashReporterProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/CrashReporter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    .line 35
    iput-object p2, p0, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;->crashReporterProvider:Ldagger/internal/Provider;

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
            "crashReporterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/repository/AuthRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/CrashReporter;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/bayyari/tv/ui/MainActivity;",
            ">;"
        }
    .end annotation

    .line 47
    .local p0, "authRepositoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/repository/AuthRepository;>;"
    .local p1, "crashReporterProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/CrashReporter;>;"
    new-instance v0, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAuthRepository(Lcom/bayyari/tv/ui/MainActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/MainActivity;
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

    .line 52
    iput-object p1, p0, Lcom/bayyari/tv/ui/MainActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 53
    return-void
.end method

.method public static injectCrashReporter(Lcom/bayyari/tv/ui/MainActivity;Lcom/bayyari/tv/util/CrashReporter;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/ui/MainActivity;
    .param p1, "crashReporter"    # Lcom/bayyari/tv/util/CrashReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "crashReporter"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/bayyari/tv/ui/MainActivity;->crashReporter:Lcom/bayyari/tv/util/CrashReporter;

    .line 58
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/bayyari/tv/ui/MainActivity;)V
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/ui/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;->injectAuthRepository(Lcom/bayyari/tv/ui/MainActivity;Lcom/bayyari/tv/data/repository/AuthRepository;)V

    .line 41
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;->crashReporterProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/CrashReporter;

    invoke-static {p1, v0}, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;->injectCrashReporter(Lcom/bayyari/tv/ui/MainActivity;Lcom/bayyari/tv/util/CrashReporter;)V

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
    check-cast p1, Lcom/bayyari/tv/ui/MainActivity;

    invoke-virtual {p0, p1}, Lcom/bayyari/tv/ui/MainActivity_MembersInjector;->injectMembers(Lcom/bayyari/tv/ui/MainActivity;)V

    return-void
.end method

.class public final Lcom/bayyari/tv/MyIptvApp_MembersInjector;
.super Ljava/lang/Object;
.source "MyIptvApp_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/bayyari/tv/MyIptvApp;",
        ">;"
    }
.end annotation


# instance fields
.field private final crashReporterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/CrashReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshSchedulerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/work/RefreshScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final workerFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroidx/hilt/work/HiltWorkerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "workerFactoryProvider",
            "refreshSchedulerProvider",
            "crashReporterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroidx/hilt/work/HiltWorkerFactory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/work/RefreshScheduler;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/CrashReporter;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "workerFactoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Landroidx/hilt/work/HiltWorkerFactory;>;"
    .local p2, "refreshSchedulerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/work/RefreshScheduler;>;"
    .local p3, "crashReporterProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/CrashReporter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bayyari/tv/MyIptvApp_MembersInjector;->workerFactoryProvider:Ldagger/internal/Provider;

    .line 39
    iput-object p2, p0, Lcom/bayyari/tv/MyIptvApp_MembersInjector;->refreshSchedulerProvider:Ldagger/internal/Provider;

    .line 40
    iput-object p3, p0, Lcom/bayyari/tv/MyIptvApp_MembersInjector;->crashReporterProvider:Ldagger/internal/Provider;

    .line 41
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "workerFactoryProvider",
            "refreshSchedulerProvider",
            "crashReporterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroidx/hilt/work/HiltWorkerFactory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/work/RefreshScheduler;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/CrashReporter;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/bayyari/tv/MyIptvApp;",
            ">;"
        }
    .end annotation

    .line 53
    .local p0, "workerFactoryProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Landroidx/hilt/work/HiltWorkerFactory;>;"
    .local p1, "refreshSchedulerProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/work/RefreshScheduler;>;"
    .local p2, "crashReporterProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/CrashReporter;>;"
    new-instance v0, Lcom/bayyari/tv/MyIptvApp_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/bayyari/tv/MyIptvApp_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectCrashReporter(Lcom/bayyari/tv/MyIptvApp;Lcom/bayyari/tv/util/CrashReporter;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/MyIptvApp;
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

    .line 68
    iput-object p1, p0, Lcom/bayyari/tv/MyIptvApp;->crashReporter:Lcom/bayyari/tv/util/CrashReporter;

    .line 69
    return-void
.end method

.method public static injectRefreshScheduler(Lcom/bayyari/tv/MyIptvApp;Lcom/bayyari/tv/data/work/RefreshScheduler;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/MyIptvApp;
    .param p1, "refreshScheduler"    # Lcom/bayyari/tv/data/work/RefreshScheduler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "refreshScheduler"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/bayyari/tv/MyIptvApp;->refreshScheduler:Lcom/bayyari/tv/data/work/RefreshScheduler;

    .line 64
    return-void
.end method

.method public static injectWorkerFactory(Lcom/bayyari/tv/MyIptvApp;Landroidx/hilt/work/HiltWorkerFactory;)V
    .locals 0
    .param p0, "instance"    # Lcom/bayyari/tv/MyIptvApp;
    .param p1, "workerFactory"    # Landroidx/hilt/work/HiltWorkerFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "workerFactory"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/bayyari/tv/MyIptvApp;->workerFactory:Landroidx/hilt/work/HiltWorkerFactory;

    .line 59
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/bayyari/tv/MyIptvApp;)V
    .locals 1
    .param p1, "instance"    # Lcom/bayyari/tv/MyIptvApp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/bayyari/tv/MyIptvApp_MembersInjector;->workerFactoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/hilt/work/HiltWorkerFactory;

    invoke-static {p1, v0}, Lcom/bayyari/tv/MyIptvApp_MembersInjector;->injectWorkerFactory(Lcom/bayyari/tv/MyIptvApp;Landroidx/hilt/work/HiltWorkerFactory;)V

    .line 46
    iget-object v0, p0, Lcom/bayyari/tv/MyIptvApp_MembersInjector;->refreshSchedulerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/work/RefreshScheduler;

    invoke-static {p1, v0}, Lcom/bayyari/tv/MyIptvApp_MembersInjector;->injectRefreshScheduler(Lcom/bayyari/tv/MyIptvApp;Lcom/bayyari/tv/data/work/RefreshScheduler;)V

    .line 47
    iget-object v0, p0, Lcom/bayyari/tv/MyIptvApp_MembersInjector;->crashReporterProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/CrashReporter;

    invoke-static {p1, v0}, Lcom/bayyari/tv/MyIptvApp_MembersInjector;->injectCrashReporter(Lcom/bayyari/tv/MyIptvApp;Lcom/bayyari/tv/util/CrashReporter;)V

    .line 48
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

    .line 13
    check-cast p1, Lcom/bayyari/tv/MyIptvApp;

    invoke-virtual {p0, p1}, Lcom/bayyari/tv/MyIptvApp_MembersInjector;->injectMembers(Lcom/bayyari/tv/MyIptvApp;)V

    return-void
.end method

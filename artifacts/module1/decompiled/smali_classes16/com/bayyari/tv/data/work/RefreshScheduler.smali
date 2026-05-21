.class public final Lcom/bayyari/tv/data/work/RefreshScheduler;
.super Ljava/lang/Object;
.source "RefreshScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRefreshScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefreshScheduler.kt\ncom/bayyari/tv/data/work/RefreshScheduler\n+ 2 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequestKt\n*L\n1#1,31:1\n272#2:32\n*S KotlinDebug\n*F\n+ 1 RefreshScheduler.kt\ncom/bayyari/tv/data/work/RefreshScheduler\n*L\n18#1:32\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0013\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/bayyari/tv/data/work/RefreshScheduler;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "schedule",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bayyari/tv/data/work/RefreshScheduler;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public final schedule()V
    .locals 6

    .line 19
    nop

    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 18
    const-wide/16 v1, 0x6

    .local v0, "repeatIntervalTimeUnit\\1":Ljava/util/concurrent/TimeUnit;
    .local v1, "repeatInterval\\1":J
    const/4 v3, 0x0

    .line 32
    .local v3, "$i$f$PeriodicWorkRequestBuilder\\1\\18":I
    new-instance v4, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v5, Lcom/bayyari/tv/data/work/RefreshWorker;

    invoke-direct {v4, v5, v1, v2, v0}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 21
    .end local v0    # "repeatIntervalTimeUnit\\1":Ljava/util/concurrent/TimeUnit;
    .end local v1    # "repeatInterval\\1":J
    .end local v3    # "$i$f$PeriodicWorkRequestBuilder\\1\\18":I
    sget-object v0, Lcom/bayyari/tv/data/work/RefreshWorker;->Companion:Lcom/bayyari/tv/data/work/RefreshWorker$Companion;

    invoke-virtual {v0}, Lcom/bayyari/tv/data/work/RefreshWorker$Companion;->getConstraints()Landroidx/work/Constraints;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/work/PeriodicWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 22
    invoke-virtual {v0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 18
    nop

    .line 24
    .local v0, "request":Landroidx/work/PeriodicWorkRequest;
    iget-object v1, p0, Lcom/bayyari/tv/data/work/RefreshScheduler;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    .line 25
    nop

    .line 26
    sget-object v2, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 27
    nop

    .line 24
    const-string v3, "bayyari_refresh"

    invoke-virtual {v1, v3, v2, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    .line 29
    return-void
.end method

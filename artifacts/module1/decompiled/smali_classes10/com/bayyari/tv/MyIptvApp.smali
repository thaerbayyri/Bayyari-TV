.class public final Lcom/bayyari/tv/MyIptvApp;
.super Lcom/bayyari/tv/Hilt_MyIptvApp;
.source "MyIptvApp.kt"

# interfaces
.implements Landroidx/work/Configuration$Provider;


# annotations
.annotation runtime Ldagger/hilt/android/HiltAndroidApp;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/MyIptvApp$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyIptvApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyIptvApp.kt\ncom/bayyari/tv/MyIptvApp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,57:1\n45#1,5:58\n51#1:64\n45#1,5:65\n51#1:71\n45#1,5:72\n51#1:78\n1#2:63\n1#2:70\n1#2:77\n1#2:79\n*S KotlinDebug\n*F\n+ 1 MyIptvApp.kt\ncom/bayyari/tv/MyIptvApp\n*L\n39#1:58,5\n39#1:64\n40#1:65,5\n40#1:71\n41#1:72,5\n41#1:78\n39#1:63\n40#1:70\n41#1:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u001f\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001c0!H\u0082\u0008R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006#"
    }
    d2 = {
        "Lcom/bayyari/tv/MyIptvApp;",
        "Landroid/app/Application;",
        "Landroidx/work/Configuration$Provider;",
        "<init>",
        "()V",
        "workerFactory",
        "Landroidx/hilt/work/HiltWorkerFactory;",
        "getWorkerFactory",
        "()Landroidx/hilt/work/HiltWorkerFactory;",
        "setWorkerFactory",
        "(Landroidx/hilt/work/HiltWorkerFactory;)V",
        "refreshScheduler",
        "Lcom/bayyari/tv/data/work/RefreshScheduler;",
        "getRefreshScheduler",
        "()Lcom/bayyari/tv/data/work/RefreshScheduler;",
        "setRefreshScheduler",
        "(Lcom/bayyari/tv/data/work/RefreshScheduler;)V",
        "crashReporter",
        "Lcom/bayyari/tv/util/CrashReporter;",
        "getCrashReporter",
        "()Lcom/bayyari/tv/util/CrashReporter;",
        "setCrashReporter",
        "(Lcom/bayyari/tv/util/CrashReporter;)V",
        "workManagerConfiguration",
        "Landroidx/work/Configuration;",
        "getWorkManagerConfiguration",
        "()Landroidx/work/Configuration;",
        "onCreate",
        "",
        "runSafely",
        "label",
        "",
        "block",
        "Lkotlin/Function0;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/bayyari/tv/MyIptvApp$Companion;

.field private static final TAG:Ljava/lang/String; = "BayyariApp"


# instance fields
.field public crashReporter:Lcom/bayyari/tv/util/CrashReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public refreshScheduler:Lcom/bayyari/tv/data/work/RefreshScheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public workerFactory:Landroidx/hilt/work/HiltWorkerFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bayyari/tv/MyIptvApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bayyari/tv/MyIptvApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bayyari/tv/MyIptvApp;->Companion:Lcom/bayyari/tv/MyIptvApp$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/bayyari/tv/Hilt_MyIptvApp;-><init>()V

    .line 19
    return-void
.end method

.method private final runSafely(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    .local v0, "$i$f$runSafely":I
    nop

    .line 46
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init failure during \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BayyariApp"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    .line 79
    .local v2, "$this$runSafely_u24lambda_u243\\1":Lcom/bayyari/tv/MyIptvApp;
    const/4 v3, 0x0

    .line 49
    .local v3, "$i$a$-runCatching-MyIptvApp$runSafely$1\\1\\49\\0":I
    invoke-virtual {v2}, Lcom/bayyari/tv/MyIptvApp;->getCrashReporter()Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/bayyari/tv/util/CrashReporter;->recordException(Ljava/lang/Throwable;)V

    .end local v2    # "$this$runSafely_u24lambda_u243\\1":Lcom/bayyari/tv/MyIptvApp;
    .end local v3    # "$i$a$-runCatching-MyIptvApp$runSafely$1\\1\\49\\0":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public final getCrashReporter()Lcom/bayyari/tv/util/CrashReporter;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bayyari/tv/MyIptvApp;->crashReporter:Lcom/bayyari/tv/util/CrashReporter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "crashReporter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRefreshScheduler()Lcom/bayyari/tv/data/work/RefreshScheduler;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bayyari/tv/MyIptvApp;->refreshScheduler:Lcom/bayyari/tv/data/work/RefreshScheduler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "refreshScheduler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWorkManagerConfiguration()Landroidx/work/Configuration;
    .locals 2

    .line 32
    new-instance v0, Landroidx/work/Configuration$Builder;

    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/bayyari/tv/MyIptvApp;->getWorkerFactory()Landroidx/hilt/work/HiltWorkerFactory;

    move-result-object v1

    check-cast v1, Landroidx/work/WorkerFactory;

    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setWorkerFactory(Landroidx/work/WorkerFactory;)Landroidx/work/Configuration$Builder;

    move-result-object v0

    .line 34
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public final getWorkerFactory()Landroidx/hilt/work/HiltWorkerFactory;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/bayyari/tv/MyIptvApp;->workerFactory:Landroidx/hilt/work/HiltWorkerFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "workerFactory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    const-string v0, "\'"

    const-string v1, "Init failure during \'"

    const-string v2, "BayyariApp"

    .line 38
    invoke-super {p0}, Lcom/bayyari/tv/Hilt_MyIptvApp;->onCreate()V

    .line 39
    const-string v3, "install crash handler"

    .local v3, "label\\1":Ljava/lang/String;
    move-object v4, p0

    .local v4, "this_\\1":Lcom/bayyari/tv/MyIptvApp;
    const/4 v5, 0x0

    .line 58
    .local v5, "$i$f$runSafely\\1\\39":I
    nop

    .line 59
    const/4 v6, 0x0

    .line 39
    .local v6, "$i$a$-runSafely-MyIptvApp$onCreate$1\\3\\59\\0":I
    :try_start_0
    invoke-virtual {p0}, Lcom/bayyari/tv/MyIptvApp;->getCrashReporter()Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v7

    invoke-interface {v7}, Lcom/bayyari/tv/util/CrashReporter;->install()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v6    # "$i$a$-runSafely-MyIptvApp$onCreate$1\\3\\59\\0":I
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v6

    .line 61
    .local v6, "t\\1":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :try_start_1
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v7, v4

    .line 63
    .local v7, "$this$runSafely_u24lambda_u243\\2":Lcom/bayyari/tv/MyIptvApp;
    const/4 v8, 0x0

    .line 62
    .local v8, "$i$a$-runCatching-MyIptvApp$runSafely$1\\2\\62\\1":I
    invoke-virtual {v7}, Lcom/bayyari/tv/MyIptvApp;->getCrashReporter()Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/bayyari/tv/util/CrashReporter;->recordException(Ljava/lang/Throwable;)V

    .end local v7    # "$this$runSafely_u24lambda_u243\\2":Lcom/bayyari/tv/MyIptvApp;
    .end local v8    # "$i$a$-runCatching-MyIptvApp$runSafely$1\\2\\62\\1":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v6    # "t\\1":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 40
    .end local v3    # "label\\1":Ljava/lang/String;
    .end local v4    # "this_\\1":Lcom/bayyari/tv/MyIptvApp;
    .end local v5    # "$i$f$runSafely\\1\\39":I
    const-string v3, "schedule refresh worker"

    .local v3, "label\\4":Ljava/lang/String;
    move-object v4, p0

    .local v4, "this_\\4":Lcom/bayyari/tv/MyIptvApp;
    const/4 v5, 0x0

    .line 65
    .local v5, "$i$f$runSafely\\4\\40":I
    nop

    .line 66
    const/4 v6, 0x0

    .line 40
    .local v6, "$i$a$-runSafely-MyIptvApp$onCreate$2\\6\\66\\0":I
    :try_start_2
    invoke-virtual {p0}, Lcom/bayyari/tv/MyIptvApp;->getRefreshScheduler()Lcom/bayyari/tv/data/work/RefreshScheduler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bayyari/tv/data/work/RefreshScheduler;->schedule()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 66
    .end local v6    # "$i$a$-runSafely-MyIptvApp$onCreate$2\\6\\66\\0":I
    goto :goto_1

    .line 67
    :catchall_2
    move-exception v6

    .line 68
    .local v6, "t\\4":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :try_start_3
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v7, v4

    .line 70
    .local v7, "$this$runSafely_u24lambda_u243\\5":Lcom/bayyari/tv/MyIptvApp;
    const/4 v8, 0x0

    .line 69
    .local v8, "$i$a$-runCatching-MyIptvApp$runSafely$1\\5\\69\\4":I
    invoke-virtual {v7}, Lcom/bayyari/tv/MyIptvApp;->getCrashReporter()Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/bayyari/tv/util/CrashReporter;->recordException(Ljava/lang/Throwable;)V

    .end local v7    # "$this$runSafely_u24lambda_u243\\5":Lcom/bayyari/tv/MyIptvApp;
    .end local v8    # "$i$a$-runCatching-MyIptvApp$runSafely$1\\5\\69\\4":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v7

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v6    # "t\\4":Ljava/lang/Throwable;
    :goto_1
    nop

    .line 41
    .end local v3    # "label\\4":Ljava/lang/String;
    .end local v4    # "this_\\4":Lcom/bayyari/tv/MyIptvApp;
    .end local v5    # "$i$f$runSafely\\4\\40":I
    const-string v3, "log app start"

    .local v3, "label\\7":Ljava/lang/String;
    move-object v4, p0

    .local v4, "this_\\7":Lcom/bayyari/tv/MyIptvApp;
    const/4 v5, 0x0

    .line 72
    .local v5, "$i$f$runSafely\\7\\41":I
    nop

    .line 73
    const/4 v6, 0x0

    .line 41
    .local v6, "$i$a$-runSafely-MyIptvApp$onCreate$3\\9\\73\\0":I
    :try_start_4
    invoke-virtual {p0}, Lcom/bayyari/tv/MyIptvApp;->getCrashReporter()Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v7

    const-string v8, "App started v=1.0.0"

    invoke-interface {v7, v8}, Lcom/bayyari/tv/util/CrashReporter;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 73
    .end local v6    # "$i$a$-runSafely-MyIptvApp$onCreate$3\\9\\73\\0":I
    goto :goto_2

    .line 74
    :catchall_4
    move-exception v6

    .line 75
    .local v6, "t\\7":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v4

    .line 77
    .local v0, "$this$runSafely_u24lambda_u243\\8":Lcom/bayyari/tv/MyIptvApp;
    const/4 v1, 0x0

    .line 76
    .local v1, "$i$a$-runCatching-MyIptvApp$runSafely$1\\8\\76\\7":I
    invoke-virtual {v0}, Lcom/bayyari/tv/MyIptvApp;->getCrashReporter()Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/bayyari/tv/util/CrashReporter;->recordException(Ljava/lang/Throwable;)V

    .end local v0    # "$this$runSafely_u24lambda_u243\\8":Lcom/bayyari/tv/MyIptvApp;
    .end local v1    # "$i$a$-runCatching-MyIptvApp$runSafely$1\\8\\76\\7":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v6    # "t\\7":Ljava/lang/Throwable;
    :goto_2
    nop

    .line 42
    .end local v3    # "label\\7":Ljava/lang/String;
    .end local v4    # "this_\\7":Lcom/bayyari/tv/MyIptvApp;
    .end local v5    # "$i$f$runSafely\\7\\41":I
    return-void
.end method

.method public final setCrashReporter(Lcom/bayyari/tv/util/CrashReporter;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/util/CrashReporter;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/bayyari/tv/MyIptvApp;->crashReporter:Lcom/bayyari/tv/util/CrashReporter;

    .line 29
    return-void
.end method

.method public final setRefreshScheduler(Lcom/bayyari/tv/data/work/RefreshScheduler;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/work/RefreshScheduler;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/bayyari/tv/MyIptvApp;->refreshScheduler:Lcom/bayyari/tv/data/work/RefreshScheduler;

    .line 26
    return-void
.end method

.method public final setWorkerFactory(Landroidx/hilt/work/HiltWorkerFactory;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/hilt/work/HiltWorkerFactory;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/bayyari/tv/MyIptvApp;->workerFactory:Landroidx/hilt/work/HiltWorkerFactory;

    .line 23
    return-void
.end method

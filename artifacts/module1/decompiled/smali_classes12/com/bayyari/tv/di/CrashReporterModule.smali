.class public final Lcom/bayyari/tv/di/CrashReporterModule;
.super Ljava/lang/Object;
.source "CrashReporterModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/bayyari/tv/di/CrashReporterModule;",
        "",
        "<init>",
        "()V",
        "provideCrashReporter",
        "Lcom/bayyari/tv/util/CrashReporter;",
        "impl",
        "Lcom/bayyari/tv/util/FileCrashReporter;",
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
.field public static final INSTANCE:Lcom/bayyari/tv/di/CrashReporterModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bayyari/tv/di/CrashReporterModule;

    invoke-direct {v0}, Lcom/bayyari/tv/di/CrashReporterModule;-><init>()V

    sput-object v0, Lcom/bayyari/tv/di/CrashReporterModule;->INSTANCE:Lcom/bayyari/tv/di/CrashReporterModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCrashReporter(Lcom/bayyari/tv/util/FileCrashReporter;)Lcom/bayyari/tv/util/CrashReporter;
    .locals 1
    .param p1, "impl"    # Lcom/bayyari/tv/util/FileCrashReporter;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "impl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/bayyari/tv/util/CrashReporter;

    return-object v0
.end method

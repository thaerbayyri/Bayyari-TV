.class public final Lcom/bayyari/tv/di/CrashReporterModule_ProvideCrashReporterFactory;
.super Ljava/lang/Object;
.source "CrashReporterModule_ProvideCrashReporterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/util/CrashReporter;",
        ">;"
    }
.end annotation


# instance fields
.field private final implProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/FileCrashReporter;",
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
            "implProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/FileCrashReporter;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "implProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/FileCrashReporter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bayyari/tv/di/CrashReporterModule_ProvideCrashReporterFactory;->implProvider:Ldagger/internal/Provider;

    .line 35
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/di/CrashReporterModule_ProvideCrashReporterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "implProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/util/FileCrashReporter;",
            ">;)",
            "Lcom/bayyari/tv/di/CrashReporterModule_ProvideCrashReporterFactory;"
        }
    .end annotation

    .line 44
    .local p0, "implProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/util/FileCrashReporter;>;"
    new-instance v0, Lcom/bayyari/tv/di/CrashReporterModule_ProvideCrashReporterFactory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/di/CrashReporterModule_ProvideCrashReporterFactory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideCrashReporter(Lcom/bayyari/tv/util/FileCrashReporter;)Lcom/bayyari/tv/util/CrashReporter;
    .locals 1
    .param p0, "impl"    # Lcom/bayyari/tv/util/FileCrashReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/bayyari/tv/di/CrashReporterModule;->INSTANCE:Lcom/bayyari/tv/di/CrashReporterModule;

    invoke-virtual {v0, p0}, Lcom/bayyari/tv/di/CrashReporterModule;->provideCrashReporter(Lcom/bayyari/tv/util/FileCrashReporter;)Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/CrashReporter;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/util/CrashReporter;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bayyari/tv/di/CrashReporterModule_ProvideCrashReporterFactory;->implProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/FileCrashReporter;

    invoke-static {v0}, Lcom/bayyari/tv/di/CrashReporterModule_ProvideCrashReporterFactory;->provideCrashReporter(Lcom/bayyari/tv/util/FileCrashReporter;)Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/bayyari/tv/di/CrashReporterModule_ProvideCrashReporterFactory;->get()Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory_Impl;
.super Ljava/lang/Object;
.source "RefreshWorker_AssistedFactory_Impl.java"

# interfaces
.implements Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory;


# instance fields
.field private final delegateFactory:Lcom/bayyari/tv/data/work/RefreshWorker_Factory;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/work/RefreshWorker_Factory;)V
    .locals 0
    .param p1, "delegateFactory"    # Lcom/bayyari/tv/data/work/RefreshWorker_Factory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateFactory"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory_Impl;->delegateFactory:Lcom/bayyari/tv/data/work/RefreshWorker_Factory;

    .line 29
    return-void
.end method

.method public static create(Lcom/bayyari/tv/data/work/RefreshWorker_Factory;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "delegateFactory"    # Lcom/bayyari/tv/data/work/RefreshWorker_Factory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/data/work/RefreshWorker_Factory;",
            ")",
            "Ljavax/inject/Provider<",
            "Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory_Impl;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory_Impl;-><init>(Lcom/bayyari/tv/data/work/RefreshWorker_Factory;)V

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    return-object v0
.end method

.method public static createFactoryProvider(Lcom/bayyari/tv/data/work/RefreshWorker_Factory;)Ldagger/internal/Provider;
    .locals 1
    .param p0, "delegateFactory"    # Lcom/bayyari/tv/data/work/RefreshWorker_Factory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/data/work/RefreshWorker_Factory;",
            ")",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory_Impl;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory_Impl;-><init>(Lcom/bayyari/tv/data/work/RefreshWorker_Factory;)V

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory_Impl;->create(Landroid/content/Context;Landroidx/work/WorkerParameters;)Lcom/bayyari/tv/data/work/RefreshWorker;

    move-result-object p1

    return-object p1
.end method

.method public create(Landroid/content/Context;Landroidx/work/WorkerParameters;)Lcom/bayyari/tv/data/work/RefreshWorker;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroidx/work/WorkerParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/bayyari/tv/data/work/RefreshWorker_AssistedFactory_Impl;->delegateFactory:Lcom/bayyari/tv/data/work/RefreshWorker_Factory;

    invoke-virtual {v0, p1, p2}, Lcom/bayyari/tv/data/work/RefreshWorker_Factory;->get(Landroid/content/Context;Landroidx/work/WorkerParameters;)Lcom/bayyari/tv/data/work/RefreshWorker;

    move-result-object v0

    return-object v0
.end method

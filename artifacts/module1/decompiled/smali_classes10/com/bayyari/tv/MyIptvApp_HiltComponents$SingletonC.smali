.class public abstract Lcom/bayyari/tv/MyIptvApp_HiltComponents$SingletonC;
.super Ljava/lang/Object;
.source "MyIptvApp_HiltComponents.java"

# interfaces
.implements Lcom/bayyari/tv/MyIptvApp_GeneratedInjector;
.implements Ldagger/hilt/android/flags/FragmentGetContextFix$FragmentGetContextFixEntryPoint;
.implements Ldagger/hilt/android/internal/managers/HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedComponentBuilderEntryPoint;
.implements Ldagger/hilt/android/internal/managers/ServiceComponentManager$ServiceComponentBuilderEntryPoint;
.implements Ldagger/hilt/components/SingletonComponent;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Ldagger/hilt/android/internal/modules/ApplicationContextModule;,
        Lcom/bayyari/tv/di/CrashReporterModule;,
        Lcom/bayyari/tv/di/DatabaseModule;,
        Ldagger/hilt/android/flags/HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule;,
        Landroidx/hilt/work/HiltWrapper_WorkerFactoryModule;,
        Lcom/bayyari/tv/MyIptvApp_HiltComponents$ActivityRetainedCBuilderModule;,
        Lcom/bayyari/tv/MyIptvApp_HiltComponents$ServiceCBuilderModule;,
        Lcom/bayyari/tv/di/NetworkModule;,
        Lcom/bayyari/tv/di/PlayerModule;,
        Lcom/bayyari/tv/data/work/RefreshWorker_HiltModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/MyIptvApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SingletonC"
.end annotation

.annotation runtime Ljakarta/inject/Singleton;
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

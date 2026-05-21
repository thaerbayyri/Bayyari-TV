.class public final Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory;
.super Ljava/lang/Object;
.source "NetworkModule_ProvideHttpLoggingFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory;
    .locals 1

    .line 34
    sget-object v0, Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory$InstanceHolder;->INSTANCE:Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory;

    return-object v0
.end method

.method public static provideHttpLogging()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    .line 38
    sget-object v0, Lcom/bayyari/tv/di/NetworkModule;->INSTANCE:Lcom/bayyari/tv/di/NetworkModule;

    invoke-virtual {v0}, Lcom/bayyari/tv/di/NetworkModule;->provideHttpLogging()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory;->get()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    .line 30
    invoke-static {}, Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory;->provideHttpLogging()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    return-object v0
.end method

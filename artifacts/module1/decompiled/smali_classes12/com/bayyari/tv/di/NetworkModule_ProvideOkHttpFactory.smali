.class public final Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;
.super Ljava/lang/Object;
.source "NetworkModule_ProvideOkHttpFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final dynamicHostProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/api/DynamicHostInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final loggingProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
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
            "dynamicHostProvider",
            "loggingProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/api/DynamicHostInterceptor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "dynamicHostProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/api/DynamicHostInterceptor;>;"
    .local p2, "loggingProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lokhttp3/logging/HttpLoggingInterceptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;->dynamicHostProvider:Ldagger/internal/Provider;

    .line 38
    iput-object p2, p0, Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;->loggingProvider:Ldagger/internal/Provider;

    .line 39
    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dynamicHostProvider",
            "loggingProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/data/api/DynamicHostInterceptor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;)",
            "Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;"
        }
    .end annotation

    .line 49
    .local p0, "dynamicHostProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lcom/bayyari/tv/data/api/DynamicHostInterceptor;>;"
    .local p1, "loggingProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lokhttp3/logging/HttpLoggingInterceptor;>;"
    new-instance v0, Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;

    invoke-direct {v0, p0, p1}, Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideOkHttp(Lcom/bayyari/tv/data/api/DynamicHostInterceptor;Lokhttp3/logging/HttpLoggingInterceptor;)Lokhttp3/OkHttpClient;
    .locals 1
    .param p0, "dynamicHost"    # Lcom/bayyari/tv/data/api/DynamicHostInterceptor;
    .param p1, "logging"    # Lokhttp3/logging/HttpLoggingInterceptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dynamicHost",
            "logging"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/bayyari/tv/di/NetworkModule;->INSTANCE:Lcom/bayyari/tv/di/NetworkModule;

    invoke-virtual {v0, p0, p1}, Lcom/bayyari/tv/di/NetworkModule;->provideOkHttp(Lcom/bayyari/tv/data/api/DynamicHostInterceptor;Lokhttp3/logging/HttpLoggingInterceptor;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/OkHttpClient;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;->dynamicHostProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/api/DynamicHostInterceptor;

    iget-object v1, p0, Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;->loggingProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-static {v0, v1}, Lcom/bayyari/tv/di/NetworkModule_ProvideOkHttpFactory;->provideOkHttp(Lcom/bayyari/tv/data/api/DynamicHostInterceptor;Lokhttp3/logging/HttpLoggingInterceptor;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

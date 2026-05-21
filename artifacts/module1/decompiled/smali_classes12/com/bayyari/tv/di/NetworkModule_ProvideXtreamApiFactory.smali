.class public final Lcom/bayyari/tv/di/NetworkModule_ProvideXtreamApiFactory;
.super Ljava/lang/Object;
.source "NetworkModule_ProvideXtreamApiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/data/api/XtreamApiService;",
        ">;"
    }
.end annotation


# instance fields
.field private final retrofitProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lretrofit2/Retrofit;",
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
            "retrofitProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "retrofitProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lretrofit2/Retrofit;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bayyari/tv/di/NetworkModule_ProvideXtreamApiFactory;->retrofitProvider:Ldagger/internal/Provider;

    .line 34
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/di/NetworkModule_ProvideXtreamApiFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retrofitProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lcom/bayyari/tv/di/NetworkModule_ProvideXtreamApiFactory;"
        }
    .end annotation

    .line 42
    .local p0, "retrofitProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Lretrofit2/Retrofit;>;"
    new-instance v0, Lcom/bayyari/tv/di/NetworkModule_ProvideXtreamApiFactory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/di/NetworkModule_ProvideXtreamApiFactory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideXtreamApi(Lretrofit2/Retrofit;)Lcom/bayyari/tv/data/api/XtreamApiService;
    .locals 1
    .param p0, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retrofit"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/bayyari/tv/di/NetworkModule;->INSTANCE:Lcom/bayyari/tv/di/NetworkModule;

    invoke-virtual {v0, p0}, Lcom/bayyari/tv/di/NetworkModule;->provideXtreamApi(Lretrofit2/Retrofit;)Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/api/XtreamApiService;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/data/api/XtreamApiService;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bayyari/tv/di/NetworkModule_ProvideXtreamApiFactory;->retrofitProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    invoke-static {v0}, Lcom/bayyari/tv/di/NetworkModule_ProvideXtreamApiFactory;->provideXtreamApi(Lretrofit2/Retrofit;)Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/bayyari/tv/di/NetworkModule_ProvideXtreamApiFactory;->get()Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v0

    return-object v0
.end method

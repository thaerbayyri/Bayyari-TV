.class public final Lcom/bayyari/tv/di/DatabaseModule_ProvideDatabaseFactory;
.super Ljava/lang/Object;
.source "DatabaseModule_ProvideDatabaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/data/local/AppDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
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
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "contextProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bayyari/tv/di/DatabaseModule_ProvideDatabaseFactory;->contextProvider:Ldagger/internal/Provider;

    .line 34
    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/bayyari/tv/di/DatabaseModule_ProvideDatabaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/bayyari/tv/di/DatabaseModule_ProvideDatabaseFactory;"
        }
    .end annotation

    .line 42
    .local p0, "contextProvider":Ldagger/internal/Provider;, "Ldagger/internal/Provider<Landroid/content/Context;>;"
    new-instance v0, Lcom/bayyari/tv/di/DatabaseModule_ProvideDatabaseFactory;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/di/DatabaseModule_ProvideDatabaseFactory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideDatabase(Landroid/content/Context;)Lcom/bayyari/tv/data/local/AppDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/bayyari/tv/di/DatabaseModule;->INSTANCE:Lcom/bayyari/tv/di/DatabaseModule;

    invoke-virtual {v0, p0}, Lcom/bayyari/tv/di/DatabaseModule;->provideDatabase(Landroid/content/Context;)Lcom/bayyari/tv/data/local/AppDatabase;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/local/AppDatabase;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/data/local/AppDatabase;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bayyari/tv/di/DatabaseModule_ProvideDatabaseFactory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/bayyari/tv/di/DatabaseModule_ProvideDatabaseFactory;->provideDatabase(Landroid/content/Context;)Lcom/bayyari/tv/data/local/AppDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/bayyari/tv/di/DatabaseModule_ProvideDatabaseFactory;->get()Lcom/bayyari/tv/data/local/AppDatabase;

    move-result-object v0

    return-object v0
.end method

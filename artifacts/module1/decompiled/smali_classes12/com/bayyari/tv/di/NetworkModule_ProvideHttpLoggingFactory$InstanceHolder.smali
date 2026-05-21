.class final Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "NetworkModule_ProvideHttpLoggingFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory;

    invoke-direct {v0}, Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory;-><init>()V

    sput-object v0, Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory$InstanceHolder;->INSTANCE:Lcom/bayyari/tv/di/NetworkModule_ProvideHttpLoggingFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

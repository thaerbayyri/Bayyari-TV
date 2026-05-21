.class final Lcom/bayyari/tv/util/M3uParser_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "M3uParser_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/util/M3uParser_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/bayyari/tv/util/M3uParser_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/bayyari/tv/util/M3uParser_Factory;

    invoke-direct {v0}, Lcom/bayyari/tv/util/M3uParser_Factory;-><init>()V

    sput-object v0, Lcom/bayyari/tv/util/M3uParser_Factory$InstanceHolder;->INSTANCE:Lcom/bayyari/tv/util/M3uParser_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

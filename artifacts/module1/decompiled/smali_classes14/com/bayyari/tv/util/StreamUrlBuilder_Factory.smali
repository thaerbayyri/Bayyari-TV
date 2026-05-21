.class public final Lcom/bayyari/tv/util/StreamUrlBuilder_Factory;
.super Ljava/lang/Object;
.source "StreamUrlBuilder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/util/StreamUrlBuilder_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/bayyari/tv/util/StreamUrlBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/bayyari/tv/util/StreamUrlBuilder_Factory;
    .locals 1

    .line 32
    sget-object v0, Lcom/bayyari/tv/util/StreamUrlBuilder_Factory$InstanceHolder;->INSTANCE:Lcom/bayyari/tv/util/StreamUrlBuilder_Factory;

    return-object v0
.end method

.method public static newInstance()Lcom/bayyari/tv/util/StreamUrlBuilder;
    .locals 1

    .line 36
    new-instance v0, Lcom/bayyari/tv/util/StreamUrlBuilder;

    invoke-direct {v0}, Lcom/bayyari/tv/util/StreamUrlBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/bayyari/tv/util/StreamUrlBuilder;
    .locals 1

    .line 28
    invoke-static {}, Lcom/bayyari/tv/util/StreamUrlBuilder_Factory;->newInstance()Lcom/bayyari/tv/util/StreamUrlBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/bayyari/tv/util/StreamUrlBuilder_Factory;->get()Lcom/bayyari/tv/util/StreamUrlBuilder;

    move-result-object v0

    return-object v0
.end method

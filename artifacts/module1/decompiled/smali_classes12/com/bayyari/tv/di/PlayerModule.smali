.class public final Lcom/bayyari/tv/di/PlayerModule;
.super Ljava/lang/Object;
.source "PlayerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/bayyari/tv/di/PlayerModule;",
        "",
        "<init>",
        "()V",
        "provideLoadControl",
        "Landroidx/media3/exoplayer/LoadControl;",
        "prefs",
        "Lcom/bayyari/tv/util/EncryptedPrefs;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bayyari/tv/di/PlayerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bayyari/tv/di/PlayerModule;

    invoke-direct {v0}, Lcom/bayyari/tv/di/PlayerModule;-><init>()V

    sput-object v0, Lcom/bayyari/tv/di/PlayerModule;->INSTANCE:Lcom/bayyari/tv/di/PlayerModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideLoadControl(Lcom/bayyari/tv/util/EncryptedPrefs;)Landroidx/media3/exoplayer/LoadControl;
    .locals 5
    .param p1, "prefs"    # Lcom/bayyari/tv/util/EncryptedPrefs;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "prefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/bayyari/tv/util/EncryptedPrefs;->getBufferSizeMs()I

    move-result v0

    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 21
    .local v0, "minBuffer":I
    mul-int/lit8 v1, v0, 0x3

    const v2, 0xc350

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 22
    .local v1, "maxBuffer":I
    new-instance v2, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;-><init>()V

    .line 24
    nop

    .line 25
    nop

    .line 26
    nop

    .line 27
    nop

    .line 23
    const/16 v3, 0x9c4

    const/16 v4, 0x1388

    invoke-virtual {v2, v0, v1, v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->build()Landroidx/media3/exoplayer/DefaultLoadControl;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/media3/exoplayer/LoadControl;

    .line 22
    return-object v2
.end method

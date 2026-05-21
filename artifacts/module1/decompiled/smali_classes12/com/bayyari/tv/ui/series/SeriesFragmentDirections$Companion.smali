.class public final Lcom/bayyari/tv/ui/series/SeriesFragmentDirections$Companion;
.super Ljava/lang/Object;
.source "SeriesFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/series/SeriesFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/series/SeriesFragmentDirections$Companion;",
        "",
        "<init>",
        "()V",
        "actionSeriesToDetail",
        "Landroidx/navigation/NavDirections;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bayyari/tv/ui/series/SeriesFragmentDirections$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final actionSeriesToDetail()Landroidx/navigation/NavDirections;
    .locals 2

    .line 11
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    sget v1, Lcom/bayyari/tv/R$id;->action_series_to_detail:I

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    check-cast v0, Landroidx/navigation/NavDirections;

    return-object v0
.end method

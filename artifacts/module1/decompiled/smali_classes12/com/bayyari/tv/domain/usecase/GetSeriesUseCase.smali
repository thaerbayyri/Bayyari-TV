.class public final Lcom/bayyari/tv/domain/usecase/GetSeriesUseCase;
.super Ljava/lang/Object;
.source "GetSeriesUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\'\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/bayyari/tv/domain/usecase/GetSeriesUseCase;",
        "",
        "seriesRepository",
        "Lcom/bayyari/tv/data/repository/SeriesRepository;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/SeriesRepository;)V",
        "invoke",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/bayyari/tv/domain/model/Series;",
        "serverId",
        "",
        "categoryId",
        "",
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


# instance fields
.field private final seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/SeriesRepository;)V
    .locals 1
    .param p1, "seriesRepository"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "seriesRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/GetSeriesUseCase;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .param p1, "serverId"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/bayyari/tv/domain/usecase/GetSeriesUseCase;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    invoke-virtual {v0, p1, p2}, Lcom/bayyari/tv/data/repository/SeriesRepository;->observeSeries(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

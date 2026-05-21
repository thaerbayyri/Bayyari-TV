.class public final Lcom/bayyari/tv/ui/home/HomeStats;
.super Ljava/lang/Object;
.source "HomeViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/home/HomeStats;",
        "",
        "channelCount",
        "",
        "movieCount",
        "seriesCount",
        "online",
        "",
        "<init>",
        "(IIIZ)V",
        "getChannelCount",
        "()I",
        "getMovieCount",
        "getSeriesCount",
        "getOnline",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private final channelCount:I

.field private final movieCount:I

.field private final online:Z

.field private final seriesCount:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bayyari/tv/ui/home/HomeStats;-><init>(IIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "channelCount"    # I
    .param p2, "movieCount"    # I
    .param p3, "seriesCount"    # I
    .param p4, "online"    # Z

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/bayyari/tv/ui/home/HomeStats;->channelCount:I

    .line 26
    iput p2, p0, Lcom/bayyari/tv/ui/home/HomeStats;->movieCount:I

    .line 27
    iput p3, p0, Lcom/bayyari/tv/ui/home/HomeStats;->seriesCount:I

    .line 28
    iput-boolean p4, p0, Lcom/bayyari/tv/ui/home/HomeStats;->online:Z

    .line 24
    return-void
.end method

.method public synthetic constructor <init>(IIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 24
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 25
    move p1, v0

    .line 24
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 26
    move p2, v0

    .line 24
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 27
    move p3, v0

    .line 24
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 28
    const/4 p4, 0x1

    .line 24
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bayyari/tv/ui/home/HomeStats;-><init>(IIIZ)V

    .line 29
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/ui/home/HomeStats;IIIZILjava/lang/Object;)Lcom/bayyari/tv/ui/home/HomeStats;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/bayyari/tv/ui/home/HomeStats;->channelCount:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/bayyari/tv/ui/home/HomeStats;->movieCount:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/bayyari/tv/ui/home/HomeStats;->seriesCount:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/bayyari/tv/ui/home/HomeStats;->online:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bayyari/tv/ui/home/HomeStats;->copy(IIIZ)Lcom/bayyari/tv/ui/home/HomeStats;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/ui/home/HomeStats;->channelCount:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/ui/home/HomeStats;->movieCount:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/ui/home/HomeStats;->seriesCount:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bayyari/tv/ui/home/HomeStats;->online:Z

    return v0
.end method

.method public final copy(IIIZ)Lcom/bayyari/tv/ui/home/HomeStats;
    .locals 1

    new-instance v0, Lcom/bayyari/tv/ui/home/HomeStats;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bayyari/tv/ui/home/HomeStats;-><init>(IIIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/ui/home/HomeStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/ui/home/HomeStats;

    iget v3, p0, Lcom/bayyari/tv/ui/home/HomeStats;->channelCount:I

    iget v4, v1, Lcom/bayyari/tv/ui/home/HomeStats;->channelCount:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/bayyari/tv/ui/home/HomeStats;->movieCount:I

    iget v4, v1, Lcom/bayyari/tv/ui/home/HomeStats;->movieCount:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/bayyari/tv/ui/home/HomeStats;->seriesCount:I

    iget v4, v1, Lcom/bayyari/tv/ui/home/HomeStats;->seriesCount:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/bayyari/tv/ui/home/HomeStats;->online:Z

    iget-boolean v1, v1, Lcom/bayyari/tv/ui/home/HomeStats;->online:Z

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getChannelCount()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/bayyari/tv/ui/home/HomeStats;->channelCount:I

    return v0
.end method

.method public final getMovieCount()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/bayyari/tv/ui/home/HomeStats;->movieCount:I

    return v0
.end method

.method public final getOnline()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/bayyari/tv/ui/home/HomeStats;->online:Z

    return v0
.end method

.method public final getSeriesCount()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/bayyari/tv/ui/home/HomeStats;->seriesCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/bayyari/tv/ui/home/HomeStats;->channelCount:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bayyari/tv/ui/home/HomeStats;->movieCount:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/bayyari/tv/ui/home/HomeStats;->seriesCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/bayyari/tv/ui/home/HomeStats;->online:Z

    invoke-static {v2}, Lcom/bayyari/tv/data/local/entities/EpgEntity$$ExternalSyntheticBackport0;->m(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/bayyari/tv/ui/home/HomeStats;->channelCount:I

    iget v1, p0, Lcom/bayyari/tv/ui/home/HomeStats;->movieCount:I

    iget v2, p0, Lcom/bayyari/tv/ui/home/HomeStats;->seriesCount:I

    iget-boolean v3, p0, Lcom/bayyari/tv/ui/home/HomeStats;->online:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HomeStats(channelCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", movieCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seriesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", online="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

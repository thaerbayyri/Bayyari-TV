.class public final Lcom/bayyari/tv/data/api/models/SeriesInfoDto;
.super Ljava/lang/Object;
.source "SeriesInfoDto.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B=\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0003\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u001d\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0003\u0018\u00010\u0008H\u00c6\u0003JE\u0010\u0016\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u001c\u0008\u0002\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0003\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\tH\u00d6\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R*\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0003\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/bayyari/tv/data/api/models/SeriesInfoDto;",
        "",
        "seasons",
        "",
        "Lcom/bayyari/tv/data/api/models/SeasonDto;",
        "info",
        "Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;",
        "episodes",
        "",
        "",
        "Lcom/bayyari/tv/data/api/models/EpisodeDto;",
        "<init>",
        "(Ljava/util/List;Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;Ljava/util/Map;)V",
        "getSeasons",
        "()Ljava/util/List;",
        "getInfo",
        "()Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;",
        "getEpisodes",
        "()Ljava/util/Map;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final episodes:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "episodes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/api/models/EpisodeDto;",
            ">;>;"
        }
    .end annotation
.end field

.field private final info:Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "info"
    .end annotation
.end field

.field private final seasons:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seasons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/api/models/SeasonDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;Ljava/util/Map;)V
    .locals 0
    .param p1, "seasons"    # Ljava/util/List;
    .param p2, "info"    # Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;
    .param p3, "episodes"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/api/models/SeasonDto;",
            ">;",
            "Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/api/models/EpisodeDto;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->seasons:Ljava/util/List;

    .line 13
    iput-object p2, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->info:Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;

    .line 14
    iput-object p3, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->episodes:Ljava/util/Map;

    .line 11
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/data/api/models/SeriesInfoDto;Ljava/util/List;Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;Ljava/util/Map;ILjava/lang/Object;)Lcom/bayyari/tv/data/api/models/SeriesInfoDto;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->seasons:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->info:Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->episodes:Ljava/util/Map;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->copy(Ljava/util/List;Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;Ljava/util/Map;)Lcom/bayyari/tv/data/api/models/SeriesInfoDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/api/models/SeasonDto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->seasons:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->info:Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;

    return-object v0
.end method

.method public final component3()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/api/models/EpisodeDto;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->episodes:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;Ljava/util/Map;)Lcom/bayyari/tv/data/api/models/SeriesInfoDto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/api/models/SeasonDto;",
            ">;",
            "Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/api/models/EpisodeDto;",
            ">;>;)",
            "Lcom/bayyari/tv/data/api/models/SeriesInfoDto;"
        }
    .end annotation

    new-instance v0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;

    invoke-direct {v0, p1, p2, p3}, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;-><init>(Ljava/util/List;Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->seasons:Ljava/util/List;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->seasons:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->info:Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->info:Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->episodes:Ljava/util/Map;

    iget-object v1, v1, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->episodes:Ljava/util/Map;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEpisodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/api/models/EpisodeDto;",
            ">;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->episodes:Ljava/util/Map;

    return-object v0
.end method

.method public final getInfo()Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->info:Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;

    return-object v0
.end method

.method public final getSeasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/api/models/SeasonDto;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->seasons:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->seasons:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->seasons:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->info:Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->info:Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;

    invoke-virtual {v3}, Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->episodes:Ljava/util/Map;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->episodes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->seasons:Ljava/util/List;

    iget-object v1, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->info:Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;

    iget-object v2, p0, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->episodes:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeriesInfoDto(seasons="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", info="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", episodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

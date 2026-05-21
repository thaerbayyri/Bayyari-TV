.class public final Lcom/bayyari/tv/data/api/models/MovieDetailResponse;
.super Ljava/lang/Object;
.source "MovieDto.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;",
        "",
        "info",
        "Lcom/bayyari/tv/data/api/models/MovieInfo;",
        "movieData",
        "Lcom/bayyari/tv/data/api/models/MovieDataDto;",
        "<init>",
        "(Lcom/bayyari/tv/data/api/models/MovieInfo;Lcom/bayyari/tv/data/api/models/MovieDataDto;)V",
        "getInfo",
        "()Lcom/bayyari/tv/data/api/models/MovieInfo;",
        "getMovieData",
        "()Lcom/bayyari/tv/data/api/models/MovieDataDto;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final info:Lcom/bayyari/tv/data/api/models/MovieInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "info"
    .end annotation
.end field

.field private final movieData:Lcom/bayyari/tv/data/api/models/MovieDataDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "movie_data"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/api/models/MovieInfo;Lcom/bayyari/tv/data/api/models/MovieDataDto;)V
    .locals 0
    .param p1, "info"    # Lcom/bayyari/tv/data/api/models/MovieInfo;
    .param p2, "movieData"    # Lcom/bayyari/tv/data/api/models/MovieDataDto;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->info:Lcom/bayyari/tv/data/api/models/MovieInfo;

    .line 22
    iput-object p2, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->movieData:Lcom/bayyari/tv/data/api/models/MovieDataDto;

    .line 20
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/data/api/models/MovieDetailResponse;Lcom/bayyari/tv/data/api/models/MovieInfo;Lcom/bayyari/tv/data/api/models/MovieDataDto;ILjava/lang/Object;)Lcom/bayyari/tv/data/api/models/MovieDetailResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->info:Lcom/bayyari/tv/data/api/models/MovieInfo;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->movieData:Lcom/bayyari/tv/data/api/models/MovieDataDto;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->copy(Lcom/bayyari/tv/data/api/models/MovieInfo;Lcom/bayyari/tv/data/api/models/MovieDataDto;)Lcom/bayyari/tv/data/api/models/MovieDetailResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bayyari/tv/data/api/models/MovieInfo;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->info:Lcom/bayyari/tv/data/api/models/MovieInfo;

    return-object v0
.end method

.method public final component2()Lcom/bayyari/tv/data/api/models/MovieDataDto;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->movieData:Lcom/bayyari/tv/data/api/models/MovieDataDto;

    return-object v0
.end method

.method public final copy(Lcom/bayyari/tv/data/api/models/MovieInfo;Lcom/bayyari/tv/data/api/models/MovieDataDto;)Lcom/bayyari/tv/data/api/models/MovieDetailResponse;
    .locals 1

    new-instance v0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;

    invoke-direct {v0, p1, p2}, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;-><init>(Lcom/bayyari/tv/data/api/models/MovieInfo;Lcom/bayyari/tv/data/api/models/MovieDataDto;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->info:Lcom/bayyari/tv/data/api/models/MovieInfo;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->info:Lcom/bayyari/tv/data/api/models/MovieInfo;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->movieData:Lcom/bayyari/tv/data/api/models/MovieDataDto;

    iget-object v1, v1, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->movieData:Lcom/bayyari/tv/data/api/models/MovieDataDto;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getInfo()Lcom/bayyari/tv/data/api/models/MovieInfo;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->info:Lcom/bayyari/tv/data/api/models/MovieInfo;

    return-object v0
.end method

.method public final getMovieData()Lcom/bayyari/tv/data/api/models/MovieDataDto;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->movieData:Lcom/bayyari/tv/data/api/models/MovieDataDto;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->info:Lcom/bayyari/tv/data/api/models/MovieInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->info:Lcom/bayyari/tv/data/api/models/MovieInfo;

    invoke-virtual {v0}, Lcom/bayyari/tv/data/api/models/MovieInfo;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->movieData:Lcom/bayyari/tv/data/api/models/MovieDataDto;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->movieData:Lcom/bayyari/tv/data/api/models/MovieDataDto;

    invoke-virtual {v1}, Lcom/bayyari/tv/data/api/models/MovieDataDto;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->info:Lcom/bayyari/tv/data/api/models/MovieInfo;

    iget-object v1, p0, Lcom/bayyari/tv/data/api/models/MovieDetailResponse;->movieData:Lcom/bayyari/tv/data/api/models/MovieDataDto;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MovieDetailResponse(info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", movieData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

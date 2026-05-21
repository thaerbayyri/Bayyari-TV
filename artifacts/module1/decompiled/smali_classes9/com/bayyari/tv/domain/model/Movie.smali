.class public final Lcom/bayyari/tv/domain/model/Movie;
.super Ljava/lang/Object;
.source "Movie.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\tH\u00c6\u0003J\t\u0010#\u001a\u00020\tH\u00c6\u0003J\t\u0010$\u001a\u00020\u000cH\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003Jc\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020\u0003H\u00d6\u0001J\t\u0010,\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0014R\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012\u00a8\u0006-"
    }
    d2 = {
        "Lcom/bayyari/tv/domain/model/Movie;",
        "",
        "streamId",
        "",
        "name",
        "",
        "poster",
        "categoryId",
        "rating",
        "",
        "rating5Based",
        "addedEpochSeconds",
        "",
        "containerExtension",
        "serverId",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)V",
        "getStreamId",
        "()I",
        "getName",
        "()Ljava/lang/String;",
        "getPoster",
        "getCategoryId",
        "getRating",
        "()D",
        "getRating5Based",
        "getAddedEpochSeconds",
        "()J",
        "getContainerExtension",
        "getServerId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final addedEpochSeconds:J

.field private final categoryId:Ljava/lang/String;

.field private final containerExtension:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final poster:Ljava/lang/String;

.field private final rating:D

.field private final rating5Based:D

.field private final serverId:I

.field private final streamId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "poster"    # Ljava/lang/String;
    .param p4, "categoryId"    # Ljava/lang/String;
    .param p5, "rating"    # D
    .param p7, "rating5Based"    # D
    .param p9, "addedEpochSeconds"    # J
    .param p11, "containerExtension"    # Ljava/lang/String;
    .param p12, "serverId"    # I

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "poster"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerExtension"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/bayyari/tv/domain/model/Movie;->streamId:I

    .line 5
    iput-object p2, p0, Lcom/bayyari/tv/domain/model/Movie;->name:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/bayyari/tv/domain/model/Movie;->poster:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/bayyari/tv/domain/model/Movie;->categoryId:Ljava/lang/String;

    .line 8
    iput-wide p5, p0, Lcom/bayyari/tv/domain/model/Movie;->rating:D

    .line 9
    iput-wide p7, p0, Lcom/bayyari/tv/domain/model/Movie;->rating5Based:D

    .line 10
    iput-wide p9, p0, Lcom/bayyari/tv/domain/model/Movie;->addedEpochSeconds:J

    .line 11
    iput-object p11, p0, Lcom/bayyari/tv/domain/model/Movie;->containerExtension:Ljava/lang/String;

    .line 12
    iput p12, p0, Lcom/bayyari/tv/domain/model/Movie;->serverId:I

    .line 3
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/domain/model/Movie;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;IILjava/lang/Object;)Lcom/bayyari/tv/domain/model/Movie;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget p1, p0, Lcom/bayyari/tv/domain/model/Movie;->streamId:I

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Lcom/bayyari/tv/domain/model/Movie;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-object p3, p0, Lcom/bayyari/tv/domain/model/Movie;->poster:Ljava/lang/String;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p4, p0, Lcom/bayyari/tv/domain/model/Movie;->categoryId:Ljava/lang/String;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-wide p5, p0, Lcom/bayyari/tv/domain/model/Movie;->rating:D

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-wide p7, p0, Lcom/bayyari/tv/domain/model/Movie;->rating5Based:D

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-wide p9, p0, Lcom/bayyari/tv/domain/model/Movie;->addedEpochSeconds:J

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-object p11, p0, Lcom/bayyari/tv/domain/model/Movie;->containerExtension:Ljava/lang/String;

    :cond_7
    and-int/lit16 p13, p13, 0x100

    if-eqz p13, :cond_8

    iget p12, p0, Lcom/bayyari/tv/domain/model/Movie;->serverId:I

    :cond_8
    move-object p13, p11

    move p14, p12

    move-wide p11, p9

    move-wide p9, p7

    move-wide p7, p5

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/bayyari/tv/domain/model/Movie;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)Lcom/bayyari/tv/domain/model/Movie;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/domain/model/Movie;->streamId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Movie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Movie;->poster:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Movie;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/Movie;->rating:D

    return-wide v0
.end method

.method public final component6()D
    .locals 2

    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/Movie;->rating5Based:D

    return-wide v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/Movie;->addedEpochSeconds:J

    return-wide v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Movie;->containerExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/domain/model/Movie;->serverId:I

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)Lcom/bayyari/tv/domain/model/Movie;
    .locals 14

    const-string v0, "name"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "poster"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryId"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerExtension"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/bayyari/tv/domain/model/Movie;

    move v2, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/bayyari/tv/domain/model/Movie;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/domain/model/Movie;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/domain/model/Movie;

    iget v3, p0, Lcom/bayyari/tv/domain/model/Movie;->streamId:I

    iget v4, v1, Lcom/bayyari/tv/domain/model/Movie;->streamId:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Movie;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/Movie;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Movie;->poster:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/Movie;->poster:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Movie;->categoryId:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/Movie;->categoryId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/bayyari/tv/domain/model/Movie;->rating:D

    iget-wide v5, v1, Lcom/bayyari/tv/domain/model/Movie;->rating:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/bayyari/tv/domain/model/Movie;->rating5Based:D

    iget-wide v5, v1, Lcom/bayyari/tv/domain/model/Movie;->rating5Based:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/bayyari/tv/domain/model/Movie;->addedEpochSeconds:J

    iget-wide v5, v1, Lcom/bayyari/tv/domain/model/Movie;->addedEpochSeconds:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Movie;->containerExtension:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/Movie;->containerExtension:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget v3, p0, Lcom/bayyari/tv/domain/model/Movie;->serverId:I

    iget v1, v1, Lcom/bayyari/tv/domain/model/Movie;->serverId:I

    if-eq v3, v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAddedEpochSeconds()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/Movie;->addedEpochSeconds:J

    return-wide v0
.end method

.method public final getCategoryId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Movie;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public final getContainerExtension()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Movie;->containerExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Movie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPoster()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Movie;->poster:Ljava/lang/String;

    return-object v0
.end method

.method public final getRating()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/Movie;->rating:D

    return-wide v0
.end method

.method public final getRating5Based()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/Movie;->rating5Based:D

    return-wide v0
.end method

.method public final getServerId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/bayyari/tv/domain/model/Movie;->serverId:I

    return v0
.end method

.method public final getStreamId()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/bayyari/tv/domain/model/Movie;->streamId:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/bayyari/tv/domain/model/Movie;->streamId:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Movie;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Movie;->poster:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Movie;->categoryId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/bayyari/tv/domain/model/Movie;->rating:D

    invoke-static {v2, v3}, Lcom/bayyari/tv/domain/model/Movie$$ExternalSyntheticBackport0;->m(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/bayyari/tv/domain/model/Movie;->rating5Based:D

    invoke-static {v2, v3}, Lcom/bayyari/tv/domain/model/Movie$$ExternalSyntheticBackport0;->m(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/bayyari/tv/domain/model/Movie;->addedEpochSeconds:J

    invoke-static {v2, v3}, Lcom/bayyari/tv/domain/model/Channel$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Movie;->containerExtension:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/bayyari/tv/domain/model/Movie;->serverId:I

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Lcom/bayyari/tv/domain/model/Movie;->streamId:I

    iget-object v1, p0, Lcom/bayyari/tv/domain/model/Movie;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Movie;->poster:Ljava/lang/String;

    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Movie;->categoryId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bayyari/tv/domain/model/Movie;->rating:D

    iget-wide v6, p0, Lcom/bayyari/tv/domain/model/Movie;->rating5Based:D

    iget-wide v8, p0, Lcom/bayyari/tv/domain/model/Movie;->addedEpochSeconds:J

    iget-object v10, p0, Lcom/bayyari/tv/domain/model/Movie;->containerExtension:Ljava/lang/String;

    iget v11, p0, Lcom/bayyari/tv/domain/model/Movie;->serverId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Movie(streamId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", name="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rating5Based="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addedEpochSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", containerExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

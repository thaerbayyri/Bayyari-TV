.class public final Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
.super Ljava/lang/Object;
.source "WatchHistoryEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BU\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0008H\u00c6\u0003J\t\u0010 \u001a\u00020\u0008H\u00c6\u0003J\t\u0010!\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0006H\u00c6\u0003J\t\u0010$\u001a\u00020\u0006H\u00c6\u0003Jc\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001J\t\u0010*\u001a\u00020\u0006H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0011\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014R\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\u00a8\u0006+"
    }
    d2 = {
        "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
        "",
        "id",
        "",
        "contentId",
        "contentType",
        "",
        "positionMs",
        "",
        "durationMs",
        "watchedAt",
        "serverId",
        "title",
        "poster",
        "<init>",
        "(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()I",
        "getContentId",
        "getContentType",
        "()Ljava/lang/String;",
        "getPositionMs",
        "()J",
        "getDurationMs",
        "getWatchedAt",
        "getServerId",
        "getTitle",
        "getPoster",
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
.field private final contentId:I

.field private final contentType:Ljava/lang/String;

.field private final durationMs:J

.field private final id:I

.field private final positionMs:J

.field private final poster:Ljava/lang/String;

.field private final serverId:I

.field private final title:Ljava/lang/String;

.field private final watchedAt:J


# direct methods
.method public constructor <init>(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "contentId"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "positionMs"    # J
    .param p6, "durationMs"    # J
    .param p8, "watchedAt"    # J
    .param p10, "serverId"    # I
    .param p11, "title"    # Ljava/lang/String;
    .param p12, "poster"    # Ljava/lang/String;

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "poster"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->id:I

    .line 13
    iput p2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentId:I

    .line 14
    iput-object p3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentType:Ljava/lang/String;

    .line 15
    iput-wide p4, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->positionMs:J

    .line 16
    iput-wide p6, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->durationMs:J

    .line 17
    iput-wide p8, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->watchedAt:J

    .line 18
    iput p10, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->serverId:I

    .line 19
    iput-object p11, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->title:Ljava/lang/String;

    .line 20
    iput-object p12, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->poster:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 11
    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 11
    :cond_0
    and-int/lit16 p14, p13, 0x80

    const-string v0, ""

    if-eqz p14, :cond_1

    .line 19
    move-object p11, v0

    .line 11
    :cond_1
    and-int/lit16 p13, p13, 0x100

    if-eqz p13, :cond_2

    .line 20
    move-object p14, v0

    goto :goto_0

    .line 11
    :cond_2
    move-object p14, p12

    :goto_0
    move p12, p10

    move-object p13, p11

    move-wide p10, p8

    move-wide p8, p6

    move-wide p6, p4

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-direct/range {p2 .. p14}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;-><init>(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget p1, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->id:I

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget p2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentId:I

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-object p3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentType:Ljava/lang/String;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-wide p4, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->positionMs:J

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-wide p6, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->durationMs:J

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-wide p8, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->watchedAt:J

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget p10, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->serverId:I

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-object p11, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->title:Ljava/lang/String;

    :cond_7
    and-int/lit16 p13, p13, 0x100

    if-eqz p13, :cond_8

    iget-object p12, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->poster:Ljava/lang/String;

    :cond_8
    move-object p13, p11

    move-object p14, p12

    move p12, p10

    move-wide p10, p8

    move-wide p8, p6

    move-wide p6, p4

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p14}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->copy(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->id:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentId:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->positionMs:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->durationMs:J

    return-wide v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->watchedAt:J

    return-wide v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->serverId:I

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->poster:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    .locals 14

    const-string v0, "contentType"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "poster"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    move v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v1 .. v13}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;-><init>(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    iget v3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->id:I

    iget v4, v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->id:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentId:I

    iget v4, v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentId:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentType:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentType:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->positionMs:J

    iget-wide v5, v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->positionMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->durationMs:J

    iget-wide v5, v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->durationMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->watchedAt:J

    iget-wide v5, v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->watchedAt:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->serverId:I

    iget v4, v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->serverId:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->poster:Ljava/lang/String;

    iget-object v1, v1, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->poster:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getContentId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentId:I

    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getDurationMs()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->durationMs:J

    return-wide v0
.end method

.method public final getId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->id:I

    return v0
.end method

.method public final getPositionMs()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->positionMs:J

    return-wide v0
.end method

.method public final getPoster()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->poster:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->serverId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getWatchedAt()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->watchedAt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->id:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->positionMs:J

    invoke-static {v2, v3}, Lcom/bayyari/tv/data/local/entities/ChannelEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->durationMs:J

    invoke-static {v2, v3}, Lcom/bayyari/tv/data/local/entities/ChannelEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->watchedAt:J

    invoke-static {v2, v3}, Lcom/bayyari/tv/data/local/entities/ChannelEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->serverId:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->poster:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->id:I

    iget v1, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentId:I

    iget-object v2, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->contentType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->positionMs:J

    iget-wide v5, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->durationMs:J

    iget-wide v7, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->watchedAt:J

    iget v9, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->serverId:I

    iget-object v10, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->title:Ljava/lang/String;

    iget-object v11, p0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->poster:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WatchHistoryEntity(id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", contentId="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", watchedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

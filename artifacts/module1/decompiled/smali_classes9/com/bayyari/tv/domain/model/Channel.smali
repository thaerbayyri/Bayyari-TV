.class public final Lcom/bayyari/tv/domain/model/Channel;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0008\u0086\u0008\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0005H\u00c6\u0003J\t\u0010(\u001a\u00020\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\rH\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003Jy\u0010/\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u00100\u001a\u00020!2\u0008\u00101\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00102\u001a\u00020\u0003H\u00d6\u0001J\t\u00103\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0013R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u0011\u0010 \u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#\u00a8\u00064"
    }
    d2 = {
        "Lcom/bayyari/tv/domain/model/Channel;",
        "",
        "streamId",
        "",
        "name",
        "",
        "streamIcon",
        "categoryId",
        "categoryName",
        "epgChannelId",
        "tvArchive",
        "tvArchiveDuration",
        "addedEpochSeconds",
        "",
        "serverId",
        "directStreamUrl",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;)V",
        "getStreamId",
        "()I",
        "getName",
        "()Ljava/lang/String;",
        "getStreamIcon",
        "getCategoryId",
        "getCategoryName",
        "getEpgChannelId",
        "getTvArchive",
        "getTvArchiveDuration",
        "getAddedEpochSeconds",
        "()J",
        "getServerId",
        "getDirectStreamUrl",
        "supportsCatchUp",
        "",
        "getSupportsCatchUp",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "equals",
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

.field private final categoryName:Ljava/lang/String;

.field private final directStreamUrl:Ljava/lang/String;

.field private final epgChannelId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final serverId:I

.field private final streamIcon:Ljava/lang/String;

.field private final streamId:I

.field private final tvArchive:I

.field private final tvArchiveDuration:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "streamIcon"    # Ljava/lang/String;
    .param p4, "categoryId"    # Ljava/lang/String;
    .param p5, "categoryName"    # Ljava/lang/String;
    .param p6, "epgChannelId"    # Ljava/lang/String;
    .param p7, "tvArchive"    # I
    .param p8, "tvArchiveDuration"    # I
    .param p9, "addedEpochSeconds"    # J
    .param p11, "serverId"    # I
    .param p12, "directStreamUrl"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamIcon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epgChannelId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/bayyari/tv/domain/model/Channel;->streamId:I

    .line 9
    iput-object p2, p0, Lcom/bayyari/tv/domain/model/Channel;->name:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/bayyari/tv/domain/model/Channel;->streamIcon:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryId:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryName:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/bayyari/tv/domain/model/Channel;->epgChannelId:Ljava/lang/String;

    .line 14
    iput p7, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchive:I

    .line 15
    iput p8, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchiveDuration:I

    .line 16
    iput-wide p9, p0, Lcom/bayyari/tv/domain/model/Channel;->addedEpochSeconds:J

    .line 17
    iput p11, p0, Lcom/bayyari/tv/domain/model/Channel;->serverId:I

    .line 18
    iput-object p12, p0, Lcom/bayyari/tv/domain/model/Channel;->directStreamUrl:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    .line 7
    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 12
    const-string v1, ""

    move-object v7, v1

    goto :goto_0

    .line 7
    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    .line 18
    const/4 v0, 0x0

    move-object v14, v0

    goto :goto_1

    .line 7
    :cond_1
    move-object/from16 v14, p12

    :goto_1
    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    invoke-direct/range {v2 .. v14}, Lcom/bayyari/tv/domain/model/Channel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;)V

    .line 19
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/domain/model/Channel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;ILjava/lang/Object;)Lcom/bayyari/tv/domain/model/Channel;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget p1, p0, Lcom/bayyari/tv/domain/model/Channel;->streamId:I

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Lcom/bayyari/tv/domain/model/Channel;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-object p3, p0, Lcom/bayyari/tv/domain/model/Channel;->streamIcon:Ljava/lang/String;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p4, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryId:Ljava/lang/String;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p5, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryName:Ljava/lang/String;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-object p6, p0, Lcom/bayyari/tv/domain/model/Channel;->epgChannelId:Ljava/lang/String;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget p7, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchive:I

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget p8, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchiveDuration:I

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-wide p9, p0, Lcom/bayyari/tv/domain/model/Channel;->addedEpochSeconds:J

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget p11, p0, Lcom/bayyari/tv/domain/model/Channel;->serverId:I

    :cond_9
    and-int/lit16 p13, p13, 0x400

    if-eqz p13, :cond_a

    iget-object p12, p0, Lcom/bayyari/tv/domain/model/Channel;->directStreamUrl:Ljava/lang/String;

    :cond_a
    move p13, p11

    move-object p14, p12

    move-wide p11, p9

    move p9, p7

    move p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/bayyari/tv/domain/model/Channel;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;)Lcom/bayyari/tv/domain/model/Channel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->streamId:I

    return v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->serverId:I

    return v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->directStreamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->streamIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->epgChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchive:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchiveDuration:I

    return v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/Channel;->addedEpochSeconds:J

    return-wide v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;)Lcom/bayyari/tv/domain/model/Channel;
    .locals 14

    const-string v0, "name"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamIcon"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryId"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryName"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epgChannelId"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/bayyari/tv/domain/model/Channel;

    move v2, p1

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/bayyari/tv/domain/model/Channel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/domain/model/Channel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/domain/model/Channel;

    iget v3, p0, Lcom/bayyari/tv/domain/model/Channel;->streamId:I

    iget v4, v1, Lcom/bayyari/tv/domain/model/Channel;->streamId:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Channel;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/Channel;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Channel;->streamIcon:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/Channel;->streamIcon:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryId:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/Channel;->categoryId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryName:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/Channel;->categoryName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Channel;->epgChannelId:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/Channel;->epgChannelId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchive:I

    iget v4, v1, Lcom/bayyari/tv/domain/model/Channel;->tvArchive:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget v3, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchiveDuration:I

    iget v4, v1, Lcom/bayyari/tv/domain/model/Channel;->tvArchiveDuration:I

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/bayyari/tv/domain/model/Channel;->addedEpochSeconds:J

    iget-wide v5, v1, Lcom/bayyari/tv/domain/model/Channel;->addedEpochSeconds:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    return v2

    :cond_a
    iget v3, p0, Lcom/bayyari/tv/domain/model/Channel;->serverId:I

    iget v4, v1, Lcom/bayyari/tv/domain/model/Channel;->serverId:I

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Channel;->directStreamUrl:Ljava/lang/String;

    iget-object v1, v1, Lcom/bayyari/tv/domain/model/Channel;->directStreamUrl:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAddedEpochSeconds()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/Channel;->addedEpochSeconds:J

    return-wide v0
.end method

.method public final getCategoryId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategoryName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirectStreamUrl()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->directStreamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpgChannelId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->epgChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->serverId:I

    return v0
.end method

.method public final getStreamIcon()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/Channel;->streamIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreamId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->streamId:I

    return v0
.end method

.method public final getSupportsCatchUp()Z
    .locals 2

    .line 20
    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchive:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchiveDuration:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final getTvArchive()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchive:I

    return v0
.end method

.method public final getTvArchiveDuration()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchiveDuration:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->streamId:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Channel;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Channel;->streamIcon:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Channel;->epgChannelId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchive:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchiveDuration:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/bayyari/tv/domain/model/Channel;->addedEpochSeconds:J

    invoke-static {v2, v3}, Lcom/bayyari/tv/domain/model/Channel$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bayyari/tv/domain/model/Channel;->serverId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Channel;->directStreamUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Channel;->directStreamUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Lcom/bayyari/tv/domain/model/Channel;->streamId:I

    iget-object v1, p0, Lcom/bayyari/tv/domain/model/Channel;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/Channel;->streamIcon:Ljava/lang/String;

    iget-object v3, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryId:Ljava/lang/String;

    iget-object v4, p0, Lcom/bayyari/tv/domain/model/Channel;->categoryName:Ljava/lang/String;

    iget-object v5, p0, Lcom/bayyari/tv/domain/model/Channel;->epgChannelId:Ljava/lang/String;

    iget v6, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchive:I

    iget v7, p0, Lcom/bayyari/tv/domain/model/Channel;->tvArchiveDuration:I

    iget-wide v8, p0, Lcom/bayyari/tv/domain/model/Channel;->addedEpochSeconds:J

    iget v10, p0, Lcom/bayyari/tv/domain/model/Channel;->serverId:I

    iget-object v11, p0, Lcom/bayyari/tv/domain/model/Channel;->directStreamUrl:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Channel(streamId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", name="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", epgChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tvArchive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tvArchiveDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addedEpochSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", directStreamUrl="

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

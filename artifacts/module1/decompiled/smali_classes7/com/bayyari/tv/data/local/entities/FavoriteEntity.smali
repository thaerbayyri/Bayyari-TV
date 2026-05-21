.class public final Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
.super Ljava/lang/Object;
.source "FavoriteEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0006H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/bayyari/tv/data/local/entities/FavoriteEntity;",
        "",
        "id",
        "",
        "contentId",
        "contentType",
        "",
        "serverId",
        "addedAt",
        "",
        "<init>",
        "(IILjava/lang/String;IJ)V",
        "getId",
        "()I",
        "getContentId",
        "getContentType",
        "()Ljava/lang/String;",
        "getServerId",
        "getAddedAt",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private final addedAt:J

.field private final contentId:I

.field private final contentType:Ljava/lang/String;

.field private final id:I

.field private final serverId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "contentId"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "serverId"    # I
    .param p5, "addedAt"    # J

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->id:I

    .line 13
    iput p2, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentId:I

    .line 14
    iput-object p3, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentType:Ljava/lang/String;

    .line 15
    iput p4, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->serverId:I

    .line 16
    iput-wide p5, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->addedAt:J

    .line 11
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 11
    and-int/lit8 p7, p7, 0x1

    if-eqz p7, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 11
    :cond_0
    move-wide p7, p5

    move-object p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;-><init>(IILjava/lang/String;IJ)V

    .line 17
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/data/local/entities/FavoriteEntity;IILjava/lang/String;IJILjava/lang/Object;)Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->id:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentId:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentType:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->serverId:I

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    iget-wide p5, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->addedAt:J

    :cond_4
    move-wide p7, p5

    move-object p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->copy(IILjava/lang/String;IJ)Lcom/bayyari/tv/data/local/entities/FavoriteEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->id:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentId:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->serverId:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->addedAt:J

    return-wide v0
.end method

.method public final copy(IILjava/lang/String;IJ)Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    .locals 8

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;-><init>(IILjava/lang/String;IJ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;

    iget v3, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->id:I

    iget v4, v1, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->id:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentId:I

    iget v4, v1, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentId:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentType:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentType:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->serverId:I

    iget v4, v1, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->serverId:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->addedAt:J

    iget-wide v5, v1, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->addedAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAddedAt()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->addedAt:J

    return-wide v0
.end method

.method public final getContentId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentId:I

    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->id:I

    return v0
.end method

.method public final getServerId()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->serverId:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->id:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->serverId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->addedAt:J

    invoke-static {v2, v3}, Lcom/bayyari/tv/data/local/entities/ChannelEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->id:I

    iget v1, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentId:I

    iget-object v2, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->contentType:Ljava/lang/String;

    iget v3, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->serverId:I

    iget-wide v4, p0, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->addedAt:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FavoriteEntity(id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", contentId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

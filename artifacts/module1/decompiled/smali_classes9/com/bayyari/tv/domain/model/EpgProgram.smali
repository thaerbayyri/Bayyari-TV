.class public final Lcom/bayyari/tv/domain/model/EpgProgram;
.super Ljava/lang/Object;
.source "EpgProgram.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001a\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u000bH\u00c6\u0003JE\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010!\u001a\u00020\u000b2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001J\t\u0010$\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0014\u00a8\u0006%"
    }
    d2 = {
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
        "",
        "streamId",
        "",
        "title",
        "",
        "description",
        "startMs",
        "",
        "endMs",
        "hasArchive",
        "",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;JJZ)V",
        "getStreamId",
        "()I",
        "getTitle",
        "()Ljava/lang/String;",
        "getDescription",
        "getStartMs",
        "()J",
        "getEndMs",
        "getHasArchive",
        "()Z",
        "durationMs",
        "getDurationMs",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private final description:Ljava/lang/String;

.field private final endMs:J

.field private final hasArchive:Z

.field private final startMs:J

.field private final streamId:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JJZ)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "startMs"    # J
    .param p6, "endMs"    # J
    .param p8, "hasArchive"    # Z

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->streamId:I

    .line 5
    iput-object p2, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->title:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->description:Ljava/lang/String;

    .line 7
    iput-wide p4, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->startMs:J

    .line 8
    iput-wide p6, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->endMs:J

    .line 9
    iput-boolean p8, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->hasArchive:Z

    .line 3
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/domain/model/EpgProgram;ILjava/lang/String;Ljava/lang/String;JJZILjava/lang/Object;)Lcom/bayyari/tv/domain/model/EpgProgram;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget p1, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->streamId:I

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget-object p2, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->title:Ljava/lang/String;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-object p3, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->description:Ljava/lang/String;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-wide p4, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->startMs:J

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget-wide p6, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->endMs:J

    :cond_4
    and-int/lit8 p9, p9, 0x20

    if-eqz p9, :cond_5

    iget-boolean p8, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->hasArchive:Z

    :cond_5
    move p10, p8

    move-wide p8, p6

    move-wide p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p10}, Lcom/bayyari/tv/domain/model/EpgProgram;->copy(ILjava/lang/String;Ljava/lang/String;JJZ)Lcom/bayyari/tv/domain/model/EpgProgram;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->streamId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->startMs:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->endMs:J

    return-wide v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->hasArchive:Z

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;JJZ)Lcom/bayyari/tv/domain/model/EpgProgram;
    .locals 10

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/bayyari/tv/domain/model/EpgProgram;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/bayyari/tv/domain/model/EpgProgram;-><init>(ILjava/lang/String;Ljava/lang/String;JJZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/domain/model/EpgProgram;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/domain/model/EpgProgram;

    iget v3, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->streamId:I

    iget v4, v1, Lcom/bayyari/tv/domain/model/EpgProgram;->streamId:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/EpgProgram;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->description:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/domain/model/EpgProgram;->description:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->startMs:J

    iget-wide v5, v1, Lcom/bayyari/tv/domain/model/EpgProgram;->startMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->endMs:J

    iget-wide v5, v1, Lcom/bayyari/tv/domain/model/EpgProgram;->endMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->hasArchive:Z

    iget-boolean v1, v1, Lcom/bayyari/tv/domain/model/EpgProgram;->hasArchive:Z

    if-eq v3, v1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDurationMs()J
    .locals 4

    .line 11
    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->endMs:J

    iget-wide v2, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->startMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEndMs()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->endMs:J

    return-wide v0
.end method

.method public final getHasArchive()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->hasArchive:Z

    return v0
.end method

.method public final getStartMs()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->startMs:J

    return-wide v0
.end method

.method public final getStreamId()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->streamId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->streamId:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->startMs:J

    invoke-static {v2, v3}, Lcom/bayyari/tv/domain/model/Channel$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->endMs:J

    invoke-static {v2, v3}, Lcom/bayyari/tv/domain/model/Channel$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->hasArchive:Z

    invoke-static {v2}, Lcom/bayyari/tv/domain/model/EpgProgram$$ExternalSyntheticBackport0;->m(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->streamId:I

    iget-object v1, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->description:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->startMs:J

    iget-wide v5, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->endMs:J

    iget-boolean v7, p0, Lcom/bayyari/tv/domain/model/EpgProgram;->hasArchive:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EpgProgram(streamId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", title="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasArchive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

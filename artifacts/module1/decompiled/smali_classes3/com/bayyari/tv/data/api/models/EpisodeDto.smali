.class public final Lcom/bayyari/tv/data/api/models/EpisodeDto;
.super Ljava/lang/Object;
.source "SeriesInfoDto.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003Jz\u0010\'\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010,\u001a\u00020\nH\u00d6\u0001J\t\u0010-\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011\u00a8\u0006."
    }
    d2 = {
        "Lcom/bayyari/tv/data/api/models/EpisodeDto;",
        "",
        "id",
        "",
        "episodeNum",
        "title",
        "containerExtension",
        "info",
        "Lcom/bayyari/tv/data/api/models/EpisodeInfo;",
        "season",
        "",
        "customSid",
        "added",
        "directSource",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/api/models/EpisodeInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "getEpisodeNum",
        "()Ljava/lang/Object;",
        "getTitle",
        "getContainerExtension",
        "getInfo",
        "()Lcom/bayyari/tv/data/api/models/EpisodeInfo;",
        "getSeason",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getCustomSid",
        "getAdded",
        "getDirectSource",
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
        "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/api/models/EpisodeInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bayyari/tv/data/api/models/EpisodeDto;",
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
.field private final added:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "added"
    .end annotation
.end field

.field private final containerExtension:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "container_extension"
    .end annotation
.end field

.field private final customSid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_sid"
    .end annotation
.end field

.field private final directSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "direct_source"
    .end annotation
.end field

.field private final episodeNum:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "episode_num"
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final info:Lcom/bayyari/tv/data/api/models/EpisodeInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "info"
    .end annotation
.end field

.field private final season:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "season"
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/api/models/EpisodeInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "episodeNum"    # Ljava/lang/Object;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "containerExtension"    # Ljava/lang/String;
    .param p5, "info"    # Lcom/bayyari/tv/data/api/models/EpisodeInfo;
    .param p6, "season"    # Ljava/lang/Integer;
    .param p7, "customSid"    # Ljava/lang/String;
    .param p8, "added"    # Ljava/lang/String;
    .param p9, "directSource"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->episodeNum:Ljava/lang/Object;

    .line 48
    iput-object p3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->title:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->containerExtension:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->info:Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    .line 51
    iput-object p6, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->season:Ljava/lang/Integer;

    .line 52
    iput-object p7, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->customSid:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->added:Ljava/lang/String;

    .line 54
    iput-object p9, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->directSource:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/data/api/models/EpisodeDto;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/api/models/EpisodeInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/bayyari/tv/data/api/models/EpisodeDto;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->episodeNum:Ljava/lang/Object;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->title:Ljava/lang/String;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->containerExtension:Ljava/lang/String;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->info:Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->season:Ljava/lang/Integer;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p7, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->customSid:Ljava/lang/String;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->added:Ljava/lang/String;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-object p9, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->directSource:Ljava/lang/String;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->copy(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/api/models/EpisodeInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bayyari/tv/data/api/models/EpisodeDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->episodeNum:Ljava/lang/Object;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->containerExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/bayyari/tv/data/api/models/EpisodeInfo;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->info:Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->season:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->customSid:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->added:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->directSource:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/api/models/EpisodeInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bayyari/tv/data/api/models/EpisodeDto;
    .locals 10

    new-instance v0, Lcom/bayyari/tv/data/api/models/EpisodeDto;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/bayyari/tv/data/api/models/EpisodeDto;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/api/models/EpisodeInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/data/api/models/EpisodeDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/data/api/models/EpisodeDto;

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->id:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/EpisodeDto;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->episodeNum:Ljava/lang/Object;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/EpisodeDto;->episodeNum:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/EpisodeDto;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->containerExtension:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/EpisodeDto;->containerExtension:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->info:Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/EpisodeDto;->info:Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->season:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/EpisodeDto;->season:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->customSid:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/EpisodeDto;->customSid:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->added:Ljava/lang/String;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/EpisodeDto;->added:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->directSource:Ljava/lang/String;

    iget-object v1, v1, Lcom/bayyari/tv/data/api/models/EpisodeDto;->directSource:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAdded()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->added:Ljava/lang/String;

    return-object v0
.end method

.method public final getContainerExtension()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->containerExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomSid()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->customSid:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirectSource()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->directSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpisodeNum()Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->episodeNum:Ljava/lang/Object;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInfo()Lcom/bayyari/tv/data/api/models/EpisodeInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->info:Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    return-object v0
.end method

.method public final getSeason()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->season:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->episodeNum:Ljava/lang/Object;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->episodeNum:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->title:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->containerExtension:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->containerExtension:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->info:Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->info:Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    invoke-virtual {v3}, Lcom/bayyari/tv/data/api/models/EpisodeInfo;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->season:Ljava/lang/Integer;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->season:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->customSid:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->customSid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->added:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->added:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->directSource:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->directSource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->episodeNum:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->containerExtension:Ljava/lang/String;

    iget-object v4, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->info:Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    iget-object v5, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->season:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->customSid:Ljava/lang/String;

    iget-object v7, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->added:Ljava/lang/String;

    iget-object v8, p0, Lcom/bayyari/tv/data/api/models/EpisodeDto;->directSource:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EpisodeDto(id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", episodeNum="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", containerExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", season="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customSid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", added="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", directSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/bayyari/tv/player/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/player/TrackSelector$TrackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackSelector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackSelector.kt\ncom/bayyari/tv/player/TrackSelector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n295#2,2:69\n295#2,2:71\n*S KotlinDebug\n*F\n+ 1 TrackSelector.kt\ncom/bayyari/tv/player/TrackSelector\n*L\n32#1:69,2\n54#1:71,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0013B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u001e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\rH\u0002J(\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/bayyari/tv/player/TrackSelector;",
        "",
        "<init>",
        "()V",
        "audioTracks",
        "",
        "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;",
        "selector",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;",
        "subtitleTracks",
        "applyAudioTrack",
        "",
        "groupIndex",
        "",
        "trackIndex",
        "applySubtitleTrack",
        "extractTracks",
        "trackType",
        "applySelection",
        "TrackInfo",
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


# static fields
.field public static final INSTANCE:Lcom/bayyari/tv/player/TrackSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bayyari/tv/player/TrackSelector;

    invoke-direct {v0}, Lcom/bayyari/tv/player/TrackSelector;-><init>()V

    sput-object v0, Lcom/bayyari/tv/player/TrackSelector;->INSTANCE:Lcom/bayyari/tv/player/TrackSelector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final applySelection(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;III)V
    .locals 9
    .param p1, "selector"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
    .param p2, "trackType"    # I
    .param p3, "groupIndex"    # I
    .param p4, "trackIndex"    # I

    .line 52
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 53
    .local v0, "mapped":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 54
    nop

    .local v1, "$this$firstOrNull\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 71
    .local v3, "$i$f$firstOrNull\\1\\54":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element\\1":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "it\\2":I
    const/4 v7, 0x0

    .line 54
    .local v7, "$i$a$-firstOrNull-TrackSelector$applySelection$rendererIndex$1\\2\\71\\0":I
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v8

    if-ne v8, p2, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v2

    .line 71
    .end local v6    # "it\\2":I
    .end local v7    # "$i$a$-firstOrNull-TrackSelector$applySelection$rendererIndex$1\\2\\71\\0":I
    :goto_0
    if-eqz v8, :cond_1

    goto :goto_1

    .line 72
    .end local v5    # "element\\1":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    .line 54
    .end local v1    # "$this$firstOrNull\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull\\1\\54":I
    :goto_1
    check-cast v5, Ljava/lang/Integer;

    .line 53
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 55
    .local v1, "rendererIndex":I
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v2

    const-string v3, "buildUponParameters(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .local v2, "builder":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    invoke-virtual {v2, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverridesOfType(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 57
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v3

    const-string v4, "getTrackGroups(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .local v3, "groups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    iget v4, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge p3, v4, :cond_4

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 62
    new-instance v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    filled-new-array {p4}, [I

    move-result-object v5

    invoke-direct {v4, p3, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 59
    invoke-virtual {v2, v1, v3, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 65
    :cond_4
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 66
    return-void

    .line 54
    .end local v1    # "rendererIndex":I
    .end local v2    # "builder":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .end local v3    # "groups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    :cond_5
    return-void
.end method

.method private final extractTracks(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;I)Ljava/util/List;
    .locals 13
    .param p1, "selector"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
    .param p2, "trackType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 31
    .local v0, "mapped":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 32
    nop

    .local v1, "$this$firstOrNull\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 69
    .local v3, "$i$f$firstOrNull\\1\\32":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element\\1":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "it\\2":I
    const/4 v7, 0x0

    .line 32
    .local v7, "$i$a$-firstOrNull-TrackSelector$extractTracks$rendererIndex$1\\2\\69\\0":I
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v8

    if-ne v8, p2, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v2

    .line 69
    .end local v6    # "it\\2":I
    .end local v7    # "$i$a$-firstOrNull-TrackSelector$extractTracks$rendererIndex$1\\2\\69\\0":I
    :goto_0
    if-eqz v8, :cond_1

    goto :goto_1

    .line 70
    .end local v5    # "element\\1":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    .line 32
    .end local v1    # "$this$firstOrNull\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull\\1\\32":I
    :goto_1
    check-cast v5, Ljava/lang/Integer;

    .line 31
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 33
    .local v1, "rendererIndex":I
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    const-string v3, "getTrackGroups(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .local v2, "groups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 35
    .local v3, "out":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "groupIndex":I
    iget v5, v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    :goto_2
    if-ge v4, v5, :cond_6

    .line 36
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v6

    const-string v7, "get(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .local v6, "group":Landroidx/media3/common/TrackGroup;
    const/4 v7, 0x0

    .local v7, "trackIndex":I
    iget v8, v6, Landroidx/media3/common/TrackGroup;->length:I

    :goto_3
    if-ge v7, v8, :cond_5

    .line 38
    invoke-virtual {v6, v7}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v9

    const-string v10, "getFormat(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .local v9, "format":Landroidx/media3/common/Format;
    iget-object v10, v9, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-nez v10, :cond_4

    iget-object v10, v9, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-nez v10, :cond_4

    add-int/lit8 v10, v7, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Track "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 40
    .local v10, "label":Ljava/lang/String;
    :cond_4
    move-object v11, v3

    check-cast v11, Ljava/util/Collection;

    new-instance v12, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;

    invoke-direct {v12, v4, v7, v10}, Lcom/bayyari/tv/player/TrackSelector$TrackInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v9    # "format":Landroidx/media3/common/Format;
    .end local v10    # "label":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 35
    .end local v6    # "group":Landroidx/media3/common/TrackGroup;
    .end local v7    # "trackIndex":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 43
    .end local v4    # "groupIndex":I
    :cond_6
    return-object v3

    .line 32
    .end local v1    # "rendererIndex":I
    .end local v2    # "groups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v3    # "out":Ljava/util/List;
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final applyAudioTrack(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;II)V
    .locals 1
    .param p1, "selector"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/bayyari/tv/player/TrackSelector;->applySelection(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;III)V

    .line 23
    return-void
.end method

.method public final applySubtitleTrack(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;II)V
    .locals 1
    .param p1, "selector"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/bayyari/tv/player/TrackSelector;->applySelection(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;III)V

    .line 27
    return-void
.end method

.method public final audioTracks(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)Ljava/util/List;
    .locals 1
    .param p1, "selector"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;",
            ")",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bayyari/tv/player/TrackSelector;->extractTracks(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final subtitleTracks(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)Ljava/util/List;
    .locals 1
    .param p1, "selector"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;",
            ")",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/bayyari/tv/player/TrackSelector;->extractTracks(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Landroidx/media3/extractor/text/SubtitleParser$-CC;
.super Ljava/lang/Object;
.source "SubtitleParser.java"


# direct methods
.method public static $default$parse(Landroidx/media3/extractor/text/SubtitleParser;[BLandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 6
    .param p0, "_this"    # Landroidx/media3/extractor/text/SubtitleParser;
    .param p1, "data"    # [B
    .param p2, "outputOptions"    # Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;

    .line 152
    .local p3, "output":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/extractor/text/CuesWithTiming;>;"
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "data":[B
    .end local p2    # "outputOptions":Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;
    .end local p3    # "output":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/extractor/text/CuesWithTiming;>;"
    .local v1, "data":[B
    .local v4, "outputOptions":Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;
    .local v5, "output":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/extractor/text/CuesWithTiming;>;"
    invoke-interface/range {v0 .. v5}, Landroidx/media3/extractor/text/SubtitleParser;->parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V

    .line 153
    return-void
.end method

.method public static $default$parseToLegacySubtitle(Landroidx/media3/extractor/text/SubtitleParser;[BII)Landroidx/media3/extractor/text/Subtitle;
    .locals 7
    .param p0, "_this"    # Landroidx/media3/extractor/text/SubtitleParser;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 203
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 204
    .local v0, "cuesWithTimingList":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/extractor/text/CuesWithTiming;>;"
    invoke-static {}, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->access$000()Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;

    move-result-object v5

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/media3/extractor/text/SubtitleParser$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Landroidx/media3/extractor/text/SubtitleParser$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/ImmutableList$Builder;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "data":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "data":[B
    .local v3, "offset":I
    .local v4, "length":I
    invoke-interface/range {v1 .. v6}, Landroidx/media3/extractor/text/SubtitleParser;->parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V

    .line 205
    new-instance p1, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public static $default$reset(Landroidx/media3/extractor/text/SubtitleParser;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/extractor/text/SubtitleParser;

    .line 215
    return-void
.end method

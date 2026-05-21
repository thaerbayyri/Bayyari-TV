.class public final synthetic Landroidx/media3/extractor/ExtractorsFactory$-CC;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# direct methods
.method public static $default$createExtractors(Landroidx/media3/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/extractor/ExtractorsFactory;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 79
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorsFactory;->createExtractors()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public static $default$experimentalSetTextTrackTranscodingEnabled(Landroidx/media3/extractor/ExtractorsFactory;Z)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 0
    .param p0, "_this"    # Landroidx/media3/extractor/ExtractorsFactory;
    .param p1, "textTrackTranscodingEnabled"    # Z

    .line 51
    return-object p0
.end method

.method public static $default$setSubtitleParserFactory(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 0
    .param p0, "_this"    # Landroidx/media3/extractor/ExtractorsFactory;
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 64
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/media3/extractor/ExtractorsFactory;->EMPTY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 1

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    return-object v0
.end method

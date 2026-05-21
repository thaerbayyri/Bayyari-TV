.class public final Lcom/bayyari/tv/util/M3uParser;
.super Ljava/lang/Object;
.source "M3uParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/util/M3uParser$ExtInf;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nM3uParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 M3uParser.kt\ncom/bayyari/tv/util/M3uParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,114:1\n1#2:115\n1321#3,2:116\n*S KotlinDebug\n*F\n+ 1 M3uParser.kt\ncom/bayyari/tv/util/M3uParser\n*L\n93#1:116,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0015B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008H\u0002J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J\u001c\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00112\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J\u0017\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0013\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/bayyari/tv/util/M3uParser;",
        "",
        "<init>",
        "()V",
        "parse",
        "",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "content",
        "",
        "serverId",
        "",
        "parseExtInf",
        "Lcom/bayyari/tv/util/M3uParser$ExtInf;",
        "line",
        "findUnquotedComma",
        "s",
        "parseAttributes",
        "",
        "parseStreamIdFromUrl",
        "url",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "ExtInf",
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


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final findUnquotedComma(Ljava/lang/String;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "inQuotes":Z
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    .line 84
    goto :goto_2

    .line 83
    :sswitch_0
    if-nez v0, :cond_1

    return v1

    .line 82
    :sswitch_1
    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v0, v4

    .line 80
    .end local v3    # "c":C
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic parse$default(Lcom/bayyari/tv/util/M3uParser;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 22
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/util/M3uParser;->parse(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static final parse$lambda$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final parse$lambda$1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final parseAttributes(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 92
    .local v0, "map":Ljava/util/Map;
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "([a-zA-Z0-9\\-]+)\\s*=\\s*\"([^\"]*)\""

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "regex":Lkotlin/text/Regex;
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v2, v4, v5, v3}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .local v2, "$this$forEach\\1":Lkotlin/sequences/Sequence;
    const/4 v3, 0x0

    .line 116
    .local v3, "$i$f$forEach\\1\\93":I
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element\\1":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/text/MatchResult;

    .local v7, "match\\2":Lkotlin/text/MatchResult;
    const/4 v8, 0x0

    .line 94
    .local v8, "$i$a$-forEach-M3uParser$parseAttributes$1\\2\\116\\0":I
    invoke-interface {v7}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "toLowerCase(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    nop

    .line 116
    .end local v7    # "match\\2":Lkotlin/text/MatchResult;
    .end local v8    # "$i$a$-forEach-M3uParser$parseAttributes$1\\2\\116\\0":I
    nop

    .end local v6    # "element\\1":Ljava/lang/Object;
    goto :goto_0

    .line 117
    :cond_0
    nop

    .line 96
    .end local v2    # "$this$forEach\\1":Lkotlin/sequences/Sequence;
    .end local v3    # "$i$f$forEach\\1\\93":I
    return-object v0
.end method

.method private final parseExtInf(Ljava/lang/String;)Lcom/bayyari/tv/util/M3uParser$ExtInf;
    .locals 11
    .param p1, "line"    # Ljava/lang/String;

    .line 63
    const-string v0, ":"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 63
    .local v0, "$i$a$-ifBlank-M3uParser$parseExtInf$afterColon$1\\1\\63\\0":I
    new-instance v1, Lcom/bayyari/tv/util/M3uParser$ExtInf;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/bayyari/tv/util/M3uParser$ExtInf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .end local v0    # "$i$a$-ifBlank-M3uParser$parseExtInf$afterColon$1\\1\\63\\0":I
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "afterColon":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/bayyari/tv/util/M3uParser;->findUnquotedComma(Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, "commaIdx":I
    const-string v3, "substring(...)"

    if-ltz v2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 66
    .local v4, "attrsPart":Ljava/lang/String;
    :goto_0
    if-ltz v2, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 68
    .local v3, "title":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v4}, Lcom/bayyari/tv/util/M3uParser;->parseAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 69
    .local v5, "attrs":Ljava/util/Map;
    const-string v6, "tvg-name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object v7, v6

    .line 115
    .local v7, "it\\2":Ljava/lang/String;
    const/4 v8, 0x0

    .line 69
    .local v8, "$i$a$-takeIf-M3uParser$parseExtInf$name$1\\2\\69\\0":I
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    .end local v7    # "it\\2":Ljava/lang/String;
    .end local v8    # "$i$a$-takeIf-M3uParser$parseExtInf$name$1\\2\\69\\0":I
    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_5

    :cond_4
    move-object v6, v3

    .line 70
    .local v6, "name":Ljava/lang/String;
    :cond_5
    new-instance v7, Lcom/bayyari/tv/util/M3uParser$ExtInf;

    .line 71
    nop

    .line 72
    const-string v8, "tvg-id"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_6

    move-object v8, v1

    .line 73
    :cond_6
    const-string v9, "tvg-logo"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_7

    move-object v9, v1

    .line 74
    :cond_7
    const-string v10, "group-title"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, v10

    .line 70
    :goto_3
    invoke-direct {v7, v6, v8, v9, v1}, Lcom/bayyari/tv/util/M3uParser$ExtInf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method private final parseStreamIdFromUrl(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 101
    const/16 v0, 0x3f

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "noQuery":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-static {v0, v3, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "tail":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-static {v3, v4, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    .local v2, "numeric":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    move-object v1, v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 115
    .local v1, "it\\1":I
    const/4 v4, 0x0

    .line 104
    .local v4, "$i$a$-let-M3uParser$parseStreamIdFromUrl$1\\1\\104\\0":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .end local v1    # "it\\1":I
    .end local v4    # "$i$a$-let-M3uParser$parseStreamIdFromUrl$1\\1\\104\\0":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final parse(Ljava/lang/String;I)Ljava/util/List;
    .locals 25
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "serverId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "content"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/util/M3uParser$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/bayyari/tv/util/M3uParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/util/M3uParser$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/bayyari/tv/util/M3uParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v2

    .line 24
    .local v2, "lines":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "#EXTM3U"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 26
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 27
    .local v3, "out":Ljava/util/List;
    const/4 v4, 0x0

    .line 28
    .local v4, "current":Lcom/bayyari/tv/util/M3uParser$ExtInf;
    const/4 v8, -0x1

    .line 29
    .local v8, "fallbackId":I
    const/4 v9, 0x1

    .line 30
    .local v9, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 31
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 32
    .local v10, "line":Ljava/lang/String;
    nop

    .line 33
    const-string v11, "#EXTINF"

    invoke-static {v10, v11, v5, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-direct {v0, v10}, Lcom/bayyari/tv/util/M3uParser;->parseExtInf(Ljava/lang/String;)Lcom/bayyari/tv/util/M3uParser$ExtInf;

    move-result-object v4

    move-object/from16 v23, v10

    goto/16 :goto_2

    .line 34
    :cond_1
    const-string v11, "#"

    invoke-static {v10, v11, v5, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 36
    move-object/from16 v24, v4

    .line 37
    .local v24, "info":Lcom/bayyari/tv/util/M3uParser$ExtInf;
    if-eqz v24, :cond_5

    .line 38
    invoke-direct {v0, v10}, Lcom/bayyari/tv/util/M3uParser;->parseStreamIdFromUrl(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v12, v11

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v8, -0x1

    .end local v8    # "fallbackId":I
    .local v11, "fallbackId":I
    move v12, v8

    .line 115
    .local v12, "it\\1":I
    const/4 v13, 0x0

    .line 38
    .local v13, "$i$a$-also-M3uParser$parse$streamId$1\\1\\38\\0":I
    move v8, v11

    .line 39
    .end local v11    # "fallbackId":I
    .end local v13    # "$i$a$-also-M3uParser$parse$streamId$1\\1\\38\\0":I
    .restart local v8    # "fallbackId":I
    .local v12, "streamId":I
    :goto_1
    move-object v11, v3

    check-cast v11, Ljava/util/Collection;

    .line 40
    nop

    .line 41
    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/util/M3uParser$ExtInf;->getName()Ljava/lang/String;

    move-result-object v13

    .line 42
    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/util/M3uParser$ExtInf;->getLogo()Ljava/lang/String;

    move-result-object v14

    .line 43
    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/util/M3uParser$ExtInf;->getGroupTitle()Ljava/lang/String;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 115
    const/4 v15, 0x0

    .line 43
    .local v15, "$i$a$-ifBlank-M3uParser$parse$1\\2\\43\\0":I
    nop

    .end local v15    # "$i$a$-ifBlank-M3uParser$parse$1\\2\\43\\0":I
    const-string v15, "uncategorized"

    :cond_3
    check-cast v15, Ljava/lang/String;

    .line 44
    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/util/M3uParser$ExtInf;->getGroupTitle()Ljava/lang/String;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 115
    const/16 v16, 0x0

    .line 44
    .local v16, "$i$a$-ifBlank-M3uParser$parse$2\\3\\44\\0":I
    nop

    .end local v16    # "$i$a$-ifBlank-M3uParser$parse$2\\3\\44\\0":I
    const-string v16, "Uncategorized"

    :cond_4
    check-cast v16, Ljava/lang/String;

    .line 45
    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/util/M3uParser$ExtInf;->getTvgId()Ljava/lang/String;

    move-result-object v17

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 50
    nop

    .line 39
    move-object/from16 v18, v11

    new-instance v11, Lcom/bayyari/tv/domain/model/Channel;

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v22, v20

    const-wide/16 v20, 0x0

    move-object/from16 v23, v10

    move-object/from16 v10, v22

    move/from16 v22, p2

    .end local v10    # "line":Ljava/lang/String;
    .local v23, "line":Ljava/lang/String;
    invoke-direct/range {v11 .. v23}, Lcom/bayyari/tv/domain/model/Channel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    const/4 v4, 0x0

    goto :goto_2

    .line 37
    .end local v12    # "streamId":I
    .end local v23    # "line":Ljava/lang/String;
    .restart local v10    # "line":Ljava/lang/String;
    :cond_5
    move-object/from16 v23, v10

    .end local v10    # "line":Ljava/lang/String;
    .restart local v23    # "line":Ljava/lang/String;
    goto :goto_2

    .line 34
    .end local v23    # "line":Ljava/lang/String;
    .end local v24    # "info":Lcom/bayyari/tv/util/M3uParser$ExtInf;
    .restart local v10    # "line":Ljava/lang/String;
    :cond_6
    move-object/from16 v23, v10

    .line 56
    .end local v10    # "line":Ljava/lang/String;
    .restart local v23    # "line":Ljava/lang/String;
    :goto_2
    nop

    .end local v23    # "line":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 58
    :cond_7
    return-object v3

    .line 24
    .end local v3    # "out":Ljava/util/List;
    .end local v4    # "current":Lcom/bayyari/tv/util/M3uParser$ExtInf;
    .end local v8    # "fallbackId":I
    .end local v9    # "i":I
    :cond_8
    :goto_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.class public final synthetic Landroidx/work/impl/model/WorkTagDao$-CC;
.super Ljava/lang/Object;
.source "WorkTagDao.kt"


# direct methods
.method public static $default$insertTags(Landroidx/work/impl/model/WorkTagDao;Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .param p0, "_this"    # Landroidx/work/impl/model/WorkTagDao;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tags"    # Ljava/util/Set;

    .line 0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 68
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .local v4, "tag":Ljava/lang/String;
    const/4 v5, 0x0

    .line 64
    .local v5, "$i$a$-forEach-WorkTagDao$insertTags$1":I
    new-instance v6, Landroidx/work/impl/model/WorkTag;

    invoke-direct {v6, v4, p1}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v6}, Landroidx/work/impl/model/WorkTagDao;->insert(Landroidx/work/impl/model/WorkTag;)V

    .line 68
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "$i$a$-forEach-WorkTagDao$insertTags$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 69
    :cond_0
    nop

    .line 65
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public static synthetic access$insertTags$jd(Landroidx/work/impl/model/WorkTagDao;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p0, "$this"    # Landroidx/work/impl/model/WorkTagDao;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tags"    # Ljava/util/Set;

    .line 23
    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/WorkTagDao$-CC;->$default$insertTags(Landroidx/work/impl/model/WorkTagDao;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

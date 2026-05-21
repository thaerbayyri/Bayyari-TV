.class public Landroidx/tvprovider/media/tv/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static varargs concatAll([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[[TT;)[TT;"
        }
    .end annotation

    .line 37
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "rest":[[Ljava/lang/Object;, "[[TT;"
    array-length v0, p0

    .line 38
    .local v0, "totalLength":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 39
    .local v4, "array":[Ljava/lang/Object;, "[TT;"
    array-length v5, v4

    add-int/2addr v0, v5

    .line 38
    .end local v4    # "array":[Ljava/lang/Object;, "[TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    array-length v3, p0

    .line 43
    .local v3, "offset":I
    array-length v4, p1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    .line 44
    .local v6, "array":[Ljava/lang/Object;, "[TT;"
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    array-length v7, v6

    add-int/2addr v3, v7

    .line 43
    .end local v6    # "array":[Ljava/lang/Object;, "[TT;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 47
    :cond_1
    return-object v1
.end method

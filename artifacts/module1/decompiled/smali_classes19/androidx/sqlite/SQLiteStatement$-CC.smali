.class public final synthetic Landroidx/sqlite/SQLiteStatement$-CC;
.super Ljava/lang/Object;
.source "SQLiteStatement.kt"


# direct methods
.method public static $default$bindBoolean(Landroidx/sqlite/SQLiteStatement;IZ)V
    .locals 2
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 82
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0, p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 83
    return-void
.end method

.method public static $default$bindFloat(Landroidx/sqlite/SQLiteStatement;IF)V
    .locals 2
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 54
    float-to-double v0, p2

    invoke-interface {p0, p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 55
    return-void
.end method

.method public static $default$bindInt(Landroidx/sqlite/SQLiteStatement;II)V
    .locals 2
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 72
    int-to-long v0, p2

    invoke-interface {p0, p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 73
    return-void
.end method

.method public static $default$getBoolean(Landroidx/sqlite/SQLiteStatement;I)Z
    .locals 4
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;
    .param p1, "index"    # I

    .line 151
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$getColumnNames(Landroidx/sqlite/SQLiteStatement;)Ljava/util/List;
    .locals 5
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;

    .line 191
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 234
    move v3, v2

    .local v3, "i":I
    const/4 v4, 0x0

    .line 191
    .local v4, "$i$a$-List-SQLiteStatement$getColumnNames$1":I
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "i":I
    .end local v4    # "$i$a$-List-SQLiteStatement$getColumnNames$1":I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static $default$getFloat(Landroidx/sqlite/SQLiteStatement;I)F
    .locals 2
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;
    .param p1, "index"    # I

    .line 123
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static $default$getInt(Landroidx/sqlite/SQLiteStatement;I)I
    .locals 2
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;
    .param p1, "index"    # I

    .line 141
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

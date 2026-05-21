.class Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "SeriesDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/bayyari/tv/data/local/entities/SeriesEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$1;->this$0:Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/bayyari/tv/data/local/entities/SeriesEntity;)V
    .locals 3
    .param p1, "statement"    # Landroidx/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getSeriesId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 45
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 46
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 50
    :goto_0
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getCover()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 51
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 55
    :goto_1
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getPlot()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getPlot()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 60
    :goto_2
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getCast()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 61
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 63
    :cond_3
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getCast()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 65
    :goto_3
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getDirector()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 66
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 68
    :cond_4
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getDirector()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 70
    :goto_4
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getGenre()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 71
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 73
    :cond_5
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 75
    :goto_5
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 78
    :cond_6
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 80
    :goto_6
    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getLastModified()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 81
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getRating()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 82
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 84
    :cond_7
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getRating()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 86
    :goto_7
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_8

    .line 87
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 89
    :cond_8
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 91
    :goto_8
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getServerId()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 92
    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 34
    check-cast p2, Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/bayyari/tv/data/local/entities/SeriesEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "INSERT OR REPLACE INTO `series` (`seriesId`,`name`,`cover`,`plot`,`cast`,`director`,`genre`,`releaseDate`,`lastModified`,`rating`,`categoryId`,`serverId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.class Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "WatchHistoryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$1;->this$0:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;)V
    .locals 3
    .param p1, "statement"    # Landroidx/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
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
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 45
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getContentId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 46
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 51
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getPositionMs()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 52
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getDurationMs()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 53
    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getWatchedAt()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 54
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getServerId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 55
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 60
    :goto_1
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getPoster()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_2

    .line 61
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getPoster()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 65
    :goto_2
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
    check-cast p2, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "INSERT OR REPLACE INTO `watch_history` (`id`,`contentId`,`contentType`,`positionMs`,`durationMs`,`watchedAt`,`serverId`,`title`,`poster`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.class Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "ChannelDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/bayyari/tv/data/local/entities/ChannelEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$1;->this$0:Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/bayyari/tv/data/local/entities/ChannelEntity;)V
    .locals 3
    .param p1, "statement"    # Landroidx/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/bayyari/tv/data/local/entities/ChannelEntity;
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

    .line 45
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getStreamId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 46
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 51
    :goto_0
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getStreamIcon()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getStreamIcon()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 56
    :goto_1
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 57
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 61
    :goto_2
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 66
    :goto_3
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getTvArchive()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 67
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getTvArchiveDuration()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 68
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getEpgChannelId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 69
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 71
    :cond_4
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getEpgChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 73
    :goto_4
    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getAdded()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 74
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getServerId()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 75
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getDirectStreamUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_5

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 78
    :cond_5
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getDirectStreamUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 80
    :goto_5
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

    .line 35
    check-cast p2, Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/bayyari/tv/data/local/entities/ChannelEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "INSERT OR REPLACE INTO `channels` (`streamId`,`name`,`streamIcon`,`categoryId`,`categoryName`,`tvArchive`,`tvArchiveDuration`,`epgChannelId`,`added`,`serverId`,`directStreamUrl`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

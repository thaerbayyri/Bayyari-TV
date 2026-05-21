.class Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "MovieDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/bayyari/tv/data/local/entities/MovieEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$1;->this$0:Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/bayyari/tv/data/local/entities/MovieEntity;)V
    .locals 3
    .param p1, "statement"    # Landroidx/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/bayyari/tv/data/local/entities/MovieEntity;
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
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getStreamId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 45
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 46
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 50
    :goto_0
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getStreamIcon()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 51
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getStreamIcon()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 55
    :goto_1
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 60
    :goto_2
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getRating()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 61
    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getRating5Based()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 62
    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getAdded()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 63
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getContainerExtension()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    .line 64
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getContainerExtension()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 68
    :goto_3
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getServerId()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 69
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
    check-cast p2, Lcom/bayyari/tv/data/local/entities/MovieEntity;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/bayyari/tv/data/local/entities/MovieEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "INSERT OR REPLACE INTO `movies` (`streamId`,`name`,`streamIcon`,`categoryId`,`rating`,`rating5Based`,`added`,`containerExtension`,`serverId`) VALUES (?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

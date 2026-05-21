.class Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "FavoriteDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/bayyari/tv/data/local/entities/FavoriteEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$1;->this$0:Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/bayyari/tv/data/local/entities/FavoriteEntity;)V
    .locals 3
    .param p1, "statement"    # Landroidx/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
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
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 45
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->getContentId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 46
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 51
    :goto_0
    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->getServerId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 52
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;->getAddedAt()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 53
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
    check-cast p2, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/bayyari/tv/data/local/entities/FavoriteEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "INSERT OR REPLACE INTO `favorites` (`id`,`contentId`,`contentType`,`serverId`,`addedAt`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method

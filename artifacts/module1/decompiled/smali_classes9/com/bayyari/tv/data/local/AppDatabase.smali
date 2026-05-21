.class public abstract Lcom/bayyari/tv/data/local/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u000fH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/bayyari/tv/data/local/AppDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "channelDao",
        "Lcom/bayyari/tv/data/local/dao/ChannelDao;",
        "movieDao",
        "Lcom/bayyari/tv/data/local/dao/MovieDao;",
        "seriesDao",
        "Lcom/bayyari/tv/data/local/dao/SeriesDao;",
        "favoriteDao",
        "Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
        "epgDao",
        "Lcom/bayyari/tv/data/local/dao/EpgDao;",
        "watchHistoryDao",
        "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
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

    .line 32
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract channelDao()Lcom/bayyari/tv/data/local/dao/ChannelDao;
.end method

.method public abstract epgDao()Lcom/bayyari/tv/data/local/dao/EpgDao;
.end method

.method public abstract favoriteDao()Lcom/bayyari/tv/data/local/dao/FavoriteDao;
.end method

.method public abstract movieDao()Lcom/bayyari/tv/data/local/dao/MovieDao;
.end method

.method public abstract seriesDao()Lcom/bayyari/tv/data/local/dao/SeriesDao;
.end method

.method public abstract watchHistoryDao()Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
.end method

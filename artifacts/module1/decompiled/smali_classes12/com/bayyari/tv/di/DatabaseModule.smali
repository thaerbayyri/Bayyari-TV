.class public final Lcom/bayyari/tv/di/DatabaseModule;
.super Ljava/lang/Object;
.source "DatabaseModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\u0005H\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bayyari/tv/di/DatabaseModule;",
        "",
        "<init>",
        "()V",
        "provideDatabase",
        "Lcom/bayyari/tv/data/local/AppDatabase;",
        "context",
        "Landroid/content/Context;",
        "provideChannelDao",
        "Lcom/bayyari/tv/data/local/dao/ChannelDao;",
        "db",
        "provideMovieDao",
        "Lcom/bayyari/tv/data/local/dao/MovieDao;",
        "provideSeriesDao",
        "Lcom/bayyari/tv/data/local/dao/SeriesDao;",
        "provideFavoriteDao",
        "Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
        "provideEpgDao",
        "Lcom/bayyari/tv/data/local/dao/EpgDao;",
        "provideWatchHistoryDao",
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


# static fields
.field public static final INSTANCE:Lcom/bayyari/tv/di/DatabaseModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bayyari/tv/di/DatabaseModule;

    invoke-direct {v0}, Lcom/bayyari/tv/di/DatabaseModule;-><init>()V

    sput-object v0, Lcom/bayyari/tv/di/DatabaseModule;->INSTANCE:Lcom/bayyari/tv/di/DatabaseModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideChannelDao(Lcom/bayyari/tv/data/local/AppDatabase;)Lcom/bayyari/tv/data/local/dao/ChannelDao;
    .locals 1
    .param p1, "db"    # Lcom/bayyari/tv/data/local/AppDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/AppDatabase;->channelDao()Lcom/bayyari/tv/data/local/dao/ChannelDao;

    move-result-object v0

    return-object v0
.end method

.method public final provideDatabase(Landroid/content/Context;)Lcom/bayyari/tv/data/local/AppDatabase;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-class v0, Lcom/bayyari/tv/data/local/AppDatabase;

    const-string v1, "bayyari.db"

    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/local/AppDatabase;

    return-object v0
.end method

.method public final provideEpgDao(Lcom/bayyari/tv/data/local/AppDatabase;)Lcom/bayyari/tv/data/local/dao/EpgDao;
    .locals 1
    .param p1, "db"    # Lcom/bayyari/tv/data/local/AppDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/AppDatabase;->epgDao()Lcom/bayyari/tv/data/local/dao/EpgDao;

    move-result-object v0

    return-object v0
.end method

.method public final provideFavoriteDao(Lcom/bayyari/tv/data/local/AppDatabase;)Lcom/bayyari/tv/data/local/dao/FavoriteDao;
    .locals 1
    .param p1, "db"    # Lcom/bayyari/tv/data/local/AppDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/AppDatabase;->favoriteDao()Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    move-result-object v0

    return-object v0
.end method

.method public final provideMovieDao(Lcom/bayyari/tv/data/local/AppDatabase;)Lcom/bayyari/tv/data/local/dao/MovieDao;
    .locals 1
    .param p1, "db"    # Lcom/bayyari/tv/data/local/AppDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/AppDatabase;->movieDao()Lcom/bayyari/tv/data/local/dao/MovieDao;

    move-result-object v0

    return-object v0
.end method

.method public final provideSeriesDao(Lcom/bayyari/tv/data/local/AppDatabase;)Lcom/bayyari/tv/data/local/dao/SeriesDao;
    .locals 1
    .param p1, "db"    # Lcom/bayyari/tv/data/local/AppDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/AppDatabase;->seriesDao()Lcom/bayyari/tv/data/local/dao/SeriesDao;

    move-result-object v0

    return-object v0
.end method

.method public final provideWatchHistoryDao(Lcom/bayyari/tv/data/local/AppDatabase;)Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .locals 1
    .param p1, "db"    # Lcom/bayyari/tv/data/local/AppDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/AppDatabase;->watchHistoryDao()Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    move-result-object v0

    return-object v0
.end method

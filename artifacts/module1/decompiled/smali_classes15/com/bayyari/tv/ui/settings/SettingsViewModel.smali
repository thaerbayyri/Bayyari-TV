.class public final Lcom/bayyari/tv/ui/settings/SettingsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SettingsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001BA\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0013J\u0006\u0010\u001f\u001a\u00020\u0015J\u000e\u0010 \u001a\u00020\u0015H\u0086@\u00a2\u0006\u0002\u0010!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/bayyari/tv/ui/settings/SettingsViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "prefs",
        "Lcom/bayyari/tv/util/EncryptedPrefs;",
        "channelDao",
        "Lcom/bayyari/tv/data/local/dao/ChannelDao;",
        "movieDao",
        "Lcom/bayyari/tv/data/local/dao/MovieDao;",
        "seriesDao",
        "Lcom/bayyari/tv/data/local/dao/SeriesDao;",
        "epgDao",
        "Lcom/bayyari/tv/data/local/dao/EpgDao;",
        "watchHistoryDao",
        "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/util/EncryptedPrefs;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/data/local/dao/MovieDao;Lcom/bayyari/tv/data/local/dao/SeriesDao;Lcom/bayyari/tv/data/local/dao/EpgDao;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V",
        "getServerInfo",
        "",
        "setDefaultPlayer",
        "",
        "value",
        "setStreamFormat",
        "setBufferSizeMs",
        "",
        "setAutoPlayNext",
        "enabled",
        "",
        "setParentalPin",
        "pin",
        "signOut",
        "clearCache",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

.field private final epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

.field private final movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

.field private final prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

.field private final seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

.field private final watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/util/EncryptedPrefs;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/data/local/dao/MovieDao;Lcom/bayyari/tv/data/local/dao/SeriesDao;Lcom/bayyari/tv/data/local/dao/EpgDao;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V
    .locals 1
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "prefs"    # Lcom/bayyari/tv/util/EncryptedPrefs;
    .param p3, "channelDao"    # Lcom/bayyari/tv/data/local/dao/ChannelDao;
    .param p4, "movieDao"    # Lcom/bayyari/tv/data/local/dao/MovieDao;
    .param p5, "seriesDao"    # Lcom/bayyari/tv/data/local/dao/SeriesDao;
    .param p6, "epgDao"    # Lcom/bayyari/tv/data/local/dao/EpgDao;
    .param p7, "watchHistoryDao"    # Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelDao"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movieDao"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seriesDao"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epgDao"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watchHistoryDao"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 19
    iput-object p2, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    .line 20
    iput-object p3, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    .line 21
    iput-object p4, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    .line 22
    iput-object p5, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    .line 23
    iput-object p6, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

    .line 24
    iput-object p7, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    .line 17
    return-void
.end method

.method public static final synthetic access$getAuthRepository$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    return-object v0
.end method

.method public static final synthetic access$getChannelDao$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/local/dao/ChannelDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    return-object v0
.end method

.method public static final synthetic access$getEpgDao$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/local/dao/EpgDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

    return-object v0
.end method

.method public static final synthetic access$getMovieDao$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/local/dao/MovieDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    return-object v0
.end method

.method public static final synthetic access$getSeriesDao$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/local/dao/SeriesDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    return-object v0
.end method

.method public static final synthetic access$getWatchHistoryDao$p(Lcom/bayyari/tv/ui/settings/SettingsViewModel;)Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/settings/SettingsViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    return-object v0
.end method


# virtual methods
.method public final clearCache(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bayyari/tv/ui/settings/SettingsViewModel$clearCache$2;-><init>(Lcom/bayyari/tv/ui/settings/SettingsViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 55
    return-object v0
.end method

.method public final getServerInfo()Ljava/lang/String;
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-virtual {v0}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 29
    .local v0, "server":Lcom/bayyari/tv/domain/model/Server;
    :cond_0
    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getExpiresAtEpochSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getExpiresAtEpochSeconds()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "-"

    .line 30
    .local v1, "expiry":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getMaxConnections()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expiry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final setAutoPlayNext(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0, p1}, Lcom/bayyari/tv/util/EncryptedPrefs;->setAutoPlayNext(Z)V

    return-void
.end method

.method public final setBufferSizeMs(I)V
    .locals 1
    .param p1, "value"    # I

    .line 35
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0, p1}, Lcom/bayyari/tv/util/EncryptedPrefs;->setBufferSizeMs(I)V

    return-void
.end method

.method public final setDefaultPlayer(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0, p1}, Lcom/bayyari/tv/util/EncryptedPrefs;->setDefaultPlayer(Ljava/lang/String;)V

    return-void
.end method

.method public final setParentalPin(Ljava/lang/String;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    const-string v0, "pin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0, p1}, Lcom/bayyari/tv/util/EncryptedPrefs;->setParentalPin(Ljava/lang/String;)V

    return-void
.end method

.method public final setStreamFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v0, p1}, Lcom/bayyari/tv/util/EncryptedPrefs;->setStreamFormat(Ljava/lang/String;)V

    return-void
.end method

.method public final signOut()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/bayyari/tv/ui/settings/SettingsViewModel;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/util/EncryptedPrefs;->setActiveServerId(I)V

    .line 46
    return-void
.end method

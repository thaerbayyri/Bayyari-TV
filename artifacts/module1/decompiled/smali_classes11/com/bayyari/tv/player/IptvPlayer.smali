.class public final Lcom/bayyari/tv/player/IptvPlayer;
.super Ljava/lang/Object;
.source "IptvPlayer.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u000bJ\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0012J\u000e\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fJ\u0016\u0010!\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fJ\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#J\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0#J\u001a\u0010&\u001a\u00020\u00122\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00120(J$\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020)2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00120(H\u0002J\u0010\u0010,\u001a\u00020-2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/bayyari/tv/player/IptvPlayer;",
        "",
        "appContext",
        "Landroid/content/Context;",
        "loadControl",
        "Landroidx/media3/exoplayer/LoadControl;",
        "<init>",
        "(Landroid/content/Context;Landroidx/media3/exoplayer/LoadControl;)V",
        "trackSelector",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;",
        "player",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "mainHandler",
        "Landroid/os/Handler;",
        "retryJob",
        "Lkotlinx/coroutines/Job;",
        "getPlayer",
        "prepare",
        "",
        "url",
        "",
        "playWhenReady",
        "",
        "release",
        "pause",
        "play",
        "setPlaybackSpeed",
        "speed",
        "",
        "setAudioTrack",
        "groupIndex",
        "",
        "trackIndex",
        "setSubtitleTrack",
        "audioTracks",
        "",
        "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;",
        "subtitleTracks",
        "addRetryListener",
        "onFinalError",
        "Lkotlin/Function1;",
        "Landroidx/media3/common/PlaybackException;",
        "scheduleRetry",
        "error",
        "buildMediaSource",
        "Landroidx/media3/exoplayer/source/MediaSource;",
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
.field private final appContext:Landroid/content/Context;

.field private final loadControl:Landroidx/media3/exoplayer/LoadControl;

.field private final mainHandler:Landroid/os/Handler;

.field private final player:Landroidx/media3/exoplayer/ExoPlayer;

.field private retryJob:Lkotlinx/coroutines/Job;

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/LoadControl;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .param p2, "loadControl"    # Landroidx/media3/exoplayer/LoadControl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bayyari/tv/player/IptvPlayer;->appContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/bayyari/tv/player/IptvPlayer;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 35
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lcom/bayyari/tv/player/IptvPlayer;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 39
    nop

    .line 36
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    iget-object v1, p0, Lcom/bayyari/tv/player/IptvPlayer;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    iget-object v1, p0, Lcom/bayyari/tv/player/IptvPlayer;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/bayyari/tv/player/IptvPlayer;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    check-cast v1, Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setTrackSelector(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->mainHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method public static final synthetic access$getPlayer$p(Lcom/bayyari/tv/player/IptvPlayer;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/player/IptvPlayer;

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    return-object v0
.end method

.method public static final synthetic access$scheduleRetry(Lcom/bayyari/tv/player/IptvPlayer;Landroidx/media3/common/PlaybackException;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "$this"    # Lcom/bayyari/tv/player/IptvPlayer;
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;
    .param p2, "onFinalError"    # Lkotlin/jvm/functions/Function1;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/player/IptvPlayer;->scheduleRetry(Landroidx/media3/common/PlaybackException;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final buildMediaSource(Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 100
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    iget-object v2, p0, Lcom/bayyari/tv/player/IptvPlayer;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    .line 102
    .local v1, "factory":Landroidx/media3/datasource/DefaultDataSource$Factory;
    nop

    .line 103
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, ".m3u8"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    const-string v3, "createMediaSource(...)"

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-object v4, v1

    check-cast v4, Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v2, v4}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-static {v0}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/hls/HlsMediaSource;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource;

    goto :goto_0

    .line 105
    :cond_0
    const-string v2, "rtsp"

    invoke-static {p1, v2, v4}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;

    invoke-direct {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;-><init>()V

    invoke-static {v0}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource;

    goto :goto_0

    .line 108
    :cond_1
    new-instance v2, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    move-object v4, v1

    check-cast v4, Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v2, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-static {v0}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource;

    .line 102
    :goto_0
    return-object v2
.end method

.method public static synthetic prepare$default(Lcom/bayyari/tv/player/IptvPlayer;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 46
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/player/IptvPlayer;->prepare(Ljava/lang/String;Z)V

    return-void
.end method

.method private final scheduleRetry(Landroidx/media3/common/PlaybackException;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;
    .param p2, "onFinalError"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/PlaybackException;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->retryJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, p1, v2}, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;-><init>(Lcom/bayyari/tv/player/IptvPlayer;Lkotlin/jvm/functions/Function1;Landroidx/media3/common/PlaybackException;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->retryJob:Lkotlinx/coroutines/Job;

    .line 97
    return-void
.end method


# virtual methods
.method public final addRetryListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "onFinalError"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onFinalError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v1, Lcom/bayyari/tv/player/IptvPlayer$addRetryListener$1;

    invoke-direct {v1, p0, p1}, Lcom/bayyari/tv/player/IptvPlayer$addRetryListener$1;-><init>(Lcom/bayyari/tv/player/IptvPlayer;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 82
    return-void
.end method

.method public final audioTracks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/bayyari/tv/player/TrackSelector;->INSTANCE:Lcom/bayyari/tv/player/TrackSelector;

    iget-object v1, p0, Lcom/bayyari/tv/player/IptvPlayer;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/player/TrackSelector;->audioTracks(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayer()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    return-object v0
.end method

.method public final pause()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->pause()V

    return-void
.end method

.method public final play()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->play()V

    return-void
.end method

.method public final prepare(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "playWhenReady"    # Z

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-direct {p0, p1}, Lcom/bayyari/tv/player/IptvPlayer;->buildMediaSource(Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 48
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    .line 49
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 50
    return-void
.end method

.method public final release()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->retryJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 55
    return-void
.end method

.method public final setAudioTrack(II)V
    .locals 2
    .param p1, "groupIndex"    # I
    .param p2, "trackIndex"    # I

    .line 65
    sget-object v0, Lcom/bayyari/tv/player/TrackSelector;->INSTANCE:Lcom/bayyari/tv/player/TrackSelector;

    iget-object v1, p0, Lcom/bayyari/tv/player/IptvPlayer;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, v1, p1, p2}, Lcom/bayyari/tv/player/TrackSelector;->applyAudioTrack(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;II)V

    .line 66
    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 61
    iget-object v0, p0, Lcom/bayyari/tv/player/IptvPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlaybackSpeed(F)V

    .line 62
    return-void
.end method

.method public final setSubtitleTrack(II)V
    .locals 2
    .param p1, "groupIndex"    # I
    .param p2, "trackIndex"    # I

    .line 69
    sget-object v0, Lcom/bayyari/tv/player/TrackSelector;->INSTANCE:Lcom/bayyari/tv/player/TrackSelector;

    iget-object v1, p0, Lcom/bayyari/tv/player/IptvPlayer;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, v1, p1, p2}, Lcom/bayyari/tv/player/TrackSelector;->applySubtitleTrack(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;II)V

    .line 70
    return-void
.end method

.method public final subtitleTracks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/bayyari/tv/player/TrackSelector;->INSTANCE:Lcom/bayyari/tv/player/TrackSelector;

    iget-object v1, p0, Lcom/bayyari/tv/player/IptvPlayer;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/player/TrackSelector;->subtitleTracks(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

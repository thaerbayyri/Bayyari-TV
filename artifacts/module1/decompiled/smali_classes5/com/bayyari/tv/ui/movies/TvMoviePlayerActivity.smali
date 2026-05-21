.class public final Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;
.super Lcom/bayyari/tv/ui/movies/Hilt_TvMoviePlayerActivity;
.source "TvMoviePlayerActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u0008\u0010\u001c\u001a\u00020\u0019H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "iptvPlayer",
        "Lcom/bayyari/tv/player/IptvPlayer;",
        "getIptvPlayer",
        "()Lcom/bayyari/tv/player/IptvPlayer;",
        "setIptvPlayer",
        "(Lcom/bayyari/tv/player/IptvPlayer;)V",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "getAuthRepository",
        "()Lcom/bayyari/tv/data/repository/AuthRepository;",
        "setAuthRepository",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;)V",
        "streamUrlBuilder",
        "Lcom/bayyari/tv/util/StreamUrlBuilder;",
        "getStreamUrlBuilder",
        "()Lcom/bayyari/tv/util/StreamUrlBuilder;",
        "setStreamUrlBuilder",
        "(Lcom/bayyari/tv/util/StreamUrlBuilder;)V",
        "binding",
        "Lcom/bayyari/tv/databinding/ActivityTvMoviePlayerBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
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
.field public authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lcom/bayyari/tv/databinding/ActivityTvMoviePlayerBinding;

.field public iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/bayyari/tv/ui/movies/Hilt_TvMoviePlayerActivity;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public final getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "authRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "iptvPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStreamUrlBuilder()Lcom/bayyari/tv/util/StreamUrlBuilder;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "streamUrlBuilder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Lcom/bayyari/tv/ui/movies/Hilt_TvMoviePlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/bayyari/tv/databinding/ActivityTvMoviePlayerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ActivityTvMoviePlayerBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityTvMoviePlayerBinding;

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityTvMoviePlayerBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/bayyari/tv/databinding/ActivityTvMoviePlayerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->setContentView(Landroid/view/View;)V

    .line 31
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 33
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityTvMoviePlayerBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/bayyari/tv/databinding/ActivityTvMoviePlayerBinding;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 35
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_movie_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 36
    .local v8, "movieId":I
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    .line 37
    .local v0, "server":Lcom/bayyari/tv/domain/model/Server;
    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->getStreamUrlBuilder()Lcom/bayyari/tv/util/StreamUrlBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getNormalizedUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getPassword()Ljava/lang/String;

    move-result-object v7

    const-string v9, "mp4"

    invoke-virtual/range {v4 .. v9}, Lcom/bayyari/tv/util/StreamUrlBuilder;->movie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v1, v3, v5, v2}, Lcom/bayyari/tv/player/IptvPlayer;->prepare$default(Lcom/bayyari/tv/player/IptvPlayer;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/player/IptvPlayer;->release()V

    .line 45
    invoke-super {p0}, Lcom/bayyari/tv/ui/movies/Hilt_TvMoviePlayerActivity;->onDestroy()V

    .line 46
    return-void
.end method

.method public final setAuthRepository(Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/repository/AuthRepository;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 20
    return-void
.end method

.method public final setIptvPlayer(Lcom/bayyari/tv/player/IptvPlayer;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/player/IptvPlayer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    .line 17
    return-void
.end method

.method public final setStreamUrlBuilder(Lcom/bayyari/tv/util/StreamUrlBuilder;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/util/StreamUrlBuilder;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/TvMoviePlayerActivity;->streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;

    .line 23
    return-void
.end method

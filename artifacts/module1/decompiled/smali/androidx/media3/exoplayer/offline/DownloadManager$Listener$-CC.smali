.class public final synthetic Landroidx/media3/exoplayer/offline/DownloadManager$Listener$-CC;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# direct methods
.method public static $default$onDownloadChanged(Landroidx/media3/exoplayer/offline/DownloadManager$Listener;Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/Download;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;
    .param p2, "download"    # Landroidx/media3/exoplayer/offline/Download;
    .param p3, "finalException"    # Ljava/lang/Exception;

    .line 105
    return-void
.end method

.method public static $default$onDownloadRemoved(Landroidx/media3/exoplayer/offline/DownloadManager$Listener;Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/Download;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;
    .param p2, "download"    # Landroidx/media3/exoplayer/offline/Download;

    .line 113
    return-void
.end method

.method public static $default$onDownloadsPausedChanged(Landroidx/media3/exoplayer/offline/DownloadManager$Listener;Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;
    .param p2, "downloadsPaused"    # Z

    .line 94
    return-void
.end method

.method public static $default$onIdle(Landroidx/media3/exoplayer/offline/DownloadManager$Listener;Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 120
    return-void
.end method

.method public static $default$onInitialized(Landroidx/media3/exoplayer/offline/DownloadManager$Listener;Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 84
    return-void
.end method

.method public static $default$onRequirementsStateChanged(Landroidx/media3/exoplayer/offline/DownloadManager$Listener;Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/Requirements;I)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;
    .param p2, "requirements"    # Landroidx/media3/exoplayer/scheduler/Requirements;
    .param p3, "notMetRequirements"    # I

    .line 133
    return-void
.end method

.method public static $default$onWaitingForRequirementsChanged(Landroidx/media3/exoplayer/offline/DownloadManager$Listener;Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/exoplayer/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;
    .param p2, "waitingForRequirements"    # Z

    .line 146
    return-void
.end method

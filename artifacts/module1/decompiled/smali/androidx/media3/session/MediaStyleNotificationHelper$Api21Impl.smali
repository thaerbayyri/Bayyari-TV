.class Landroidx/media3/session/MediaStyleNotificationHelper$Api21Impl;
.super Ljava/lang/Object;
.source "MediaStyleNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaStyleNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMediaStyle()Landroid/app/Notification$MediaStyle;
    .locals 1

    .line 556
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    return-object v0
.end method

.method public static fillInMediaStyle(Landroid/app/Notification$MediaStyle;[ILandroidx/media3/session/MediaSession;)Landroid/app/Notification$MediaStyle;
    .locals 2
    .param p0, "style"    # Landroid/app/Notification$MediaStyle;
    .param p1, "actionsToShowInCompact"    # [I
    .param p2, "session"    # Landroidx/media3/session/MediaSession;

    .line 564
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    if-eqz p1, :cond_0

    .line 567
    invoke-static {p0, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$Api21Impl;->setShowActionsInCompactView(Landroid/app/Notification$MediaStyle;[I)V

    .line 569
    :cond_0
    invoke-virtual {p2}, Landroidx/media3/session/MediaSession;->getSessionCompatToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    .line 570
    .local v0, "legacyToken":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$Token;

    invoke-virtual {p0, v1}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    .line 571
    return-object p0
.end method

.method static setMediaStyle(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V
    .locals 0
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "style"    # Landroid/app/Notification$MediaStyle;

    .line 551
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 552
    return-void
.end method

.method public static varargs setShowActionsInCompactView(Landroid/app/Notification$MediaStyle;[I)V
    .locals 0
    .param p0, "style"    # Landroid/app/Notification$MediaStyle;
    .param p1, "actions"    # [I

    .line 576
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 577
    return-void
.end method

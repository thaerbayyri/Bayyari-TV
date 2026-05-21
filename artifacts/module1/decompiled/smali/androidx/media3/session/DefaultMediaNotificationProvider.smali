.class public Landroidx/media3/session/DefaultMediaNotificationProvider;
.super Ljava/lang/Object;
.source "DefaultMediaNotificationProvider.java"

# interfaces
.implements Landroidx/media3/session/MediaNotification$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$Api31;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$Api26;
    }
.end annotation


# static fields
.field public static final COMMAND_KEY_COMPACT_VIEW_INDEX:Ljava/lang/String; = "androidx.media3.session.command.COMPACT_VIEW_INDEX"

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "default_channel_id"

.field public static final DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

.field public static final DEFAULT_NOTIFICATION_ID:I = 0x3e9

.field public static final GROUP_KEY:Ljava/lang/String; = "media3_group_key"

.field private static final TAG:Ljava/lang/String; = "NotificationProvider"


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final channelNameResourceId:I

.field private final context:Landroid/content/Context;

.field private final notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

.field private smallIconResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 238
    sget v0, Landroidx/media3/session/R$string;->default_notification_channel_name:I

    sput v0, Landroidx/media3/session/DefaultMediaNotificationProvider;->DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 264
    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "default_channel_id"

    sget v2, Landroidx/media3/session/DefaultMediaNotificationProvider;->DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationIdProvider"    # Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "channelNameResourceId"    # I

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    .line 281
    iput-object p2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    .line 282
    iput-object p3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    .line 283
    iput p4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelNameResourceId:I

    .line 284
    nop

    .line 286
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 285
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    .line 287
    sget v0, Landroidx/media3/session/R$drawable;->media3_notification_small_icon:I

    iput v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    .line 288
    return-void
.end method

.method private constructor <init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;

    .line 291
    nop

    .line 292
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$100(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Landroid/content/Context;

    move-result-object v0

    .line 293
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$200(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    move-result-object v1

    .line 294
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$300(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$400(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)I

    move-result v3

    .line 291
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;Landroidx/media3/session/DefaultMediaNotificationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;
    .param p2, "x1"    # Landroidx/media3/session/DefaultMediaNotificationProvider$1;

    .line 117
    invoke-direct {p0, p1}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;

    .line 117
    invoke-static {p0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ensureNotificationChannel()V
    .locals 4

    .line 634
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget v3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelNameResourceId:I

    .line 638
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-static {v0, v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api26;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void

    .line 635
    :cond_1
    :goto_0
    return-void
.end method

.method private static getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPlaybackStartTimeEpochMs(Landroidx/media3/common/Player;)J
    .locals 4
    .param p0, "player"    # Landroidx/media3/common/Player;

    .line 643
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 644
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    invoke-interface {p0}, Landroidx/media3/common/Player;->isCurrentMediaItemDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 650
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method static synthetic lambda$new$0(Landroidx/media3/session/MediaSession;)I
    .locals 1
    .param p0, "session"    # Landroidx/media3/session/MediaSession;

    .line 266
    const/16 v0, 0x3e9

    return v0
.end method


# virtual methods
.method protected addNotificationActions(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$ActionFactory;)[I
    .locals 17
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p3, "builder"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p4, "actionFactory"    # Landroidx/media3/session/MediaNotification$ActionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "Landroidx/media3/session/MediaNotification$ActionFactory;",
            ")[I"
        }
    .end annotation

    .line 538
    .local p2, "mediaButtons":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x3

    new-array v4, v3, [I

    .line 539
    .local v4, "compactViewIndices":[I
    new-array v5, v3, [I

    .line 540
    .local v5, "defaultCompactViewIndices":[I
    const/4 v6, -0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([II)V

    .line 541
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 542
    const/4 v7, 0x0

    .line 543
    .local v7, "compactViewCommandCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 544
    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/session/CommandButton;

    .line 545
    .local v10, "commandButton":Landroidx/media3/session/CommandButton;
    iget-object v11, v10, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    .line 546
    nop

    .line 547
    invoke-interface {v2, v0, v10}, Landroidx/media3/session/MediaNotification$ActionFactory;->createCustomActionFromCustomCommandButton(Landroidx/media3/session/MediaSession;Landroidx/media3/session/CommandButton;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v11

    .line 546
    invoke-virtual {v1, v11}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v11, p0

    const/16 v16, 0x0

    goto :goto_2

    .line 549
    :cond_0
    iget v11, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    if-eq v11, v6, :cond_1

    move v11, v13

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    invoke-static {v11}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 550
    move-object/from16 v11, p0

    iget-object v14, v11, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget v15, v10, Landroidx/media3/session/CommandButton;->iconResId:I

    .line 553
    invoke-static {v14, v15}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v14

    iget-object v15, v10, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    iget v12, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 551
    invoke-interface {v2, v0, v14, v15, v12}, Landroidx/media3/session/MediaNotification$ActionFactory;->createMediaAction(Landroidx/media3/session/MediaSession;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v12

    .line 550
    invoke-virtual {v1, v12}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 557
    :goto_2
    if-ne v7, v3, :cond_2

    .line 558
    goto :goto_4

    .line 560
    :cond_2
    iget-object v12, v10, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    .line 561
    const-string v14, "androidx.media3.session.command.COMPACT_VIEW_INDEX"

    invoke-virtual {v12, v14, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 563
    .local v12, "compactViewIndex":I
    if-ltz v12, :cond_3

    array-length v14, v4

    if-ge v12, v14, :cond_3

    .line 564
    add-int/lit8 v7, v7, 0x1

    .line 565
    aput v8, v4, v12

    goto :goto_4

    .line 566
    :cond_3
    iget v14, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_7

    iget v14, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_4

    goto :goto_3

    .line 569
    :cond_4
    iget v14, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    if-ne v14, v13, :cond_5

    .line 570
    aput v8, v5, v13

    goto :goto_4

    .line 571
    :cond_5
    iget v13, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/16 v14, 0x9

    if-eq v13, v14, :cond_6

    iget v13, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_8

    .line 573
    :cond_6
    const/4 v13, 0x2

    aput v8, v5, v13

    goto :goto_4

    .line 568
    :cond_7
    :goto_3
    aput v8, v5, v16

    .line 543
    .end local v10    # "commandButton":Landroidx/media3/session/CommandButton;
    .end local v12    # "compactViewIndex":I
    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_9
    move-object/from16 v11, p0

    move-object/from16 v9, p2

    .line 576
    .end local v8    # "i":I
    if-nez v7, :cond_b

    .line 579
    const/4 v3, 0x0

    .line 580
    .local v3, "indexInCompactViewIndices":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    array-length v10, v5

    if-ge v8, v10, :cond_b

    .line 581
    aget v10, v5, v8

    if-ne v10, v6, :cond_a

    .line 582
    goto :goto_6

    .line 584
    :cond_a
    aget v10, v5, v8

    aput v10, v4, v3

    .line 585
    add-int/lit8 v3, v3, 0x1

    .line 580
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 588
    .end local v3    # "indexInCompactViewIndices":I
    .end local v8    # "i":I
    :cond_b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v8, v4

    if-ge v3, v8, :cond_d

    .line 589
    aget v8, v4, v3

    if-ne v8, v6, :cond_c

    .line 590
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 591
    goto :goto_8

    .line 588
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 594
    .end local v3    # "i":I
    :cond_d
    :goto_8
    return-object v4
.end method

.method public final createNotification(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaNotification$ActionFactory;Landroidx/media3/session/MediaNotification$Provider$Callback;)Landroidx/media3/session/MediaNotification;
    .locals 20
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p3, "actionFactory"    # Landroidx/media3/session/MediaNotification$ActionFactory;
    .param p4, "onNotificationChangedCallback"    # Landroidx/media3/session/MediaNotification$Provider$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaNotification$ActionFactory;",
            "Landroidx/media3/session/MediaNotification$Provider$Callback;",
            ")",
            "Landroidx/media3/session/MediaNotification;"
        }
    .end annotation

    .line 306
    .local p2, "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v1}, Landroidx/media3/session/DefaultMediaNotificationProvider;->ensureNotificationChannel()V

    .line 308
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move-object v5, v0

    .line 310
    .local v5, "customLayoutWithEnabledCommandButtonsOnly":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/session/CommandButton;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 311
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/session/CommandButton;

    .line 312
    .local v6, "button":Landroidx/media3/session/CommandButton;
    iget-object v7, v6, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v7, v7, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v7, :cond_0

    iget-boolean v7, v6, Landroidx/media3/session/CommandButton;->isEnabled:Z

    if-eqz v7, :cond_0

    .line 315
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/session/CommandButton;

    invoke-virtual {v5, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 310
    .end local v6    # "button":Landroidx/media3/session/CommandButton;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v6

    .line 319
    .local v6, "player":Landroidx/media3/common/Player;
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget-object v8, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v7, v0

    .line 320
    .local v7, "builder":Landroidx/core/app/NotificationCompat$Builder;
    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    invoke-interface {v0, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;->getNotificationId(Landroidx/media3/session/MediaSession;)I

    move-result v8

    .line 322
    .local v8, "notificationId":I
    new-instance v0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;

    invoke-direct {v0, v2}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;-><init>(Landroidx/media3/session/MediaSession;)V

    move-object v9, v0

    .line 323
    .local v9, "mediaStyle":Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;
    nop

    .line 328
    invoke-interface {v6}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    .line 329
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    .line 331
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getShowPlayButtonIfPlaybackIsSuppressed()Z

    move-result v11

    .line 330
    invoke-static {v6, v11}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v11

    .line 326
    const/4 v12, 0x1

    xor-int/2addr v11, v12

    invoke-virtual {v1, v2, v0, v10, v11}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getMediaButtons(Landroidx/media3/session/MediaSession;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Z)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 324
    invoke-virtual {v1, v2, v0, v7, v4}, Landroidx/media3/session/DefaultMediaNotificationProvider;->addNotificationActions(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$ActionFactory;)[I

    move-result-object v10

    .line 334
    .local v10, "compactViewIndices":[I
    invoke-virtual {v9, v10}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;

    .line 337
    const/16 v0, 0x12

    invoke-interface {v6, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 338
    invoke-interface {v6}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v11

    .line 339
    .local v11, "metadata":Landroidx/media3/common/MediaMetadata;
    nop

    .line 340
    invoke-virtual {v1, v11}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getNotificationContentTitle(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v1, v11}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getNotificationContentText(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 343
    nop

    .line 344
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v0

    invoke-interface {v0, v11}, Landroidx/media3/common/util/BitmapLoader;->loadBitmapFromMetadata(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v13

    .line 345
    .local v13, "bitmapFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    if-eqz v13, :cond_4

    .line 346
    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    invoke-virtual {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->discardIfPending()V

    .line 349
    :cond_2
    invoke-interface {v13}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    :try_start_0
    invoke-static {v13}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 352
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v14, "NotificationProvider"

    invoke-static {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    move-object/from16 v14, p4

    goto :goto_3

    .line 356
    :cond_3
    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    move-object/from16 v14, p4

    invoke-direct {v0, v8, v7, v14}, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;-><init>(ILandroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$Provider$Callback;)V

    iput-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    .line 359
    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    .line 364
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getImpl()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v15

    invoke-static {v15}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v12, v15}, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    .line 359
    invoke-static {v13, v0, v12}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    .line 345
    :cond_4
    move-object/from16 v14, p4

    goto :goto_3

    .line 337
    .end local v11    # "metadata":Landroidx/media3/common/MediaMetadata;
    .end local v13    # "bitmapFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    :cond_5
    move-object/from16 v14, p4

    .line 369
    :goto_3
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    const-wide/16 v11, 0x3

    if-nez v0, :cond_6

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v0, v13, :cond_7

    .line 371
    :cond_6
    nop

    .line 372
    invoke-interface {v4, v2, v11, v12}, Landroidx/media3/session/MediaNotification$ActionFactory;->createMediaActionPendingIntent(Landroidx/media3/session/MediaSession;J)Landroid/app/PendingIntent;

    move-result-object v0

    .line 371
    invoke-virtual {v9, v0}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->setCancelButtonIntent(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;

    .line 375
    :cond_7
    invoke-static {v6}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getPlaybackStartTimeEpochMs(Landroidx/media3/common/Player;)J

    move-result-wide v16

    .line 376
    .local v16, "playbackStartTimeMs":J
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v16, v18

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    .line 377
    .local v0, "displayElapsedTimeWithChronometer":Z
    :goto_4
    nop

    .line 378
    if-eqz v0, :cond_9

    move-wide/from16 v13, v16

    goto :goto_5

    :cond_9
    const-wide/16 v18, 0x0

    move-wide/from16 v13, v18

    :goto_5
    invoke-virtual {v7, v13, v14}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 379
    invoke-virtual {v13, v0}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 380
    invoke-virtual {v13, v0}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 382
    sget v13, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v14, 0x1f

    if-lt v13, v14, :cond_a

    .line 383
    invoke-static {v7}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api31;->setForegroundServiceBehavior(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 386
    :cond_a
    nop

    .line 388
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 390
    invoke-interface {v4, v2, v11, v12}, Landroidx/media3/session/MediaNotification$ActionFactory;->createMediaActionPendingIntent(Landroidx/media3/session/MediaSession;J)Landroid/app/PendingIntent;

    move-result-object v11

    .line 389
    invoke-virtual {v13, v11}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 391
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    iget v13, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    .line 392
    invoke-virtual {v11, v13}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 393
    invoke-virtual {v11, v9}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 394
    invoke-virtual {v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 395
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 396
    const-string v12, "media3_group_key"

    invoke-virtual {v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 397
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 398
    .local v11, "notification":Landroid/app/Notification;
    new-instance v12, Landroidx/media3/session/MediaNotification;

    invoke-direct {v12, v8, v11}, Landroidx/media3/session/MediaNotification;-><init>(ILandroid/app/Notification;)V

    return-object v12
.end method

.method protected getMediaButtons(Landroidx/media3/session/MediaSession;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Z)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .param p4, "showPauseButton"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroidx/media3/common/Player$Commands;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;Z)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 456
    .local p3, "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 457
    .local v0, "commandButtons":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/session/CommandButton;>;"
    const/4 v1, 0x7

    const/4 v2, 0x6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "androidx.media3.session.command.COMPACT_VIEW_INDEX"

    if-eqz v1, :cond_0

    .line 458
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 459
    .local v1, "commandButtonExtras":Landroid/os/Bundle;
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    new-instance v5, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v5}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    .line 462
    invoke-virtual {v5, v2}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    sget v5, Landroidx/media3/session/R$drawable;->media3_notification_seek_to_previous:I

    .line 463
    invoke-virtual {v2, v5}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    iget-object v5, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v6, Landroidx/media3/session/R$string;->media3_controls_seek_to_previous_description:I

    .line 465
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 464
    invoke-virtual {v2, v5}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 466
    invoke-virtual {v2, v1}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 467
    invoke-virtual {v2}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v2

    .line 460
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 469
    .end local v1    # "commandButtonExtras":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 470
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v2, "commandButtonExtras":Landroid/os/Bundle;
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    new-instance v5, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v5}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    .line 474
    invoke-virtual {v5, v1}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 476
    if-eqz p4, :cond_1

    .line 477
    sget v5, Landroidx/media3/session/R$drawable;->media3_notification_pause:I

    goto :goto_0

    .line 478
    :cond_1
    sget v5, Landroidx/media3/session/R$drawable;->media3_notification_play:I

    .line 475
    :goto_0
    invoke-virtual {v1, v5}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 479
    invoke-virtual {v1, v2}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 481
    nop

    .line 483
    iget-object v5, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    .line 481
    if-eqz p4, :cond_2

    .line 482
    sget v6, Landroidx/media3/session/R$string;->media3_controls_pause_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 483
    :cond_2
    sget v6, Landroidx/media3/session/R$string;->media3_controls_play_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 480
    :goto_1
    invoke-virtual {v1, v5}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 487
    .end local v2    # "commandButtonExtras":Landroid/os/Bundle;
    :cond_3
    const/16 v1, 0x9

    const/16 v2, 0x8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 489
    .restart local v1    # "commandButtonExtras":Landroid/os/Bundle;
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    new-instance v3, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v3}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    .line 492
    invoke-virtual {v3, v2}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    sget v3, Landroidx/media3/session/R$drawable;->media3_notification_seek_to_next:I

    .line 493
    invoke-virtual {v2, v3}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 494
    invoke-virtual {v2, v1}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v4, Landroidx/media3/session/R$string;->media3_controls_seek_to_next_description:I

    .line 495
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v2

    .line 490
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 498
    .end local v1    # "commandButtonExtras":Landroid/os/Bundle;
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 499
    invoke-virtual {p3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/CommandButton;

    .line 500
    .local v2, "button":Landroidx/media3/session/CommandButton;
    iget-object v3, v2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v3, v3, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v3, :cond_5

    .line 502
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 498
    .end local v2    # "button":Landroidx/media3/session/CommandButton;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 505
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method protected getNotificationContentText(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "metadata"    # Landroidx/media3/common/MediaMetadata;

    .line 630
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getNotificationContentTitle(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "metadata"    # Landroidx/media3/common/MediaMetadata;

    .line 612
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final handleCustomCommand(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public final setSmallIcon(I)V
    .locals 0
    .param p1, "smallIconResourceId"    # I

    .line 416
    iput p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    .line 417
    return-void
.end method

.class Landroidx/media3/session/LegacyConversions;
.super Ljava/lang/Object;
.source "LegacyConversions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/LegacyConversions$ConversionException;
    }
.end annotation


# static fields
.field public static final KNOWN_METADATA_COMPAT_KEYS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LegacyConversions"

.field public static final defaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 106
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string v1, "androidx.media3.session.MediaLibraryService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Landroidx/media3/session/LegacyConversions;->defaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 109
    const-string v27, "android.media.metadata.DOWNLOAD_STATUS"

    const-string v28, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    const-string v3, "android.media.metadata.COMPOSER"

    const-string v4, "android.media.metadata.COMPILATION"

    const-string v5, "android.media.metadata.DATE"

    const-string v6, "android.media.metadata.YEAR"

    const-string v7, "android.media.metadata.GENRE"

    const-string v8, "android.media.metadata.TRACK_NUMBER"

    const-string v9, "android.media.metadata.NUM_TRACKS"

    const-string v10, "android.media.metadata.DISC_NUMBER"

    const-string v11, "android.media.metadata.ALBUM_ARTIST"

    const-string v12, "android.media.metadata.ART"

    const-string v13, "android.media.metadata.ART_URI"

    const-string v14, "android.media.metadata.ALBUM_ART"

    const-string v15, "android.media.metadata.ALBUM_ART_URI"

    const-string v16, "android.media.metadata.USER_RATING"

    const-string v17, "android.media.metadata.RATING"

    const-string v18, "android.media.metadata.DISPLAY_TITLE"

    const-string v19, "android.media.metadata.DISPLAY_SUBTITLE"

    const-string v20, "android.media.metadata.DISPLAY_DESCRIPTION"

    const-string v21, "android.media.metadata.DISPLAY_ICON"

    const-string v22, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v23, "android.media.metadata.MEDIA_ID"

    const-string v24, "android.media.metadata.MEDIA_URI"

    const-string v25, "android.media.metadata.BT_FOLDER_TYPE"

    const-string v26, "android.media.metadata.ADVERTISEMENT"

    filled-new-array/range {v3 .. v28}, [Ljava/lang/String;

    move-result-object v35

    .line 110
    const-string v29, "android.media.metadata.TITLE"

    const-string v30, "android.media.metadata.ARTIST"

    const-string v31, "android.media.metadata.DURATION"

    const-string v32, "android.media.metadata.ALBUM"

    const-string v33, "android.media.metadata.AUTHOR"

    const-string v34, "android.media.metadata.WRITER"

    invoke-static/range {v29 .. v35}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LegacyConversions;->KNOWN_METADATA_COMPAT_KEYS:Lcom/google/common/collect/ImmutableSet;

    .line 109
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBrowserItemListToMediaItemList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 249
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 250
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 251
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {v2}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public static convertToAudioAttributes(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Landroidx/media3/common/AudioAttributes;
    .locals 1
    .param p0, "playbackInfoCompat"    # Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    .line 1294
    if-nez p0, :cond_0

    .line 1295
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    return-object v0

    .line 1297
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static convertToAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media3/common/AudioAttributes;
    .locals 2
    .param p0, "audioAttributesCompat"    # Landroidx/media/AudioAttributesCompat;

    .line 1281
    if-nez p0, :cond_0

    .line 1282
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    return-object v0

    .line 1284
    :cond_0
    new-instance v0, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    .line 1285
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 1286
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setFlags(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 1287
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 1288
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    .line 1284
    return-object v0
.end method

.method public static convertToAudioAttributesCompat(Landroidx/media3/common/AudioAttributes;)Landroidx/media/AudioAttributesCompat;
    .locals 2
    .param p0, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1303
    new-instance v0, Landroidx/media/AudioAttributesCompat$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat$Builder;-><init>()V

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    .line 1304
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setContentType(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->flags:I

    .line 1305
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setFlags(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    .line 1306
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setUsage(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    .line 1307
    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat$Builder;->build()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    .line 1303
    return-object v0
.end method

.method public static convertToBrowserItem(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 4
    .param p0, "item"    # Landroidx/media3/common/MediaItem;
    .param p1, "artworkBitmap"    # Landroid/graphics/Bitmap;

    .line 175
    invoke-static {p0, p1}, Landroidx/media3/session/LegacyConversions;->convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 176
    .local v0, "description":Landroid/support/v4/media/MediaDescriptionCompat;
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 177
    .local v1, "metadata":Landroidx/media3/common/MediaMetadata;
    const/4 v2, 0x0

    .line 178
    .local v2, "flags":I
    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    or-int/lit8 v2, v2, 0x1

    .line 181
    :cond_0
    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    or-int/lit8 v2, v2, 0x2

    .line 184
    :cond_1
    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v3, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object v3
.end method

.method public static convertToBufferedPercentage(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)I
    .locals 5
    .param p0, "playbackStateCompat"    # Landroid/support/v4/media/session/PlaybackStateCompat;
    .param p1, "mediaMetadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p2, "timeDiffMs"    # J

    .line 961
    nop

    .line 962
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->convertToBufferedPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide v0

    .line 963
    .local v0, "bufferedPositionMs":J
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J

    move-result-wide v2

    .line 964
    .local v2, "durationMs":J
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v4

    return v4
.end method

.method public static convertToBufferedPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J
    .locals 8
    .param p0, "playbackStateCompat"    # Landroid/support/v4/media/session/PlaybackStateCompat;
    .param p1, "metadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p2, "timeDiffMs"    # J

    .line 935
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    .line 936
    .local v2, "legacyBufferedPositionMs":J
    nop

    .line 937
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide v4

    .line 938
    .local v4, "currentPositionMs":J
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J

    move-result-wide v6

    .line 939
    .local v6, "durationMs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    .line 940
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 941
    :cond_1
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 939
    :goto_1
    return-wide v0
.end method

.method private static convertToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1389
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1390
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1391
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1391
    return-object v1

    .line 1389
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J
    .locals 10
    .param p0, "playbackStateCompat"    # Landroid/support/v4/media/session/PlaybackStateCompat;
    .param p1, "metadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p2, "timeDiffMs"    # J

    .line 901
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 902
    return-wide v0

    .line 905
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 906
    invoke-static {p0, p2, p3}, Landroidx/media3/session/LegacyConversions;->getCurrentPosition(Landroid/support/v4/media/session/PlaybackStateCompat;J)J

    move-result-wide v2

    goto :goto_0

    .line 907
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    :goto_0
    move-wide v4, v2

    .line 908
    .local v4, "positionMs":J
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J

    move-result-wide v8

    .line 909
    .local v8, "durationMs":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v8, v2

    if-nez v2, :cond_2

    .line 910
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 911
    :cond_2
    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 909
    :goto_1
    return-wide v0
.end method

.method public static convertToCustomLayout(Landroid/support/v4/media/session/PlaybackStateCompat;)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .param p0, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 1254
    if-nez p0, :cond_0

    .line 1255
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 1257
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1258
    .local v0, "layout":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/session/CommandButton;>;"
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 1259
    .local v2, "customAction":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1260
    .local v3, "action":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1261
    .local v4, "extras":Landroid/os/Bundle;
    new-instance v5, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v5}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    new-instance v6, Landroidx/media3/session/SessionCommand;

    .line 1263
    if-nez v4, :cond_1

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    move-object v7, v4

    :goto_1
    invoke-direct {v6, v3, v7}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Landroidx/media3/session/CommandButton$Builder;->setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v5

    .line 1264
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v5

    .line 1265
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/media3/session/CommandButton$Builder;->setEnabled(Z)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v5

    .line 1266
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getIcon()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v5

    .line 1267
    invoke-virtual {v5}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v5

    .line 1268
    .local v5, "button":Landroidx/media3/session/CommandButton;
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1269
    .end local v2    # "customAction":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "button":Landroidx/media3/session/CommandButton;
    goto :goto_0

    .line 1270
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public static convertToDeviceInfo(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Ljava/lang/String;)Landroidx/media3/common/DeviceInfo;
    .locals 3
    .param p0, "playbackInfoCompat"    # Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .param p1, "routingControllerId"    # Ljava/lang/String;

    .line 1357
    if-nez p0, :cond_0

    .line 1358
    sget-object v0, Landroidx/media3/common/DeviceInfo;->UNKNOWN:Landroidx/media3/common/DeviceInfo;

    return-object v0

    .line 1360
    :cond_0
    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    .line 1362
    nop

    .line 1361
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getPlaybackType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1363
    const/4 v1, 0x1

    goto :goto_0

    .line 1364
    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    .line 1365
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getMaxVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;->setMaxVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object v0

    .line 1366
    invoke-virtual {v0, p1}, Landroidx/media3/common/DeviceInfo$Builder;->setRoutingControllerId(Ljava/lang/String;)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Landroidx/media3/common/DeviceInfo$Builder;->build()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    .line 1360
    return-object v0
.end method

.method public static convertToDeviceVolume(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)I
    .locals 1
    .param p0, "playbackInfoCompat"    # Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    .line 1373
    if-nez p0, :cond_0

    .line 1374
    const/4 v0, 0x0

    return v0

    .line 1376
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    return v0
.end method

.method public static convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J
    .locals 6
    .param p0, "metadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;

    .line 921
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p0, :cond_2

    .line 922
    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 925
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 926
    .local v2, "legacyDurationMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    return-wide v0

    .line 923
    .end local v2    # "legacyDurationMs":J
    :cond_2
    :goto_1
    return-wide v0
.end method

.method private static convertToExtraBtFolderType(I)J
    .locals 3
    .param p0, "folderType"    # I

    .line 683
    packed-switch p0, :pswitch_data_0

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized FolderType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :pswitch_0
    const-wide/16 v0, 0x6

    return-wide v0

    .line 695
    :pswitch_1
    const-wide/16 v0, 0x5

    return-wide v0

    .line 693
    :pswitch_2
    const-wide/16 v0, 0x4

    return-wide v0

    .line 691
    :pswitch_3
    const-wide/16 v0, 0x3

    return-wide v0

    .line 689
    :pswitch_4
    const-wide/16 v0, 0x2

    return-wide v0

    .line 687
    :pswitch_5
    const-wide/16 v0, 0x1

    return-wide v0

    .line 685
    :pswitch_6
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToFolderType(J)I
    .locals 4
    .param p0, "extraBtFolderType"    # J

    .line 662
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 663
    return v1

    .line 664
    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    .line 665
    const/4 v0, 0x1

    return v0

    .line 666
    :cond_1
    const-wide/16 v2, 0x2

    cmp-long v0, p0, v2

    if-nez v0, :cond_2

    .line 667
    const/4 v0, 0x2

    return v0

    .line 668
    :cond_2
    const-wide/16 v2, 0x3

    cmp-long v0, p0, v2

    if-nez v0, :cond_3

    .line 669
    const/4 v0, 0x3

    return v0

    .line 670
    :cond_3
    const-wide/16 v2, 0x4

    cmp-long v0, p0, v2

    if-nez v0, :cond_4

    .line 671
    const/4 v0, 0x4

    return v0

    .line 672
    :cond_4
    const-wide/16 v2, 0x5

    cmp-long v0, p0, v2

    if-nez v0, :cond_5

    .line 673
    const/4 v0, 0x5

    return v0

    .line 674
    :cond_5
    const-wide/16 v2, 0x6

    cmp-long v0, p0, v2

    if-nez v0, :cond_6

    .line 675
    const/4 v0, 0x6

    return v0

    .line 677
    :cond_6
    return v1
.end method

.method public static convertToIsDeviceMuted(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Z
    .locals 2
    .param p0, "playbackInfoCompat"    # Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    .line 1382
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1383
    return v0

    .line 1385
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getCurrentVolume()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static convertToIsPlaying(Landroid/support/v4/media/session/PlaybackStateCompat;)Z
    .locals 3
    .param p0, "playbackStateCompat"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 882
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 883
    return v0

    .line 885
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static convertToIsPlayingAd(Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 5
    .param p0, "metadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;

    .line 890
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 891
    return v0

    .line 893
    :cond_0
    const-string v1, "android.media.metadata.ADVERTISEMENT"

    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "legacyBundle"    # Landroid/os/Bundle;

    .line 1057
    const-string v0, "androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS"

    if-nez p1, :cond_0

    .line 1058
    const/4 v0, 0x0

    return-object v0

    .line 1061
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1062
    nop

    .line 1063
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1065
    .local v1, "supportedChildrenFlags":I
    if-ltz v1, :cond_2

    .line 1066
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1067
    const-string v0, "androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY"

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1071
    :cond_2
    new-instance v0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {v0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    .line 1072
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    const-string v2, "android.service.media.extra.RECENT"

    .line 1073
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setRecent(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    const-string v2, "android.service.media.extra.OFFLINE"

    .line 1074
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setOffline(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    const-string v2, "android.service.media.extra.SUGGESTED"

    .line 1075
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setSuggested(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    .line 1076
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->build()Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    return-object v0

    .line 1077
    .end local v1    # "supportedChildrenFlags":I
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {v1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->build()Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v1

    return-object v1
.end method

.method public static convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 8
    .param p0, "item"    # Landroidx/media3/common/MediaItem;
    .param p1, "artworkBitmap"    # Landroid/graphics/Bitmap;

    .line 322
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 324
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v0

    .line 325
    .local v0, "builder":Landroid/support/v4/media/MediaDescriptionCompat$Builder;
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 326
    .local v1, "metadata":Landroidx/media3/common/MediaMetadata;
    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 329
    :cond_1
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    .line 330
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 331
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    .line 332
    .local v3, "hasFolderType":Z
    :goto_1
    iget-object v6, v1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    .line 333
    .local v4, "hasMediaType":Z
    :goto_2
    if-nez v3, :cond_4

    if-eqz v4, :cond_7

    .line 334
    :cond_4
    if-nez v2, :cond_5

    .line 335
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v2, v5

    .end local v2    # "extras":Landroid/os/Bundle;
    .local v5, "extras":Landroid/os/Bundle;
    goto :goto_3

    .line 337
    .end local v5    # "extras":Landroid/os/Bundle;
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v5

    .line 339
    :goto_3
    if-eqz v3, :cond_6

    .line 340
    iget-object v5, v1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 342
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroidx/media3/session/LegacyConversions;->convertToExtraBtFolderType(I)J

    move-result-wide v5

    .line 340
    const-string v7, "android.media.extra.BT_FOLDER_TYPE"

    invoke-virtual {v2, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 344
    :cond_6
    if-eqz v4, :cond_7

    .line 345
    iget-object v5, v1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 346
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    .line 345
    const-string v7, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {v2, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 349
    :cond_7
    iget-object v5, v1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 350
    invoke-virtual {v0, v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    .line 353
    iget-object v6, v1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    iget-object v6, v1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_8
    iget-object v6, v1, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    iget-object v6, v1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 354
    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    iget-object v6, v1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 355
    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    .line 356
    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    .line 357
    invoke-virtual {v5, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    .line 358
    invoke-virtual {v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v5

    .line 349
    return-object v5
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media3/common/MediaItem;
    .locals 3
    .param p0, "item"    # Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 189
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->isBrowsable()Z

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->isPlayable()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;ZZ)Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;
    .locals 2
    .param p0, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;

    .line 199
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;ZZ)Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method private static convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;ZZ)Landroidx/media3/common/MediaItem;
    .locals 4
    .param p0, "descriptionCompat"    # Landroid/support/v4/media/MediaDescriptionCompat;
    .param p1, "browsable"    # Z
    .param p2, "playable"    # Z

    .line 233
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "mediaId":Ljava/lang/String;
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 235
    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    .line 238
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->build()Landroidx/media3/common/MediaItem$RequestMetadata;

    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->setRequestMetadata(Landroidx/media3/common/MediaItem$RequestMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    .line 241
    const/4 v2, 0x0

    invoke-static {p0, v2, p1, p2}, Landroidx/media3/session/LegacyConversions;->convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;IZZ)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v1

    .line 234
    return-object v1
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;
    .locals 1
    .param p0, "metadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p1, "ratingType"    # I

    .line 206
    nop

    .line 207
    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0, p0, p1}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Landroidx/media3/common/MediaItem;
    .locals 1
    .param p0, "item"    # Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 194
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public static convertToMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;
    .locals 4
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "metadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p2, "ratingType"    # I

    .line 217
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 218
    .local v0, "builder":Landroidx/media3/common/MediaItem$Builder;
    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    .line 222
    :cond_0
    const-string v1, "android.media.metadata.MEDIA_URI"

    invoke-virtual {p1, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "mediaUriString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 224
    new-instance v2, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    .line 225
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->build()Landroidx/media3/common/MediaItem$RequestMetadata;

    move-result-object v2

    .line 224
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setRequestMetadata(Landroidx/media3/common/MediaItem$RequestMetadata;)Landroidx/media3/common/MediaItem$Builder;

    .line 227
    :cond_1
    invoke-static {p1, p2}, Landroidx/media3/session/LegacyConversions;->convertToMediaMetadata(Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    .line 228
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v2

    return-object v2
.end method

.method public static convertToMediaItemList(Landroidx/media3/common/Timeline;)Ljava/util/List;
    .locals 4
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 260
    .local v1, "window":Landroidx/media3/common/Timeline$Window;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 261
    invoke-virtual {p0, v2, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;I)Landroidx/media3/common/MediaMetadata;
    .locals 2
    .param p0, "descriptionCompat"    # Landroid/support/v4/media/MediaDescriptionCompat;
    .param p1, "ratingType"    # I

    .line 371
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroidx/media3/session/LegacyConversions;->convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;IZZ)Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;IZZ)Landroidx/media3/common/MediaMetadata;
    .locals 7
    .param p0, "descriptionCompat"    # Landroid/support/v4/media/MediaDescriptionCompat;
    .param p1, "ratingType"    # I
    .param p2, "browsable"    # Z
    .param p3, "playable"    # Z

    .line 381
    if-nez p0, :cond_0

    .line 382
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    return-object v0

    .line 385
    :cond_0
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    .line 387
    .local v0, "builder":Landroidx/media3/common/MediaMetadata$Builder;
    nop

    .line 388
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 389
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 390
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 391
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 392
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/session/LegacyConversions;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 394
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 395
    .local v1, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 396
    const/4 v2, 0x0

    .line 398
    .local v2, "artworkData":[B
    :try_start_0
    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->convertToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 401
    goto :goto_0

    .line 399
    :catch_0
    move-exception v3

    .line 400
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "LegacyConversions"

    const-string v5, "Failed to convert iconBitmap to artworkData"

    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 405
    .end local v2    # "artworkData":[B
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 406
    .local v2, "compatExtras":Landroid/os/Bundle;
    if-nez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 408
    .local v3, "extras":Landroid/os/Bundle;
    :goto_1
    if-eqz v3, :cond_3

    const-string v4, "android.media.extra.BT_FOLDER_TYPE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 409
    nop

    .line 410
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/session/LegacyConversions;->convertToFolderType(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 409
    invoke-virtual {v0, v5}, Landroidx/media3/common/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 411
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 413
    :cond_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 415
    if-eqz v3, :cond_4

    const-string v4, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 416
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 417
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 419
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 420
    invoke-virtual {v0, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 423
    :cond_5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 425
    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v4

    return-object v4
.end method

.method public static convertToMediaMetadata(Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;
    .locals 8
    .param p0, "metadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p1, "ratingType"    # I

    .line 432
    if-nez p0, :cond_0

    .line 433
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    return-object v0

    .line 436
    :cond_0
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    .line 438
    .local v0, "builder":Landroidx/media3/common/MediaMetadata$Builder;
    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    const-string v2, "android.media.metadata.TITLE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-static {p0, v1}, Landroidx/media3/session/LegacyConversions;->getFirstText(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 444
    const-string v2, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 446
    const-string v2, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 445
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 447
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 448
    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 449
    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 451
    const-string v2, "android.media.metadata.RATING"

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/session/LegacyConversions;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v2

    .line 450
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setOverallRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 454
    nop

    .line 455
    const-string v1, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v1

    .line 456
    .local v1, "userRating":Landroidx/media3/common/Rating;
    if-eqz v1, :cond_1

    .line 457
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_0

    .line 459
    :cond_1
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/session/LegacyConversions;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 462
    :goto_0
    const-string v2, "android.media.metadata.YEAR"

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 464
    .local v2, "year":J
    long-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 468
    .end local v2    # "year":J
    :cond_2
    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v3, "android.media.metadata.ALBUM_ART_URI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-static {p0, v2}, Landroidx/media3/session/LegacyConversions;->getFirstString(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "artworkUriString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 474
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 478
    :cond_3
    const-string v3, "android.media.metadata.DISPLAY_ICON"

    const-string v4, "android.media.metadata.ALBUM_ART"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-static {p0, v3}, Landroidx/media3/session/LegacyConversions;->getFirstBitmap(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 483
    .local v3, "artworkBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 485
    :try_start_0
    invoke-static {v3}, Landroidx/media3/session/LegacyConversions;->convertToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    .line 486
    .local v4, "artworkData":[B
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    nop

    .end local v4    # "artworkData":[B
    goto :goto_1

    .line 487
    :catch_0
    move-exception v4

    .line 488
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "LegacyConversions"

    const-string v6, "Failed to convert artworkBitmap to artworkData"

    invoke-static {v5, v6, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_1
    nop

    .line 493
    const-string v4, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {p0, v4}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    .line 494
    .local v5, "isBrowsable":Z
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 495
    if-eqz v5, :cond_5

    .line 496
    nop

    .line 498
    invoke-virtual {p0, v4}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 497
    invoke-static {v6, v7}, Landroidx/media3/session/LegacyConversions;->convertToFolderType(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 496
    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 501
    :cond_5
    const-string v4, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {p0, v4}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 502
    nop

    .line 503
    invoke-virtual {p0, v4}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 502
    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 506
    :cond_6
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 508
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 509
    .local v4, "extras":Landroid/os/Bundle;
    sget-object v6, Landroidx/media3/session/LegacyConversions;->KNOWN_METADATA_COMPAT_KEYS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 510
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 511
    .end local v7    # "key":Ljava/lang/String;
    goto :goto_2

    .line 512
    :cond_7
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 513
    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 516
    :cond_8
    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v6

    return-object v6
.end method

.method public static convertToMediaMetadata(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata;
    .locals 1
    .param p0, "queueTitle"    # Ljava/lang/CharSequence;

    .line 363
    if-nez p0, :cond_0

    .line 364
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    return-object v0

    .line 366
    :cond_0
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static convertToMediaMetadataCompat(Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 8
    .param p0, "metadata"    # Landroidx/media3/common/MediaMetadata;
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "mediaUri"    # Landroid/net/Uri;
    .param p3, "durationMs"    # J
    .param p5, "artworkBitmap"    # Landroid/graphics/Bitmap;

    .line 569
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 571
    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 573
    .local v0, "builder":Landroid/support/v4/media/MediaMetadataCompat$Builder;
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 574
    const-string v1, "android.media.metadata.TITLE"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 575
    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 578
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 579
    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 582
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 583
    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 586
    :cond_2
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 587
    const-string v1, "android.media.metadata.ARTIST"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 590
    :cond_3
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 591
    const-string v1, "android.media.metadata.ALBUM"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 594
    :cond_4
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 595
    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 598
    :cond_5
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 599
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "android.media.metadata.YEAR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 602
    :cond_6
    if-eqz p2, :cond_7

    .line 603
    const-string v1, "android.media.metadata.MEDIA_URI"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 606
    :cond_7
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz v1, :cond_8

    .line 607
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 608
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 609
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 610
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    const-string v2, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 613
    :cond_8
    if-eqz p5, :cond_9

    .line 614
    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v0, v1, p5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 615
    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v1, p5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 618
    :cond_9
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 619
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 621
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->convertToExtraBtFolderType(I)J

    move-result-wide v1

    .line 619
    const-string v3, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 624
    :cond_a
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p3, v1

    if-eqz v1, :cond_b

    .line 625
    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {v0, v1, p3, p4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 628
    :cond_b
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->convertToRatingCompat(Landroidx/media3/common/Rating;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    .line 629
    .local v1, "userRatingCompat":Landroid/support/v4/media/RatingCompat;
    if-eqz v1, :cond_c

    .line 630
    const-string v2, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 633
    :cond_c
    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    invoke-static {v2}, Landroidx/media3/session/LegacyConversions;->convertToRatingCompat(Landroidx/media3/common/Rating;)Landroid/support/v4/media/RatingCompat;

    move-result-object v2

    .line 634
    .local v2, "overallRatingCompat":Landroid/support/v4/media/RatingCompat;
    if-eqz v2, :cond_d

    .line 635
    const-string v3, "android.media.metadata.RATING"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 638
    :cond_d
    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v3, :cond_e

    .line 639
    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const-string v5, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {v0, v5, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 642
    :cond_e
    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_13

    .line 643
    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 644
    .local v4, "customKey":Ljava/lang/String;
    iget-object v5, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 645
    .local v5, "customValue":Ljava/lang/Object;
    if-eqz v5, :cond_11

    instance-of v6, v5, Ljava/lang/CharSequence;

    if-eqz v6, :cond_f

    goto :goto_1

    .line 647
    :cond_f
    instance-of v6, v5, Ljava/lang/Byte;

    if-nez v6, :cond_10

    instance-of v6, v5, Ljava/lang/Short;

    if-nez v6, :cond_10

    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_10

    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_12

    .line 651
    :cond_10
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_2

    .line 646
    :cond_11
    :goto_1
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 653
    .end local v4    # "customKey":Ljava/lang/String;
    .end local v5    # "customValue":Ljava/lang/Object;
    :cond_12
    :goto_2
    goto :goto_0

    .line 656
    :cond_13
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    return-object v3
.end method

.method public static convertToPeriod(I)Landroidx/media3/common/Timeline$Period;
    .locals 11
    .param p0, "windowIndex"    # I

    .line 306
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move-object v1, v0

    .line 307
    .local v1, "period":Landroidx/media3/common/Timeline$Period;
    sget-object v9, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    move v4, p0

    .end local p0    # "windowIndex":I
    .local v4, "windowIndex":I
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    .line 315
    return-object v1
.end method

.method public static convertToPlayWhenReady(Landroid/support/v4/media/session/PlaybackStateCompat;)Z
    .locals 2
    .param p0, "playbackState"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 816
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 817
    return v0

    .line 819
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 835
    return v0

    .line 827
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 833
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToPlaybackException(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media3/common/PlaybackException;
    .locals 5
    .param p0, "playbackStateCompat"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 159
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 160
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_1
    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v3, Landroidx/media3/common/PlaybackException;

    const/16 v4, 0x3e9

    invoke-direct {v3, v2, v0, v4}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object v3

    .line 161
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static convertToPlaybackParameters(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media3/common/PlaybackParameters;
    .locals 2
    .param p0, "playbackStateCompat"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 809
    if-nez p0, :cond_0

    .line 810
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_0

    .line 811
    :cond_0
    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/PlaybackParameters;-><init>(F)V

    .line 809
    :goto_0
    return-object v0
.end method

.method public static convertToPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)I
    .locals 6
    .param p0, "playbackStateCompat"    # Landroid/support/v4/media/session/PlaybackStateCompat;
    .param p1, "currentMediaMetadata"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p2, "timeDiffMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/session/LegacyConversions$ConversionException;
        }
    .end annotation

    .line 848
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 849
    return v0

    .line 851
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_0

    .line 875
    new-instance v0, Landroidx/media3/session/LegacyConversions$ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state of PlaybackStateCompat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 876
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/session/LegacyConversions$ConversionException;-><init>(Ljava/lang/String;Landroidx/media3/session/LegacyConversions$1;)V

    throw v0

    .line 863
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 865
    :pswitch_1
    return v2

    .line 867
    :pswitch_2
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J

    move-result-wide v0

    .line 868
    .local v0, "duration":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 869
    return v2

    .line 871
    :cond_1
    nop

    .line 872
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide v3

    .line 873
    .local v3, "currentPosition":J
    cmp-long v5, v3, v0

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    return v2

    .line 856
    .end local v0    # "duration":J
    .end local v3    # "currentPosition":J
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToPlaybackStateCompatRepeatMode(I)I
    .locals 3
    .param p0, "repeatMode"    # I

    .line 1012
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RepeatMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was converted to `PlaybackStateCompat.REPEAT_MODE_NONE`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LegacyConversions"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    return v0

    .line 1018
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1016
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1014
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToPlaybackStateCompatShuffleMode(Z)I
    .locals 1
    .param p0, "shuffleModeEnabled"    # Z

    .line 1048
    if-eqz p0, :cond_0

    .line 1049
    const/4 v0, 0x1

    goto :goto_0

    .line 1050
    :cond_0
    const/4 v0, 0x0

    .line 1048
    :goto_0
    return v0
.end method

.method public static convertToPlaybackStateCompatState(Landroidx/media3/common/Player;Z)I
    .locals 5
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "playIfSuppressed"    # Z

    .line 783
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 784
    const/4 v0, 0x7

    return v0

    .line 786
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    .line 787
    .local v0, "playbackState":I
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v1

    .line 788
    .local v1, "shouldShowPlayButton":Z
    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    .line 802
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 796
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 792
    :pswitch_1
    if-eqz v1, :cond_1

    .line 793
    goto :goto_0

    .line 794
    :cond_1
    const/4 v2, 0x3

    .line 792
    :goto_0
    return v2

    .line 798
    :pswitch_2
    if-eqz v1, :cond_2

    .line 799
    goto :goto_1

    .line 800
    :cond_2
    const/4 v2, 0x6

    .line 798
    :goto_1
    return v2

    .line 790
    :pswitch_3
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToPlayerCommands(Landroid/support/v4/media/session/PlaybackStateCompat;IJZ)Landroidx/media3/common/Player$Commands;
    .locals 13
    .param p0, "playbackStateCompat"    # Landroid/support/v4/media/session/PlaybackStateCompat;
    .param p1, "volumeControlType"    # I
    .param p2, "sessionFlags"    # J
    .param p4, "isSessionReady"    # Z

    .line 1127
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 1128
    .local v0, "playerCommandsBuilder":Landroidx/media3/common/Player$Commands$Builder;
    const-wide/16 v1, 0x0

    if-nez p0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v3

    .line 1129
    .local v3, "actions":J
    :goto_0
    const-wide/16 v5, 0x4

    invoke-static {v3, v4, v5, v6}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 1130
    const-wide/16 v9, 0x2

    invoke-static {v3, v4, v9, v10}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    nop

    .line 1131
    const-wide/16 v9, 0x200

    invoke-static {v3, v4, v9, v10}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1132
    :cond_2
    invoke-virtual {v0, v8}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1134
    :cond_3
    const-wide/16 v9, 0x4000

    invoke-static {v3, v4, v9, v10}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    const/4 v9, 0x2

    if-eqz v7, :cond_4

    .line 1135
    invoke-virtual {v0, v9}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1137
    :cond_4
    const-wide/32 v10, 0x8000

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1138
    const-wide/16 v10, 0x400

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    nop

    .line 1139
    const-wide/32 v10, 0x10000

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1140
    const-wide/16 v10, 0x800

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    nop

    .line 1141
    const-wide/32 v10, 0x20000

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1142
    const-wide/16 v10, 0x2000

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1144
    :cond_7
    const/16 v7, 0x1f

    filled-new-array {v7, v9}, [I

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1146
    :cond_8
    const-wide/16 v10, 0x8

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1147
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1149
    :cond_9
    const-wide/16 v10, 0x40

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1150
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1152
    :cond_a
    const-wide/16 v10, 0x100

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1153
    const/4 v7, 0x5

    const/4 v10, 0x4

    filled-new-array {v7, v10}, [I

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1156
    :cond_b
    const-wide/16 v10, 0x20

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1157
    const/16 v7, 0x9

    const/16 v10, 0x8

    filled-new-array {v7, v10}, [I

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1159
    :cond_c
    const-wide/16 v10, 0x10

    invoke-static {v3, v4, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    const/4 v10, 0x6

    if-eqz v7, :cond_d

    .line 1160
    const/4 v7, 0x7

    filled-new-array {v7, v10}, [I

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1162
    :cond_d
    const-wide/32 v11, 0x400000

    invoke-static {v3, v4, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1163
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1165
    :cond_e
    const-wide/16 v11, 0x1

    invoke-static {v3, v4, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1166
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1168
    :cond_f
    const/16 v7, 0x22

    const/16 v11, 0x1a

    if-ne p1, v8, :cond_10

    .line 1169
    filled-new-array {v11, v7}, [I

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    goto :goto_1

    .line 1171
    :cond_10
    if-ne p1, v9, :cond_11

    .line 1172
    const/16 v8, 0x19

    const/16 v9, 0x21

    filled-new-array {v11, v7, v8, v9}, [I

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1178
    :cond_11
    :goto_1
    new-array v7, v10, [I

    fill-array-data v7, :array_0

    invoke-virtual {v0, v7}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1185
    and-long/2addr v5, p2

    cmp-long v1, v5, v1

    if-eqz v1, :cond_12

    .line 1186
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1187
    const-wide/16 v1, 0x1000

    invoke-static {v3, v4, v1, v2}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1188
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1191
    :cond_12
    if-eqz p4, :cond_14

    .line 1192
    const-wide/32 v1, 0x40000

    invoke-static {v3, v4, v1, v2}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1193
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1195
    :cond_13
    const-wide/32 v1, 0x200000

    invoke-static {v3, v4, v1, v2}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1196
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1199
    :cond_14
    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v1

    return-object v1

    :array_0
    .array-data 4
        0x17
        0x11
        0x12
        0x10
        0x15
        0x20
    .end array-data
.end method

.method public static convertToQueueItem(Landroidx/media3/common/MediaItem;ILandroid/graphics/Bitmap;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    .locals 4
    .param p0, "item"    # Landroidx/media3/common/MediaItem;
    .param p1, "mediaItemIndex"    # I
    .param p2, "artworkBitmap"    # Landroid/graphics/Bitmap;

    .line 272
    invoke-static {p0, p2}, Landroidx/media3/session/LegacyConversions;->convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 273
    .local v0, "description":Landroid/support/v4/media/MediaDescriptionCompat;
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToQueueItemId(I)J

    move-result-wide v1

    .line 274
    .local v1, "id":J
    new-instance v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-direct {v3, v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    return-object v3
.end method

.method public static convertToQueueItemId(I)J
    .locals 2
    .param p0, "mediaItemIndex"    # I

    .line 279
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 280
    const-wide/16 v0, -0x1

    return-wide v0

    .line 282
    :cond_0
    int-to-long v0, p0

    return-wide v0
.end method

.method public static convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;
    .locals 3
    .param p0, "ratingCompat"    # Landroid/support/v4/media/RatingCompat;

    .line 712
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 713
    return-object v0

    .line 715
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getRatingStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 742
    return-object v0

    .line 737
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    new-instance v0, Landroidx/media3/common/PercentageRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/PercentageRating;-><init>(F)V

    goto :goto_0

    .line 739
    :cond_1
    new-instance v0, Landroidx/media3/common/PercentageRating;

    invoke-direct {v0}, Landroidx/media3/common/PercentageRating;-><init>()V

    .line 737
    :goto_0
    return-object v0

    .line 725
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 726
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/StarRating;-><init>(IF)V

    goto :goto_1

    .line 727
    :cond_2
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-direct {v0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    .line 725
    :goto_1
    return-object v0

    .line 721
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    .line 722
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/StarRating;-><init>(IF)V

    goto :goto_2

    .line 723
    :cond_3
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-direct {v0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    .line 721
    :goto_2
    return-object v0

    .line 717
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_4

    .line 718
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/StarRating;-><init>(IF)V

    goto :goto_3

    .line 719
    :cond_4
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-direct {v0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    .line 717
    :goto_3
    return-object v0

    .line 733
    :pswitch_4
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 734
    new-instance v0, Landroidx/media3/common/ThumbRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/ThumbRating;-><init>(Z)V

    goto :goto_4

    .line 735
    :cond_5
    new-instance v0, Landroidx/media3/common/ThumbRating;

    invoke-direct {v0}, Landroidx/media3/common/ThumbRating;-><init>()V

    .line 733
    :goto_4
    return-object v0

    .line 729
    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 730
    new-instance v0, Landroidx/media3/common/HeartRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/HeartRating;-><init>(Z)V

    goto :goto_5

    .line 731
    :cond_6
    new-instance v0, Landroidx/media3/common/HeartRating;

    invoke-direct {v0}, Landroidx/media3/common/HeartRating;-><init>()V

    .line 729
    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRatingCompat(Landroidx/media3/common/Rating;)Landroid/support/v4/media/RatingCompat;
    .locals 3
    .param p0, "rating"    # Landroidx/media3/common/Rating;

    .line 755
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 756
    return-object v0

    .line 758
    :cond_0
    invoke-static {p0}, Landroidx/media3/session/LegacyConversions;->getRatingCompatStyle(Landroidx/media3/common/Rating;)I

    move-result v1

    .line 759
    .local v1, "ratingCompatStyle":I
    invoke-virtual {p0}, Landroidx/media3/common/Rating;->isRated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 760
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0

    .line 763
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 776
    return-object v0

    .line 773
    :pswitch_0
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/PercentageRating;

    invoke-virtual {v0}, Landroidx/media3/common/PercentageRating;->getPercent()F

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0

    .line 767
    :pswitch_1
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/StarRating;

    invoke-virtual {v0}, Landroidx/media3/common/StarRating;->getStarRating()F

    move-result v0

    invoke-static {v1, v0}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0

    .line 771
    :pswitch_2
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/ThumbRating;

    invoke-virtual {v0}, Landroidx/media3/common/ThumbRating;->isThumbsUp()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0

    .line 769
    :pswitch_3
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/HeartRating;

    invoke-virtual {v0}, Landroidx/media3/common/HeartRating;->isHeart()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRepeatMode(I)I
    .locals 3
    .param p0, "playbackStateCompatRepeatMode"    # I

    .line 990
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized PlaybackStateCompat.RepeatMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was converted to `Player.REPEAT_MODE_OFF`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LegacyConversions"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    return v0

    .line 998
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 995
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 993
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRootHints(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;
    .locals 4
    .param p0, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 1086
    if-nez p0, :cond_0

    .line 1087
    const/4 v0, 0x0

    return-object v0

    .line 1089
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1090
    .local v0, "rootHints":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    const-string v2, "androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1091
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    .line 1092
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1094
    .local v1, "browsableChildrenSupported":Z
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1095
    nop

    .line 1097
    if-eqz v1, :cond_1

    .line 1098
    const/4 v2, 0x1

    goto :goto_0

    .line 1100
    :cond_1
    const/4 v2, 0x3

    .line 1095
    :goto_0
    const-string v3, "androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1102
    .end local v1    # "browsableChildrenSupported":Z
    :cond_2
    const-string v1, "android.service.media.extra.RECENT"

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isRecent:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1103
    const-string v1, "android.service.media.extra.OFFLINE"

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isOffline:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1104
    const-string v1, "android.service.media.extra.SUGGESTED"

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isSuggested:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1105
    return-object v0
.end method

.method public static convertToSessionCommands(Landroid/support/v4/media/session/PlaybackStateCompat;Z)Landroidx/media3/session/SessionCommands;
    .locals 7
    .param p0, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;
    .param p1, "isSessionReady"    # Z

    .line 1226
    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    .line 1227
    .local v0, "sessionCommandsBuilder":Landroidx/media3/session/SessionCommands$Builder;
    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->addAllSessionCommands()Landroidx/media3/session/SessionCommands$Builder;

    .line 1228
    if-nez p1, :cond_0

    .line 1231
    const v1, 0x9c4a

    invoke-virtual {v0, v1}, Landroidx/media3/session/SessionCommands$Builder;->remove(I)Landroidx/media3/session/SessionCommands$Builder;

    .line 1234
    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1235
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 1236
    .local v2, "customAction":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, "action":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1238
    .local v4, "extras":Landroid/os/Bundle;
    new-instance v5, Landroidx/media3/session/SessionCommand;

    .line 1239
    if-nez v4, :cond_1

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    invoke-direct {v5, v3, v6}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1238
    invoke-virtual {v0, v5}, Landroidx/media3/session/SessionCommands$Builder;->add(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/SessionCommands$Builder;

    .line 1240
    .end local v2    # "customAction":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 1242
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->build()Landroidx/media3/session/SessionCommands;

    move-result-object v1

    return-object v1
.end method

.method public static convertToShuffleModeEnabled(I)Z
    .locals 3
    .param p0, "playbackStateCompatShuffleMode"    # I

    .line 1032
    packed-switch p0, :pswitch_data_0

    .line 1040
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized ShuffleMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1035
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToTotalBufferedDurationMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J
    .locals 6
    .param p0, "playbackStateCompat"    # Landroid/support/v4/media/session/PlaybackStateCompat;
    .param p1, "metadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p2, "timeDiffMs"    # J

    .line 949
    nop

    .line 950
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->convertToBufferedPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide v0

    .line 951
    .local v0, "bufferedPositionMs":J
    nop

    .line 952
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide v2

    .line 953
    .local v2, "currentPositionMs":J
    sub-long v4, v0, v2

    return-wide v4
.end method

.method public static convertToWindow(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/Timeline$Window;
    .locals 22
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "periodIndex"    # I

    .line 286
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    move-object v1, v0

    .line 287
    .local v1, "window":Landroidx/media3/common/Timeline$Window;
    nop

    .line 288
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 287
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v20, 0x0

    move/from16 v19, p1

    move-object/from16 v3, p0

    move/from16 v18, p1

    invoke-virtual/range {v1 .. v21}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    .line 302
    return-object v1
.end method

.method private static getCurrentPosition(Landroid/support/v4/media/session/PlaybackStateCompat;J)J
    .locals 2
    .param p0, "playbackStateCompat"    # Landroid/support/v4/media/session/PlaybackStateCompat;
    .param p1, "timeDiffMs"    # J

    .line 916
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static varargs getFirstBitmap(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "mediaMetadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p1, "keys"    # [Ljava/lang/String;

    .line 521
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 522
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 521
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static varargs getFirstString(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mediaMetadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p1, "keys"    # [Ljava/lang/String;

    .line 531
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 532
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 531
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static varargs getFirstText(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "mediaMetadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;
    .param p1, "keys"    # [Ljava/lang/String;

    .line 542
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 543
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 542
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFutureResult(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    .locals 9
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1330
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1331
    .local v0, "initialTimeMs":J
    move-wide v2, p1

    .line 1332
    .local v2, "remainingTimeMs":J
    const/4 v4, 0x0

    .line 1336
    .local v4, "interrupted":Z
    :goto_0
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    if-eqz v4, :cond_0

    .line 1348
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 1336
    :cond_0
    return-object v5

    .line 1347
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 1337
    :catch_0
    move-exception v5

    .line 1338
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 1339
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    .line 1340
    .local v6, "elapsedTimeMs":J
    cmp-long v8, v6, p1

    if-gez v8, :cond_1

    .line 1343
    sub-long v2, p1, v6

    .line 1344
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "elapsedTimeMs":J
    goto :goto_0

    .line 1341
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "elapsedTimeMs":J
    :cond_1
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v8}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .end local v0    # "initialTimeMs":J
    .end local v2    # "remainingTimeMs":J
    .end local v4    # "interrupted":Z
    .end local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local p1    # "timeoutMs":J
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "elapsedTimeMs":J
    .restart local v0    # "initialTimeMs":J
    .restart local v2    # "remainingTimeMs":J
    .restart local v4    # "interrupted":Z
    .restart local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local p1    # "timeoutMs":J
    :goto_1
    if-eqz v4, :cond_2

    .line 1348
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 1350
    :cond_2
    throw v5
.end method

.method public static getLegacyStreamType(Landroidx/media3/common/AudioAttributes;)I
    .locals 2
    .param p0, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1317
    invoke-static {p0}, Landroidx/media3/session/LegacyConversions;->convertToAudioAttributesCompat(Landroidx/media3/common/AudioAttributes;)Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result v0

    .line 1318
    .local v0, "legacyStreamType":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1323
    const/4 v1, 0x3

    return v1

    .line 1325
    :cond_0
    return v0
.end method

.method public static getRatingCompatStyle(Landroidx/media3/common/Rating;)I
    .locals 1
    .param p0, "rating"    # Landroidx/media3/common/Rating;

    .line 968
    instance-of v0, p0, Landroidx/media3/common/HeartRating;

    if-eqz v0, :cond_0

    .line 969
    const/4 v0, 0x1

    return v0

    .line 970
    :cond_0
    instance-of v0, p0, Landroidx/media3/common/ThumbRating;

    if-eqz v0, :cond_1

    .line 971
    const/4 v0, 0x2

    return v0

    .line 972
    :cond_1
    instance-of v0, p0, Landroidx/media3/common/StarRating;

    if-eqz v0, :cond_2

    .line 973
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/StarRating;

    invoke-virtual {v0}, Landroidx/media3/common/StarRating;->getMaxStars()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 979
    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 977
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 975
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 981
    :cond_2
    instance-of v0, p0, Landroidx/media3/common/PercentageRating;

    if-eqz v0, :cond_3

    .line 982
    const/4 v0, 0x6

    return v0

    .line 984
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hasAction(JJ)Z
    .locals 4
    .param p0, "actions"    # J
    .param p2, "action"    # J

    .line 1210
    and-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

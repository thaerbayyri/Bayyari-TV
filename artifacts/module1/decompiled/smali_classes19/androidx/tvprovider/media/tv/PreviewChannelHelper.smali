.class public Landroidx/tvprovider/media/tv/PreviewChannelHelper;
.super Ljava/lang/Object;
.source "PreviewChannelHelper.java"


# static fields
.field private static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x2710

.field private static final DEFAULT_URL_CONNNECTION_TIMEOUT_MILLIS:I = 0xbb8

.field private static final INVALID_CONTENT_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PreviewChannelHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUrlConnectionTimeoutMillis:I

.field private final mUrlReadTimeoutMillis:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/16 v0, 0xbb8

    const/16 v1, 0x2710

    invoke-direct {p0, p1, v0, v1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;-><init>(Landroid/content/Context;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlConnectionTimeoutMillis"    # I
    .param p3, "urlReadTimeoutMillis"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    .line 86
    iput p2, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mUrlConnectionTimeoutMillis:I

    .line 87
    iput p3, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mUrlReadTimeoutMillis:I

    .line 88
    return-void
.end method

.method private addChannelLogo(JLandroidx/tvprovider/media/tv/PreviewChannel;)Z
    .locals 7
    .param p1, "channelId"    # J
    .param p3, "channel"    # Landroidx/tvprovider/media/tv/PreviewChannel;

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "result":Z
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/PreviewChannel;->isLogoChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    return v0

    .line 268
    :cond_0
    iget-object v1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1}, Landroidx/tvprovider/media/tv/PreviewChannel;->getLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 269
    .local v1, "logo":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 270
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/PreviewChannel;->getLogoUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->getLogoFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 272
    :cond_1
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildChannelLogoUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 273
    .local v2, "logoUri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    move v0, v4

    .line 276
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    goto :goto_2

    .line 273
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    .end local v0    # "result":Z
    .end local v1    # "logo":Landroid/graphics/Bitmap;
    .end local v2    # "logoUri":Landroid/net/Uri;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local p1    # "channelId":J
    .end local p3    # "channel":Landroidx/tvprovider/media/tv/PreviewChannel;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 277
    .restart local v0    # "result":Z
    .restart local v1    # "logo":Landroid/graphics/Bitmap;
    .restart local v2    # "logoUri":Landroid/net/Uri;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "channelId":J
    .restart local p3    # "channel":Landroidx/tvprovider/media/tv/PreviewChannel;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Z
    .end local v1    # "logo":Landroid/graphics/Bitmap;
    .end local v2    # "logoUri":Landroid/net/Uri;
    .end local p1    # "channelId":J
    .end local p3    # "channel":Landroidx/tvprovider/media/tv/PreviewChannel;
    :cond_3
    :goto_0
    throw v5
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "result":Z
    .restart local v1    # "logo":Landroid/graphics/Bitmap;
    .restart local v2    # "logoUri":Landroid/net/Uri;
    .restart local p1    # "channelId":J
    .restart local p3    # "channel":Landroidx/tvprovider/media/tv/PreviewChannel;
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    .line 278
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add logo to the published channel (ID= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PreviewChannelHelper"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method private getLogoFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "logoUri"    # Landroid/net/Uri;

    .line 290
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "scheme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 292
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 295
    .local v2, "logoImage":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v3, "android.resource"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "file"

    .line 296
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "content"

    .line 297
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->downloadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v2, v3

    .end local v2    # "logoImage":Landroid/graphics/Bitmap;
    .local v3, "logoImage":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 299
    .end local v3    # "logoImage":Landroid/graphics/Bitmap;
    .restart local v2    # "logoImage":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 300
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 308
    :goto_1
    if-eqz v1, :cond_2

    .line 310
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    :goto_3
    goto :goto_4

    .line 311
    :catch_0
    move-exception v3

    goto :goto_3

    .line 308
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 305
    :catch_1
    move-exception v3

    .line 306
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "PreviewChannelHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get logo from the URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 310
    goto :goto_2

    .line 316
    :cond_2
    :goto_4
    return-object v2

    .line 308
    :goto_5
    if-eqz v1, :cond_3

    .line 310
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 313
    goto :goto_6

    .line 311
    :catch_2
    move-exception v4

    .line 313
    :cond_3
    :goto_6
    throw v3
.end method


# virtual methods
.method public deletePreviewChannel(J)V
    .locals 3
    .param p1, "channelId"    # J

    .line 353
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 353
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method public deletePreviewProgram(J)V
    .locals 3
    .param p1, "programId"    # J

    .line 418
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 419
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildPreviewProgramUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 418
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method protected downloadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "logoUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "urlConnection":Ljava/net/URLConnection;
    const/4 v1, 0x0

    .line 326
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 329
    .local v2, "logoImage":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    .line 330
    iget v3, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mUrlConnectionTimeoutMillis:I

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 331
    iget v3, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mUrlReadTimeoutMillis:I

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 332
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 333
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v2    # "logoImage":Landroid/graphics/Bitmap;
    .local v3, "logoImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 337
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    goto :goto_0

    .line 338
    :catch_0
    move-exception v2

    .line 342
    :cond_0
    :goto_0
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    .line 343
    move-object v2, v0

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 346
    :cond_1
    return-object v3

    .line 335
    .end local v3    # "logoImage":Landroid/graphics/Bitmap;
    .restart local v2    # "logoImage":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 337
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 340
    goto :goto_1

    .line 338
    :catch_1
    move-exception v4

    .line 342
    :cond_2
    :goto_1
    instance-of v4, v0, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_3

    .line 343
    move-object v4, v0

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v3
.end method

.method public getAllChannels()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/tvprovider/media/tv/PreviewChannel;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroidx/tvprovider/media/tv/TvContractCompat$Channels;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroidx/tvprovider/media/tv/PreviewChannel$Columns;->PROJECTION:[Ljava/lang/String;

    .line 180
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 187
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Landroidx/tvprovider/media/tv/PreviewChannel;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    invoke-static {v0}, Landroidx/tvprovider/media/tv/PreviewChannel;->fromCursor(Landroid/database/Cursor;)Landroidx/tvprovider/media/tv/PreviewChannel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    :cond_1
    return-object v1
.end method

.method public getPreviewChannel(J)Landroidx/tvprovider/media/tv/PreviewChannel;
    .locals 7
    .param p1, "channelId"    # J

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "channel":Landroidx/tvprovider/media/tv/PreviewChannel;
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 206
    .local v2, "channelUri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroidx/tvprovider/media/tv/PreviewChannel$Columns;->PROJECTION:[Ljava/lang/String;

    .line 207
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 208
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-static {v1}, Landroidx/tvprovider/media/tv/PreviewChannel;->fromCursor(Landroid/database/Cursor;)Landroidx/tvprovider/media/tv/PreviewChannel;

    move-result-object v0

    .line 211
    :cond_0
    return-object v0
.end method

.method public getPreviewProgram(J)Landroidx/tvprovider/media/tv/PreviewProgram;
    .locals 7
    .param p1, "programId"    # J

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "program":Landroidx/tvprovider/media/tv/PreviewProgram;
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildPreviewProgramUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 382
    .local v2, "programUri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 383
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    invoke-static {v1}, Landroidx/tvprovider/media/tv/PreviewProgram;->fromCursor(Landroid/database/Cursor;)Landroidx/tvprovider/media/tv/PreviewProgram;

    move-result-object v0

    .line 386
    :cond_0
    return-object v0
.end method

.method public getWatchNextProgram(J)Landroidx/tvprovider/media/tv/WatchNextProgram;
    .locals 7
    .param p1, "programId"    # J

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "program":Landroidx/tvprovider/media/tv/WatchNextProgram;
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildWatchNextProgramUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 443
    .local v2, "programUri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 444
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    invoke-static {v1}, Landroidx/tvprovider/media/tv/WatchNextProgram;->fromCursor(Landroid/database/Cursor;)Landroidx/tvprovider/media/tv/WatchNextProgram;

    move-result-object v0

    .line 447
    :cond_0
    return-object v0
.end method

.method public publishChannel(Landroidx/tvprovider/media/tv/PreviewChannel;)J
    .locals 7
    .param p1, "channel"    # Landroidx/tvprovider/media/tv/PreviewChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroidx/tvprovider/media/tv/TvContractCompat$Channels;->CONTENT_URI:Landroid/net/Uri;

    .line 127
    invoke-virtual {p1}, Landroidx/tvprovider/media/tv/PreviewChannel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, "channelUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 132
    .local v1, "channelId":J
    invoke-direct {p0, v1, v2, p1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->addChannelLogo(JLandroidx/tvprovider/media/tv/PreviewChannel;)Z

    move-result v3

    .line 134
    .local v3, "logoAdded":Z
    if-eqz v3, :cond_0

    .line 139
    return-wide v1

    .line 135
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->deletePreviewChannel(J)V

    .line 136
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add logo, so channel (ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") was not created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "channel":Landroidx/tvprovider/media/tv/PreviewChannel;
    throw v4

    .line 129
    .end local v1    # "channelId":J
    .end local v3    # "logoAdded":Z
    .restart local p1    # "channel":Landroidx/tvprovider/media/tv/PreviewChannel;
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Channel insertion failed"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "channel":Landroidx/tvprovider/media/tv/PreviewChannel;
    throw v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "channelUri":Landroid/net/Uri;
    .restart local p1    # "channel":Landroidx/tvprovider/media/tv/PreviewChannel;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "PreviewChannelHelper"

    const-string v2, "Your app\'s ability to insert data into the TvProvider may have been revoked."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Ljava/lang/SecurityException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public publishDefaultChannel(Landroidx/tvprovider/media/tv/PreviewChannel;)J
    .locals 3
    .param p1, "channel"    # Landroidx/tvprovider/media/tv/PreviewChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->publishChannel(Landroidx/tvprovider/media/tv/PreviewChannel;)J

    move-result-wide v0

    .line 169
    .local v0, "channelId":J
    iget-object v2, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroidx/tvprovider/media/tv/TvContractCompat;->requestChannelBrowsable(Landroid/content/Context;J)V

    .line 170
    return-wide v0
.end method

.method public publishPreviewProgram(Landroidx/tvprovider/media/tv/PreviewProgram;)J
    .locals 3
    .param p1, "program"    # Landroidx/tvprovider/media/tv/PreviewProgram;

    .line 364
    :try_start_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroidx/tvprovider/media/tv/TvContractCompat$PreviewPrograms;->CONTENT_URI:Landroid/net/Uri;

    .line 366
    invoke-virtual {p1}, Landroidx/tvprovider/media/tv/PreviewProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 367
    .local v0, "programUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .local v1, "programId":J
    return-wide v1

    .line 369
    .end local v0    # "programUri":Landroid/net/Uri;
    .end local v1    # "programId":J
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "PreviewChannelHelper"

    const-string v2, "Your app\'s ability to insert data into the TvProvider may have been revoked."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .end local v0    # "e":Ljava/lang/SecurityException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public publishWatchNextProgram(Landroidx/tvprovider/media/tv/WatchNextProgram;)J
    .locals 3
    .param p1, "program"    # Landroidx/tvprovider/media/tv/WatchNextProgram;

    .line 427
    :try_start_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    .line 428
    invoke-virtual {p1}, Landroidx/tvprovider/media/tv/WatchNextProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 429
    .local v0, "programUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 430
    .end local v0    # "programUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "PreviewChannelHelper"

    const-string v2, "Your app\'s ability to insert data into the TvProvider may have been revoked."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    .end local v0    # "e":Ljava/lang/SecurityException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public updatePreviewChannel(JLandroidx/tvprovider/media/tv/PreviewChannel;)V
    .locals 5
    .param p1, "channelId"    # J
    .param p3, "update"    # Landroidx/tvprovider/media/tv/PreviewChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p1, p2}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->getPreviewChannel(J)Landroidx/tvprovider/media/tv/PreviewChannel;

    move-result-object v0

    .line 230
    .local v0, "curr":Landroidx/tvprovider/media/tv/PreviewChannel;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroidx/tvprovider/media/tv/PreviewChannel;->hasAnyUpdatedValues(Landroidx/tvprovider/media/tv/PreviewChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2, p3}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->updatePreviewChannelInternal(JLandroidx/tvprovider/media/tv/PreviewChannel;)V

    .line 233
    :cond_0
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/PreviewChannel;->isLogoChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->addChannelLogo(JLandroidx/tvprovider/media/tv/PreviewChannel;)Z

    move-result v1

    .line 235
    .local v1, "logoAdded":Z
    if-eqz v1, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to update channel (ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") logo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    .end local v1    # "logoAdded":Z
    :cond_2
    :goto_0
    return-void
.end method

.method protected updatePreviewChannelInternal(JLandroidx/tvprovider/media/tv/PreviewChannel;)V
    .locals 4
    .param p1, "channelId"    # J
    .param p3, "upgrade"    # Landroidx/tvprovider/media/tv/PreviewChannel;

    .line 249
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 250
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 251
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/PreviewChannel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 249
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public updatePreviewProgram(JLandroidx/tvprovider/media/tv/PreviewProgram;)V
    .locals 2
    .param p1, "programId"    # J
    .param p3, "update"    # Landroidx/tvprovider/media/tv/PreviewProgram;

    .line 395
    invoke-virtual {p0, p1, p2}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->getPreviewProgram(J)Landroidx/tvprovider/media/tv/PreviewProgram;

    move-result-object v0

    .line 396
    .local v0, "curr":Landroidx/tvprovider/media/tv/PreviewProgram;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroidx/tvprovider/media/tv/PreviewProgram;->hasAnyUpdatedValues(Landroidx/tvprovider/media/tv/PreviewProgram;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {p0, p1, p2, p3}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->updatePreviewProgramInternal(JLandroidx/tvprovider/media/tv/PreviewProgram;)V

    .line 399
    :cond_0
    return-void
.end method

.method updatePreviewProgramInternal(JLandroidx/tvprovider/media/tv/PreviewProgram;)V
    .locals 4
    .param p1, "programId"    # J
    .param p3, "upgrade"    # Landroidx/tvprovider/media/tv/PreviewProgram;

    .line 409
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 410
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildPreviewProgramUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 411
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/PreviewProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 409
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method updateWatchNextProgram(JLandroidx/tvprovider/media/tv/WatchNextProgram;)V
    .locals 4
    .param p1, "programId"    # J
    .param p3, "upgrade"    # Landroidx/tvprovider/media/tv/WatchNextProgram;

    .line 470
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 471
    invoke-static {p1, p2}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildWatchNextProgramUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 472
    invoke-virtual {p3}, Landroidx/tvprovider/media/tv/WatchNextProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 470
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method public updateWatchNextProgram(Landroidx/tvprovider/media/tv/WatchNextProgram;J)V
    .locals 2
    .param p1, "upgrade"    # Landroidx/tvprovider/media/tv/WatchNextProgram;
    .param p2, "programId"    # J

    .line 456
    invoke-virtual {p0, p2, p3}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->getWatchNextProgram(J)Landroidx/tvprovider/media/tv/WatchNextProgram;

    move-result-object v0

    .line 457
    .local v0, "curr":Landroidx/tvprovider/media/tv/WatchNextProgram;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/tvprovider/media/tv/WatchNextProgram;->hasAnyUpdatedValues(Landroidx/tvprovider/media/tv/WatchNextProgram;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {p0, p2, p3, p1}, Landroidx/tvprovider/media/tv/PreviewChannelHelper;->updateWatchNextProgram(JLandroidx/tvprovider/media/tv/WatchNextProgram;)V

    .line 460
    :cond_0
    return-void
.end method

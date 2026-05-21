.class public final Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;
.super Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
.source "WatchNextProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/WatchNextProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<",
        "Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;-><init>()V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroidx/tvprovider/media/tv/WatchNextProgram;)V
    .locals 2
    .param p1, "other"    # Landroidx/tvprovider/media/tv/WatchNextProgram;

    .line 235
    invoke-direct {p0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;-><init>()V

    .line 236
    new-instance v0, Landroid/content/ContentValues;

    iget-object v1, p1, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->mValues:Landroid/content/ContentValues;

    .line 237
    return-void
.end method


# virtual methods
.method public build()Landroidx/tvprovider/media/tv/WatchNextProgram;
    .locals 1

    .line 274
    new-instance v0, Landroidx/tvprovider/media/tv/WatchNextProgram;

    invoke-direct {v0, p0}, Landroidx/tvprovider/media/tv/WatchNextProgram;-><init>(Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;)V

    return-object v0
.end method

.method public setLastEngagementTimeUtcMillis(J)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;
    .locals 3
    .param p1, "lastEngagementTimeUtcMillis"    # J

    .line 265
    iget-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->mValues:Landroid/content/ContentValues;

    .line 266
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 265
    const-string v2, "last_engagement_time_utc_millis"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    return-object p0
.end method

.method public setWatchNextType(I)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;
    .locals 3
    .param p1, "watchNextType"    # I

    .line 252
    iget-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "watch_next_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    return-object p0
.end method

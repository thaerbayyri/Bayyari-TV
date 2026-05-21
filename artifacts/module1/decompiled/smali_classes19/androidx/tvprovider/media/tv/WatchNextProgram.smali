.class public final Landroidx/tvprovider/media/tv/WatchNextProgram;
.super Landroidx/tvprovider/media/tv/BasePreviewProgram;
.source "WatchNextProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;,
        Landroidx/tvprovider/media/tv/WatchNextProgram$WatchNextType;
    }
.end annotation


# static fields
.field private static final INVALID_INT_VALUE:I = -0x1

.field private static final INVALID_LONG_VALUE:J = -0x1L

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final WATCH_NEXT_TYPE_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    invoke-static {}, Landroidx/tvprovider/media/tv/WatchNextProgram;->getProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/tvprovider/media/tv/WatchNextProgram;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 109
    invoke-direct {p0, p1}, Landroidx/tvprovider/media/tv/BasePreviewProgram;-><init>(Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;)V

    .line 110
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Landroidx/tvprovider/media/tv/WatchNextProgram;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 196
    new-instance v0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    invoke-direct {v0}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;-><init>()V

    .line 197
    .local v0, "builder":Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;
    invoke-static {p0, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram;->setFieldsFromCursor(Landroid/database/Cursor;Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;)V

    .line 199
    const-string v1, "watch_next_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .local v2, "index":I
    if-ltz v1, :cond_0

    .line 200
    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setWatchNextType(I)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 203
    :cond_0
    const-string v1, "last_engagement_time_utc_millis"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    if-ltz v1, :cond_1

    .line 205
    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setLastEngagementTimeUtcMillis(J)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 208
    :cond_1
    invoke-virtual {v0}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->build()Landroidx/tvprovider/media/tv/WatchNextProgram;

    move-result-object v1

    return-object v1
.end method

.method private static getProjection()[Ljava/lang/String;
    .locals 4

    .line 212
    const-string v0, "watch_next_type"

    const-string v1, "last_engagement_time_utc_millis"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "oColumns":[Ljava/lang/String;
    sget-object v1, Landroidx/tvprovider/media/tv/BasePreviewProgram;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroidx/tvprovider/media/tv/CollectionUtils;->concatAll([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 132
    instance-of v0, p1, Landroidx/tvprovider/media/tv/WatchNextProgram;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    move-object v1, p1

    check-cast v1, Landroidx/tvprovider/media/tv/WatchNextProgram;

    iget-object v1, v1, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLastEngagementTimeUtcMillis()J
    .locals 3

    .line 126
    iget-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_engagement_time_utc_millis"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 127
    .local v0, "l":Ljava/lang/Long;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getWatchNextType()I
    .locals 2

    .line 117
    iget-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "watch_next_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 118
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public hasAnyUpdatedValues(Landroidx/tvprovider/media/tv/WatchNextProgram;)Z
    .locals 6
    .param p1, "update"    # Landroidx/tvprovider/media/tv/WatchNextProgram;

    .line 144
    iget-object v0, p1, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 145
    .local v0, "updateKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p1, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 147
    .local v3, "updateValue":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 148
    .local v4, "currValue":Ljava/lang/Object;
    invoke-static {v3, v4}, Lj$/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 149
    const/4 v1, 0x1

    return v1

    .line 151
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "updateValue":Ljava/lang/Object;
    .end local v4    # "currValue":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 1

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/tvprovider/media/tv/WatchNextProgram;->toContentValues(Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public toContentValues(Z)Landroid/content/ContentValues;
    .locals 3
    .param p1, "includeProtectedFields"    # Z

    .line 179
    invoke-super {p0, p1}, Landroidx/tvprovider/media/tv/BasePreviewProgram;->toContentValues(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 180
    .local v0, "values":Landroid/content/ContentValues;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 181
    const-string v1, "watch_next_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 182
    const-string v1, "last_engagement_time_utc_millis"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 184
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatchNextProgram{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

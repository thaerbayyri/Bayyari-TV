.class public final Landroidx/tvprovider/media/tv/PreviewProgram$Builder;
.super Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
.source "PreviewProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/PreviewProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<",
        "Landroidx/tvprovider/media/tv/PreviewProgram$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;-><init>()V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroidx/tvprovider/media/tv/PreviewProgram;)V
    .locals 2
    .param p1, "other"    # Landroidx/tvprovider/media/tv/PreviewProgram;

    .line 211
    invoke-direct {p0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;-><init>()V

    .line 212
    new-instance v0, Landroid/content/ContentValues;

    iget-object v1, p1, Landroidx/tvprovider/media/tv/PreviewProgram;->mValues:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    .line 213
    return-void
.end method


# virtual methods
.method public build()Landroidx/tvprovider/media/tv/PreviewProgram;
    .locals 1

    .line 241
    new-instance v0, Landroidx/tvprovider/media/tv/PreviewProgram;

    invoke-direct {v0, p0}, Landroidx/tvprovider/media/tv/PreviewProgram;-><init>(Landroidx/tvprovider/media/tv/PreviewProgram$Builder;)V

    return-object v0
.end method

.method public setChannelId(J)Landroidx/tvprovider/media/tv/PreviewProgram$Builder;
    .locals 3
    .param p1, "channelId"    # J

    .line 222
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "channel_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    return-object p0
.end method

.method public setWeight(I)Landroidx/tvprovider/media/tv/PreviewProgram$Builder;
    .locals 3
    .param p1, "weight"    # I

    .line 233
    iget-object v0, p0, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "weight"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    return-object p0
.end method

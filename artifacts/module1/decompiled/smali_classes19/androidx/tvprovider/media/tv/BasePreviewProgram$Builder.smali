.class public abstract Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
.super Landroidx/tvprovider/media/tv/BaseProgram$Builder;
.source "BasePreviewProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/BasePreviewProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;",
        ">",
        "Landroidx/tvprovider/media/tv/BaseProgram$Builder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final sFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 629
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->sFormat:Ljava/text/SimpleDateFormat;

    .line 633
    sget-object v0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->sFormat:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT-0"

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 634
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 639
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    invoke-direct {p0}, Landroidx/tvprovider/media/tv/BaseProgram$Builder;-><init>()V

    .line 640
    return-void
.end method

.method public constructor <init>(Landroidx/tvprovider/media/tv/BasePreviewProgram;)V
    .locals 2
    .param p1, "other"    # Landroidx/tvprovider/media/tv/BasePreviewProgram;

    .line 647
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    invoke-direct {p0}, Landroidx/tvprovider/media/tv/BaseProgram$Builder;-><init>()V

    .line 648
    new-instance v0, Landroid/content/ContentValues;

    iget-object v1, p1, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    .line 649
    return-void
.end method


# virtual methods
.method public setAuthor(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 2
    .param p1, "author"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 967
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "author"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    return-object p0
.end method

.method public setAvailability(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "availability"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 842
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "availability"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    return-object p0
.end method

.method public setBrowsable(Z)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "browsable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 981
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "browsable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    return-object p0
.end method

.method public setContentId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 993
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "content_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    return-object p0
.end method

.method public setDurationMillis(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 698
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "duration_millis"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    return-object p0
.end method

.method public setEndTimeUtcMillis(J)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1045
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "end_time_utc_millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1046
    return-object p0
.end method

.method public setGenre(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 2
    .param p1, "genre"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1020
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "genre"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .line 722
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "intentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    .line 710
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    :goto_0
    const-string v2, "intent_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return-object p0
.end method

.method public setInteractionCount(J)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "interactionCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 955
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "interaction_count"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 956
    return-object p0
.end method

.method public setInteractionType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "interactionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 943
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "interaction_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 944
    return-object p0
.end method

.method public setInternalProviderId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 2
    .param p1, "externalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 660
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-object p0
.end method

.method public setItemCount(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 905
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "item_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    return-object p0
.end method

.method public setLastPlaybackPositionMillis(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 686
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_playback_position_millis"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    return-object p0
.end method

.method public setLive(Z)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "live"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 917
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "live"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    return-object p0
.end method

.method public setLogoContentDescription(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 2
    .param p1, "logoContentDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1008
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "logo_content_description"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    return-object p0
.end method

.method public setLogoUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "logoUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    .line 817
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    :goto_0
    const-string v2, "logo_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    return-object p0
.end method

.method public setOfferPrice(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 2
    .param p1, "price"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 866
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "offer_price"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    return-object p0
.end method

.method public setPosterArtAspectRatio(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "ratio"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 783
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "poster_art_aspect_ratio"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 784
    return-object p0
.end method

.method public setPreviewAudioUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "previewAudioUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    .line 1057
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1057
    :goto_0
    const-string v2, "preview_audio_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    return-object p0
.end method

.method public setPreviewVideoUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "previewVideoUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    .line 672
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 672
    :goto_0
    const-string v2, "preview_video_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 2
    .param p1, "releaseDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 881
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "release_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-object p0
.end method

.method public setReleaseDate(Ljava/util/Date;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "releaseDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TT;"
        }
    .end annotation

    .line 893
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    sget-object v1, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->sFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "release_date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    return-object p0
.end method

.method public setStartTimeUtcMillis(J)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1033
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "start_time_utc_millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1034
    return-object p0
.end method

.method public setStartingPrice(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 2
    .param p1, "price"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 854
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "starting_price"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return-object p0
.end method

.method public setThumbnailAspectRatio(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "ratio"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 805
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "poster_thumbnail_aspect_ratio"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 806
    return-object p0
.end method

.method public setTransient(Z)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "transientValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 733
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "transient"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    return-object p0
.end method

.method public setTvSeriesItemType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1069
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "tv_series_item_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    return-object p0
.end method

.method public setType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 760
    .local p0, "this":Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;, "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<TT;>;"
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    return-object p0
.end method

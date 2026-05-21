.class public final Landroidx/tvprovider/media/tv/Channel$Builder;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    .line 600
    return-void
.end method

.method public constructor <init>(Landroidx/tvprovider/media/tv/Channel;)V
    .locals 2
    .param p1, "other"    # Landroidx/tvprovider/media/tv/Channel;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    new-instance v0, Landroid/content/ContentValues;

    iget-object v1, p1, Landroidx/tvprovider/media/tv/Channel;->mValues:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    .line 604
    return-void
.end method


# virtual methods
.method public build()Landroidx/tvprovider/media/tv/Channel;
    .locals 1

    .line 1003
    new-instance v0, Landroidx/tvprovider/media/tv/Channel;

    invoke-direct {v0, p0}, Landroidx/tvprovider/media/tv/Channel;-><init>(Landroidx/tvprovider/media/tv/Channel$Builder;)V

    return-object v0
.end method

.method public setAppLinkColor(I)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "appLinkColor"    # I

    .line 774
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "app_link_color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    return-object p0
.end method

.method public setAppLinkIconUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "appLinkIconUri"    # Landroid/net/Uri;

    .line 786
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    :goto_0
    const-string v2, "app_link_icon_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    return-object p0
.end method

.method public setAppLinkIntent(Landroid/content/Intent;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 1
    .param p1, "appLinkIntent"    # Landroid/content/Intent;

    .line 811
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/tvprovider/media/tv/Channel$Builder;->setAppLinkIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/Channel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppLinkIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "appLinkIntentUri"    # Landroid/net/Uri;

    .line 824
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 825
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 824
    :goto_0
    const-string v2, "app_link_intent_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    return-object p0
.end method

.method public setAppLinkPosterArtUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "appLinkPosterArtUri"    # Landroid/net/Uri;

    .line 799
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 800
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 799
    :goto_0
    const-string v2, "app_link_poster_art_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    return-object p0
.end method

.method public setAppLinkText(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "appLinkText"    # Ljava/lang/String;

    .line 763
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "app_link_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    return-object p0
.end method

.method public setBrowsable(Z)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "value"    # Z

    .line 941
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "browsable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    return-object p0
.end method

.method public setConfigurationDisplayOrder(I)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 967
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "configuration_display_order"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 968
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .line 681
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;

    .line 670
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-object p0
.end method

.method public setDisplayNumber(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "displayNumber"    # Ljava/lang/String;

    .line 659
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "display_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return-object p0
.end method

.method setId(J)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "id"    # J

    .line 613
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 614
    return-object p0
.end method

.method public setInputId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 637
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "input_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-object p0
.end method

.method public setInternalProviderData(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "internalProviderData"    # Ljava/lang/String;

    .line 751
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    .line 752
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 751
    const-string v2, "internal_provider_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 753
    return-object p0
.end method

.method public setInternalProviderData([B)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "internalProviderData"    # [B

    .line 739
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 740
    return-object p0
.end method

.method public setInternalProviderFlag1(J)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "flag"    # J

    .line 872
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 873
    return-object p0
.end method

.method public setInternalProviderFlag2(J)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "flag"    # J

    .line 883
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag2"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 884
    return-object p0
.end method

.method public setInternalProviderFlag3(J)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "flag"    # J

    .line 894
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag3"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 895
    return-object p0
.end method

.method public setInternalProviderFlag4(J)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "flag"    # J

    .line 905
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_flag4"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 906
    return-object p0
.end method

.method public setInternalProviderId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "internalProviderId"    # Ljava/lang/String;

    .line 917
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-object p0
.end method

.method public setLocked(Z)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "value"    # Z

    .line 994
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "locked"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 995
    return-object p0
.end method

.method public setNetworkAffiliation(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "networkAffiliation"    # Ljava/lang/String;

    .line 837
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "network_affiliation"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-object p0
.end method

.method public setOriginalNetworkId(I)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "originalNetworkId"    # I

    .line 704
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "original_network_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    return-object p0
.end method

.method setPackageName(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 626
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-object p0
.end method

.method public setSearchable(Z)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "searchable"    # Z

    .line 848
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "searchable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    return-object p0
.end method

.method public setServiceId(I)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "serviceId"    # I

    .line 727
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "service_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    return-object p0
.end method

.method public setServiceType(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 861
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "service_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-object p0
.end method

.method public setSystemApproved(Z)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "value"    # Z

    .line 954
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "system_approved"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 955
    return-object p0
.end method

.method public setSystemChannelKey(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 981
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "system_channel_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return-object p0
.end method

.method public setTransient(Z)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "value"    # Z

    .line 928
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "transient"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    return-object p0
.end method

.method public setTransportStreamId(I)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 3
    .param p1, "transportStreamId"    # I

    .line 716
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "transport_stream_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 717
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 648
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    return-object p0
.end method

.method public setVideoFormat(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;
    .locals 2
    .param p1, "videoFormat"    # Ljava/lang/String;

    .line 692
    iget-object v0, p0, Landroidx/tvprovider/media/tv/Channel$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "video_format"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    return-object p0
.end method

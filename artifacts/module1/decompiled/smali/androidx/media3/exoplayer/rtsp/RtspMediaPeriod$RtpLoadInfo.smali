.class final Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RtpLoadInfo"
.end annotation


# instance fields
.field private final loadable:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

.field public final mediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

.field final synthetic this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

.field private transport:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;ILandroidx/media3/extractor/TrackOutput;Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)V
    .locals 7
    .param p1, "this$0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
    .param p2, "mediaTrack"    # Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;
    .param p3, "trackId"    # I
    .param p4, "trackOutput"    # Landroidx/media3/extractor/TrackOutput;
    .param p5, "rtpDataChannelFactory"    # Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    .line 890
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->mediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    .line 894
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;)V

    move-object v4, v0

    .line 909
    .local v4, "transportEventListener":Landroidx/media3/exoplayer/rtsp/RtpDataLoadable$EventListener;
    new-instance v1, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    new-instance v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$ExtractorOutputImpl;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p4, v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$ExtractorOutputImpl;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$1;)V

    move-object v3, p2

    move v2, p3

    move-object v6, p5

    .end local p2    # "mediaTrack":Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;
    .end local p3    # "trackId":I
    .end local p5    # "rtpDataChannelFactory":Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;
    .local v2, "trackId":I
    .local v3, "mediaTrack":Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;
    .local v6, "rtpDataChannelFactory":Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;-><init>(ILandroidx/media3/exoplayer/rtsp/RtspMediaTrack;Landroidx/media3/exoplayer/rtsp/RtpDataLoadable$EventListener;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->loadable:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    .line 916
    return-void
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    .line 877
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->loadable:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    return-object v0
.end method


# virtual methods
.method public getTrackUri()Landroid/net/Uri;
    .locals 1

    .line 938
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->loadable:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    iget-object v0, v0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->rtspMediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    iget-object v0, v0, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .line 932
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->transport:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public isTransportReady()Z
    .locals 1

    .line 923
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->transport:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$androidx-media3-exoplayer-rtsp-RtspMediaPeriod$RtpLoadInfo(Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V
    .locals 3
    .param p1, "transport"    # Ljava/lang/String;
    .param p2, "rtpDataChannel"    # Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 896
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->transport:Ljava/lang/String;

    .line 899
    nop

    .line 900
    invoke-interface {p2}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;->getInterleavedBinaryDataListener()Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;

    move-result-object v0

    .line 901
    .local v0, "interleavedBinaryDataListener":Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;
    if-eqz v0, :cond_0

    .line 902
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$900(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspClient;

    move-result-object v1

    .line 903
    invoke-interface {p2}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;->getLocalPort()I

    move-result v2

    .line 902
    invoke-virtual {v1, v2, v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->registerInterleavedDataChannel(ILandroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;)V

    .line 904
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$602(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Z)Z

    .line 906
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    .line 907
    return-void
.end method

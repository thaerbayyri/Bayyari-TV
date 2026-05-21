.class public final Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
.super Ljava/lang/Object;
.source "SessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/SessionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bitrate:I

.field private connection:Ljava/lang/String;

.field private emailAddress:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private final mediaDescriptionListBuilder:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Landroidx/media3/exoplayer/rtsp/MediaDescription;",
            ">;"
        }
    .end annotation
.end field

.field private origin:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private sessionInfo:Ljava/lang/String;

.field private sessionName:Ljava/lang/String;

.field private timing:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->attributes:Ljava/util/HashMap;

    .line 58
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->mediaDescriptionListBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->bitrate:I

    .line 60
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->attributes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->sessionInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->mediaDescriptionListBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->sessionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->origin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->timing:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->connection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->bitrate:I

    return v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-object p0
.end method

.method public addMediaDescription(Landroidx/media3/exoplayer/rtsp/MediaDescription;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 1
    .param p1, "mediaDescription"    # Landroidx/media3/exoplayer/rtsp/MediaDescription;

    .line 209
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->mediaDescriptionListBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 210
    return-object p0
.end method

.method public build()Landroidx/media3/exoplayer/rtsp/SessionDescription;
    .locals 2

    .line 219
    new-instance v0, Landroidx/media3/exoplayer/rtsp/SessionDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/rtsp/SessionDescription;-><init>(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;Landroidx/media3/exoplayer/rtsp/SessionDescription$1;)V

    return-object v0
.end method

.method public setBitrate(I)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 0
    .param p1, "bitrate"    # I

    .line 134
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->bitrate:I

    .line 135
    return-object p0
.end method

.method public setConnection(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 0
    .param p1, "connection"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->connection:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .line 172
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->emailAddress:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->key:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->origin:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->phoneNumber:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public setSessionInfo(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 0
    .param p1, "sessionInfo"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->sessionInfo:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public setSessionName(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 0
    .param p1, "sessionName"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->sessionName:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public setTiming(Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 0
    .param p1, "timing"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->timing:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 96
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->uri:Landroid/net/Uri;

    .line 97
    return-object p0
.end method

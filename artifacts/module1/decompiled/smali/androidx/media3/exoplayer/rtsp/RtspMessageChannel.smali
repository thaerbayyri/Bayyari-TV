.class final Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;
.super Ljava/lang/Object;
.source "RtspMessageChannel.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;,
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;,
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;,
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;,
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;,
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;
    }
.end annotation


# static fields
.field public static final CHARSET:Ljava/nio/charset/Charset;

.field public static final DEFAULT_RTSP_PORT:I = 0x22a

.field private static final TAG:Ljava/lang/String; = "RtspMessageChannel"


# instance fields
.field private volatile closed:Z

.field private final interleavedBinaryDataListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final messageListener:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;

.field private final receiverLoader:Landroidx/media3/exoplayer/upstream/Loader;

.field private sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;)V
    .locals 2
    .param p1, "messageListener"    # Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->messageListener:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;

    .line 133
    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader;

    const-string v1, "ExoPlayer:RtspMessageChannel:ReceiverLoader"

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->receiverLoader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->interleavedBinaryDataListeners:Ljava/util/Map;

    .line 135
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 59
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->closed:Z

    return v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;)Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->messageListener:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->interleavedBinaryDataListeners:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->closed:Z

    if-eqz v0, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;->close()V

    .line 174
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->receiverLoader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->release()V

    .line 176
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->closed:Z

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->closed:Z

    .line 181
    throw v1
.end method

.method public open(Ljava/net/Socket;)V
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->socket:Ljava/net/Socket;

    .line 147
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    .line 149
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->receiverLoader:Landroidx/media3/exoplayer/upstream/Loader;

    new-instance v1, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;

    .line 150
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;Ljava/io/InputStream;)V

    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$1;)V

    .line 149
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/exoplayer/upstream/Loader;->startLoading(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    .line 153
    return-void
.end method

.method public registerInterleavedBinaryDataListener(ILandroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;)V
    .locals 2
    .param p1, "channel"    # I
    .param p2, "listener"    # Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;

    .line 202
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->interleavedBinaryDataListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public send(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;->send(Ljava/util/List;)V

    .line 192
    return-void
.end method

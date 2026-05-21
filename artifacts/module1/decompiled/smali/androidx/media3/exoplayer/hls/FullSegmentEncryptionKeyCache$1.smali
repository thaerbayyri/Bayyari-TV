.class Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;
.super Ljava/util/LinkedHashMap;
.source "FullSegmentEncryptionKeyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Landroid/net/Uri;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

.field final synthetic val$maxSize:I


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;IFZI)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # F
    .param p4, "arg2"    # Z

    .line 36
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;->this$0:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    iput p5, p0, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;->val$maxSize:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Landroid/net/Uri;",
            "[B>;)Z"
        }
    .end annotation

    .line 39
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;[B>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;->size()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;->val$maxSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class final Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
.super Landroidx/media3/exoplayer/source/chunk/DataChunk;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptionKeyChunk"
.end annotation


# instance fields
.field private result:[B


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;[B)V
    .locals 8
    .param p1, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p3, "trackFormat"    # Landroidx/media3/common/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "scratchSpace"    # [B

    .line 1032
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "dataSource":Landroidx/media3/datasource/DataSource;
    .end local p2    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local p3    # "trackFormat":Landroidx/media3/common/Format;
    .end local p4    # "trackSelectionReason":I
    .end local p5    # "trackSelectionData":Ljava/lang/Object;
    .end local p6    # "scratchSpace":[B
    .local v1, "dataSource":Landroidx/media3/datasource/DataSource;
    .local v2, "dataSpec":Landroidx/media3/datasource/DataSpec;
    .local v4, "trackFormat":Landroidx/media3/common/Format;
    .local v5, "trackSelectionReason":I
    .local v6, "trackSelectionData":Ljava/lang/Object;
    .local v7, "scratchSpace":[B
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/chunk/DataChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;[B)V

    .line 1040
    return-void
.end method


# virtual methods
.method protected consume([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 1044
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    .line 1045
    return-void
.end method

.method public getResult()[B
    .locals 1

    .line 1050
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-object v0
.end method

.class public final Landroidx/media3/datasource/AesFlushingCipher;
.super Ljava/lang/Object;
.source "AesFlushingCipher.java"


# instance fields
.field private final blockSize:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private final flushedBlock:[B

.field private pendingXorBytes:I

.field private final zerosBlock:[B


# direct methods
.method public constructor <init>(I[BJJ)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "secretKey"    # [B
    .param p3, "nonce"    # J
    .param p5, "offset"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    :try_start_0
    const-string v0, "AES/CTR/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    .line 55
    iget-object v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    .line 56
    iget v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->zerosBlock:[B

    .line 57
    iget v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->flushedBlock:[B

    .line 58
    iget v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    int-to-long v0, v0

    div-long v0, p5, v0

    .line 59
    .local v0, "counter":J
    iget v2, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    int-to-long v2, v2

    rem-long v2, p5, v2

    long-to-int v2, v2

    .line 60
    .local v2, "startPadding":I
    iget-object v3, p0, Landroidx/media3/datasource/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Landroidx/media3/datasource/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    .line 62
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, p2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    .line 63
    invoke-direct {p0, p3, p4, v0, v1}, Landroidx/media3/datasource/AesFlushingCipher;->getInitializationVector(JJ)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 60
    invoke-virtual {v3, p1, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 64
    if-eqz v2, :cond_0

    .line 65
    new-array v3, v2, [B

    invoke-virtual {p0, v3, v6, v2}, Landroidx/media3/datasource/AesFlushingCipher;->updateInPlace([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "counter":J
    .end local v2    # "startPadding":I
    :cond_0
    nop

    .line 74
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 72
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(I[BLjava/lang/String;J)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "secretKey"    # [B
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "offset"    # J

    .line 49
    invoke-static {p3}, Landroidx/media3/datasource/AesFlushingCipher;->getFNV64Hash(Ljava/lang/String;)J

    move-result-wide v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v5, p4

    .end local p1    # "mode":I
    .end local p2    # "secretKey":[B
    .end local p4    # "offset":J
    .local v1, "mode":I
    .local v2, "secretKey":[B
    .local v5, "offset":J
    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/AesFlushingCipher;-><init>(I[BJJ)V

    .line 50
    return-void
.end method

.method private static getFNV64Hash(Ljava/lang/String;)J
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .line 138
    if-nez p0, :cond_0

    .line 139
    const-wide/16 v0, 0x0

    return-wide v0

    .line 142
    :cond_0
    const-wide/16 v0, 0x0

    .line 143
    .local v0, "hash":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 144
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    .line 146
    const/4 v3, 0x1

    shl-long v3, v0, v3

    const/4 v5, 0x4

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/4 v5, 0x5

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/4 v5, 0x7

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0x8

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0x28

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method private getInitializationVector(JJ)[B
    .locals 1
    .param p1, "nonce"    # J
    .param p3, "counter"    # J

    .line 129
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private nonFlushingUpdate([BII[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "length"    # I
    .param p4, "out"    # [B
    .param p5, "outOffset"    # I

    .line 121
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "in":[B
    .end local p2    # "inOffset":I
    .end local p3    # "length":I
    .end local p4    # "out":[B
    .end local p5    # "outOffset":I
    .local v1, "in":[B
    .local v2, "inOffset":I
    .local v3, "length":I
    .local v4, "out":[B
    .local v5, "outOffset":I
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p1
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 122
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v1    # "in":[B
    .end local v2    # "inOffset":I
    .end local v3    # "length":I
    .end local v4    # "out":[B
    .end local v5    # "outOffset":I
    .restart local p1    # "in":[B
    .restart local p2    # "inOffset":I
    .restart local p3    # "length":I
    .restart local p4    # "out":[B
    .restart local p5    # "outOffset":I
    :catch_1
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object p1, v0

    .line 124
    .end local p2    # "inOffset":I
    .end local p3    # "length":I
    .end local p4    # "out":[B
    .end local p5    # "outOffset":I
    .restart local v1    # "in":[B
    .restart local v2    # "inOffset":I
    .restart local v3    # "length":I
    .restart local v4    # "out":[B
    .restart local v5    # "outOffset":I
    .local p1, "e":Ljavax/crypto/ShortBufferException;
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public update([BII[BI)V
    .locals 13
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "length"    # I
    .param p4, "out"    # [B
    .param p5, "outOffset"    # I

    .line 84
    move v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    .end local p2    # "inOffset":I
    .end local p3    # "length":I
    .end local p5    # "outOffset":I
    .local v2, "inOffset":I
    .local v3, "length":I
    .local v5, "outOffset":I
    :cond_0
    iget v1, p0, Landroidx/media3/datasource/AesFlushingCipher;->pendingXorBytes:I

    const/4 v6, 0x1

    if-lez v1, :cond_1

    .line 85
    aget-byte v1, p1, v2

    iget-object v4, p0, Landroidx/media3/datasource/AesFlushingCipher;->flushedBlock:[B

    iget v7, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    iget v8, p0, Landroidx/media3/datasource/AesFlushingCipher;->pendingXorBytes:I

    sub-int/2addr v7, v8

    aget-byte v4, v4, v7

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p4, v5

    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    iget v1, p0, Landroidx/media3/datasource/AesFlushingCipher;->pendingXorBytes:I

    sub-int/2addr v1, v6

    iput v1, p0, Landroidx/media3/datasource/AesFlushingCipher;->pendingXorBytes:I

    .line 89
    add-int/lit8 v3, v3, -0x1

    .line 90
    if-nez v3, :cond_0

    .line 91
    return-void

    .line 96
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result v7

    .line 97
    move v8, v2

    move v9, v3

    .end local v2    # "inOffset":I
    .end local v3    # "length":I
    .local v7, "written":I
    .local v8, "inOffset":I
    .local v9, "length":I
    if-ne v9, v7, :cond_2

    .line 98
    return-void

    .line 106
    :cond_2
    sub-int v10, v9, v7

    .line 107
    .local v10, "bytesToFlush":I
    iget v1, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    const/4 v11, 0x0

    if-ge v10, v1, :cond_3

    move v1, v6

    goto :goto_0

    :cond_3
    move v1, v11

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 108
    add-int v12, v5, v7

    .line 109
    .end local v5    # "outOffset":I
    .local v12, "outOffset":I
    iget v1, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    sub-int/2addr v1, v10

    iput v1, p0, Landroidx/media3/datasource/AesFlushingCipher;->pendingXorBytes:I

    .line 110
    iget-object v1, p0, Landroidx/media3/datasource/AesFlushingCipher;->zerosBlock:[B

    iget v3, p0, Landroidx/media3/datasource/AesFlushingCipher;->pendingXorBytes:I

    iget-object v4, p0, Landroidx/media3/datasource/AesFlushingCipher;->flushedBlock:[B

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result v1

    .line 111
    .end local v7    # "written":I
    .local v1, "written":I
    iget v2, p0, Landroidx/media3/datasource/AesFlushingCipher;->blockSize:I

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v6, v11

    :goto_1
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 114
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v10, :cond_5

    .line 115
    add-int/lit8 v3, v12, 0x1

    .end local v12    # "outOffset":I
    .local v3, "outOffset":I
    iget-object v4, p0, Landroidx/media3/datasource/AesFlushingCipher;->flushedBlock:[B

    aget-byte v4, v4, v2

    aput-byte v4, p4, v12

    .line 114
    add-int/lit8 v2, v2, 0x1

    move v12, v3

    goto :goto_2

    .line 117
    .end local v2    # "i":I
    .end local v3    # "outOffset":I
    .restart local v12    # "outOffset":I
    :cond_5
    return-void
.end method

.method public updateInPlace([BII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 77
    move-object v4, p1

    move v5, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "data":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v1, "data":[B
    .local v2, "offset":I
    .local v3, "length":I
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/datasource/AesFlushingCipher;->update([BII[BI)V

    .line 78
    return-void
.end method

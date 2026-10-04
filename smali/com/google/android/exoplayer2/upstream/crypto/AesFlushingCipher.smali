###### Class com.google.android.exoplayer2.upstream.crypto.AesFlushingCipher (com.google.android.exoplayer2.upstream.crypto.AesFlushingCipher)
.class public final Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;
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
    .registers 12

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "AES/CTR/NoPadding"

    .line 46
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    .line 48
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->zerosBlock:[B

    .line 49
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    .line 50
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    int-to-long v0, v0

    div-long v0, p5, v0

    .line 51
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    int-to-long v2, v2

    rem-long/2addr p5, v2

    long-to-int p5, p5

    .line 52
    iget-object p6, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 53
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->getInitializationVector(JJ)[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 52
    invoke-virtual {p6, p1, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p5, :cond_52

    .line 55
    new-array p1, p5, [B

    invoke-virtual {p0, p1, v4, p5}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V
    :try_end_52
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_52} :catch_53
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_52} :catch_53
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_52} :catch_53
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_52} :catch_53

    :cond_52
    return-void

    :catch_53
    move-exception p1

    .line 60
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getInitializationVector(JJ)[B
    .registers 6

    const/16 v0, 0x10

    .line 117
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private nonFlushingUpdate([BII[BI)I
    .registers 12

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p1
    :try_end_b
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_b} :catch_c

    return p1

    :catch_c
    move-exception p1

    .line 112
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public update([BII[BI)V
    .registers 17

    move-object v6, p0

    move v2, p2

    move v8, p3

    move/from16 v7, p5

    .line 72
    :cond_5
    iget v0, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    const/4 v9, 0x1

    if-lez v0, :cond_27

    .line 73
    aget-byte v0, p1, v2

    iget-object v3, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    iget v4, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    iget v5, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    sub-int/2addr v4, v5

    aget-byte v3, v3, v4

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p4, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 76
    iget v0, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    sub-int/2addr v0, v9

    iput v0, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_5

    return-void

    :cond_27
    move-object v0, p0

    move-object v1, p1

    move v3, v8

    move-object v4, p4

    move v5, v7

    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result v0

    if-ne v8, v0, :cond_33

    return-void

    :cond_33
    sub-int/2addr v8, v0

    .line 95
    iget v1, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    const/4 v10, 0x0

    if-ge v8, v1, :cond_3b

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    add-int/2addr v7, v0

    .line 97
    iget v0, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    sub-int/2addr v0, v8

    iput v0, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    .line 98
    iget-object v1, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->zerosBlock:[B

    const/4 v2, 0x0

    iget v3, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    iget-object v4, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result v0

    .line 99
    iget v1, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    if-ne v0, v1, :cond_57

    goto :goto_58

    :cond_57
    const/4 v9, 0x0

    :goto_58
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :goto_5b
    if-ge v10, v8, :cond_69

    add-int/lit8 v0, v7, 0x1

    .line 103
    iget-object v1, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    aget-byte v1, v1, v10

    aput-byte v1, p4, v7

    add-int/lit8 v10, v10, 0x1

    move v7, v0

    goto :goto_5b

    :cond_69
    return-void
.end method

.method public updateInPlace([BII)V
    .registers 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->update([BII[BI)V

    return-void
.end method

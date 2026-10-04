###### Class com.amazonaws.services.s3.internal.crypto.ByteRangeCapturingInputStream (com.amazonaws.services.s3.internal.crypto.ByteRangeCapturingInputStream)
.class public Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "ByteRangeCapturingInputStream.java"


# instance fields
.field private final a:J

.field private final b:J

.field private c:J

.field private d:I

.field private final e:[B

.field private f:J

.field private g:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .registers 6

    .line 44
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->d:I

    cmp-long p1, p2, p4

    if-gez p1, :cond_15

    .line 51
    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->a:J

    .line 52
    iput-wide p4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->b:J

    sub-long/2addr p4, p2

    long-to-int p1, p4

    .line 54
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->e:[B

    return-void

    .line 47
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid byte range specified: the starting position must be less than the ending position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()[B
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->e:[B

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 77
    :try_start_1
    invoke-super {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;->mark(I)V

    .line 78
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 79
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->f:J

    .line 80
    iget p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->d:I

    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->g:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 82
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    .line 76
    monitor-exit p0

    throw p1
.end method

.method public read()I
    .registers 7

    .line 63
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return v1

    .line 67
    :cond_8
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->a:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_23

    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->b:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_23

    .line 68
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->e:[B

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->d:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 71
    :cond_23
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    return v0
.end method

.method public read([BII)I
    .registers 14

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_8

    return v0

    .line 99
    :cond_8
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->a:J

    cmp-long v6, v0, v4

    if-ltz v6, :cond_41

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->b:J

    cmp-long v6, v0, v4

    if-gtz v6, :cond_41

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p3, :cond_41

    .line 101
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iget-wide v8, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->a:J

    cmp-long v1, v4, v8

    if-ltz v1, :cond_3e

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->b:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_3e

    .line 102
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->e:[B

    iget v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->d:I

    add-int v5, p2, v0

    aget-byte v5, p1, v5

    aput-byte v5, v1, v4

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 107
    :cond_41
    iget-wide p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    return p3
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    .line 86
    :try_start_1
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 87
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 88
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->f:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->c:J

    .line 89
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->g:I

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->d:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 91
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    .line 85
    monitor-exit p0

    throw v0
.end method

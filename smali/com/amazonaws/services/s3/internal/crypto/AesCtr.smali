###### Class com.amazonaws.services.s3.internal.crypto.AesCtr (com.amazonaws.services.s3.internal.crypto.AesCtr)
.class Lcom/amazonaws/services/s3/internal/crypto/AesCtr;
.super Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.source "AesCtr.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final h:I = 0x10

.field private static final i:I = 0xc


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;-><init>()V

    return-void
.end method

.method private a([B)[B
    .registers 6

    .line 86
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->d()I

    move-result v0

    .line 87
    new-array v1, v0, [B

    .line 88
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    .line 89
    aput-byte p1, v1, v0

    const-wide/16 v2, 0x1

    .line 90
    invoke-static {v1, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->b([BJ)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .line 29
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a([BJ)[B
    .registers 10

    .line 61
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_42

    .line 63
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->d()I

    move-result v0

    int-to-long v1, v0

    .line 64
    div-long v3, p2, v1

    mul-long v1, v1, v3

    cmp-long v5, v1, p2

    if-nez v5, :cond_1b

    .line 71
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->a([B)[B

    move-result-object p1

    .line 72
    invoke-static {p1, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->b([BJ)[B

    move-result-object p1

    return-object p1

    .line 66
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting byteOffset to be multiple of 16, but got blockOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", blockSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", byteOffset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method b()Ljava/lang/String;
    .registers 2

    const-string v0, "AES/CTR/NoPadding"

    return-object v0
.end method

.method c()I
    .registers 2

    .line 39
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c()I

    move-result v0

    return v0
.end method

.method d()I
    .registers 2

    .line 44
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()I

    move-result v0

    return v0
.end method

.method e()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method f()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

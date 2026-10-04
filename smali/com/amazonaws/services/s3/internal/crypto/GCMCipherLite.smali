###### Class com.amazonaws.services.s3.internal.crypto.GCMCipherLite (com.amazonaws.services.s3.internal.crypto.GCMCipherLite)
.class final Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;
.super Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
.source "GCMCipherLite.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:I = 0x8

.field private static final c:I


# instance fields
.field private final d:I

.field private e:J

.field private f:Z

.field private g:J

.field private h:J

.field private i:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private j:[B

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 39
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->c:I

    return-void
.end method

.method constructor <init>(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)V
    .registers 5

    .line 87
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_b

    .line 88
    sget p2, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->c:I

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    iput p2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->d:I

    if-eq p3, p1, :cond_1a

    const/4 p1, 0x2

    if-ne p3, p1, :cond_14

    goto :goto_1a

    .line 91
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1a
    :goto_1a
    return-void
.end method

.method private b(I)I
    .registers 7

    .line 203
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide v2, 0xfffffffe0L

    cmp-long v4, v0, v2

    if-gtz v4, :cond_e

    return p1

    :cond_e
    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->l:Z

    .line 205
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of bytes processed has exceeded the maximum allowed by AES/GCM; [outputByteCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", delta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final c([BII)[B
    .registers 7

    .line 126
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    .line 127
    iget-boolean p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->l:Z

    if-nez p1, :cond_55

    const/4 p1, 0x2

    .line 129
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->k()I

    move-result p2

    if-ne p1, p2, :cond_1f

    .line 130
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    if-nez p1, :cond_15

    goto :goto_1e

    :cond_15
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    :goto_1e
    return-object v1

    .line 132
    :cond_1f
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    array-length p1, p1

    iget p2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->d:I

    sub-int/2addr p1, p2

    if-ne p3, p1, :cond_30

    .line 134
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_30
    if-ge p3, p1, :cond_4d

    int-to-long p1, p3

    .line 136
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_4d

    .line 137
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    array-length p1, p1

    iget p2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->d:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    .line 138
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    array-length p3, p3

    invoke-static {p2, p1, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 141
    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Inconsistent re-rencryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_55
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :cond_5b
    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->k:Z

    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    .line 146
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    if-nez p1, :cond_69

    return-object v1

    .line 148
    :cond_69
    iget-wide p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    array-length p3, p3

    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->d:I

    sub-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->b(I)I

    move-result p3

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    .line 149
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method


# virtual methods
.method final a([BII)[B
    .registers 4

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->c([BII)[B

    move-result-object p1

    return-object p1
.end method

.method final b([B)[B
    .registers 4

    .line 115
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->c([BII)[B

    move-result-object p1

    return-object p1
.end method

.method b([BII)[B
    .registers 14

    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->i:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_28

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b([BII)[B

    move-result-object p2

    if-nez p2, :cond_14

    .line 163
    array-length p1, p1

    if-lez p1, :cond_11

    const/4 v1, 0x1

    :cond_11
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->f:Z

    return-object v3

    .line 166
    :cond_14
    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    array-length p1, p2

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->b(I)I

    move-result p1

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    .line 170
    array-length p1, p2

    if-nez p1, :cond_25

    if-lez p3, :cond_25

    const/4 v1, 0x1

    :cond_25
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->f:Z

    goto :goto_93

    .line 172
    :cond_28
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->i:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b([BII)[B

    move-result-object p2

    if-nez p2, :cond_31

    return-object v3

    .line 175
    :cond_31
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J

    array-length p1, p2

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J

    .line 176
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J

    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_43

    .line 177
    iput-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->i:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    goto :goto_93

    .line 178
    :cond_43
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J

    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    cmp-long p1, v4, v6

    if-lez p1, :cond_93

    .line 179
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->k()I

    move-result p1

    if-eq v2, p1, :cond_70

    .line 185
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    if-nez p1, :cond_56

    goto :goto_59

    :cond_56
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    array-length v1, p1

    .line 186
    :goto_59
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J

    array-length p1, p2

    int-to-long v8, p1

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    int-to-long v0, v1

    sub-long/2addr v4, v0

    .line 187
    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    sub-long/2addr v6, v0

    iput-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J

    .line 188
    iput-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->i:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    long-to-int p1, v4

    .line 189
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 180
    :cond_70
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "currentCount="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " > outputByteCount="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_93
    :goto_93
    return-object p2
.end method

.method c()[B
    .registers 5

    .line 98
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 99
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->l:Z

    if-nez v0, :cond_18

    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    if-nez v0, :cond_e

    goto :goto_17

    :cond_e
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    :goto_17
    return-object v1

    .line 100
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_1e
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->k:Z

    .line 105
    invoke-super {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    if-nez v0, :cond_2c

    return-object v1

    .line 108
    :cond_2c
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    array-length v2, v2

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->d:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->b(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method l()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method m()J
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->i:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    if-nez v0, :cond_7

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    goto :goto_9

    :cond_7
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J

    :goto_9
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    .line 215
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    return-wide v0
.end method

.method n()V
    .registers 6

    .line 225
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_c

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->f:Z

    if-eqz v0, :cond_18

    .line 227
    :cond_c
    :try_start_c
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->a(J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->i:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 230
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_19

    :cond_18
    return-void

    :catch_19
    move-exception v0

    .line 232
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_21

    check-cast v0, Ljava/lang/RuntimeException;

    goto :goto_27

    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_27
    throw v0
.end method

.method o()[B
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_e
    return-object v0
.end method

.method p()[B
    .registers 4

    .line 251
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    if-nez v0, :cond_c

    goto :goto_1c

    :cond_c
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    array-length v1, v1

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->d:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:[B

    array-length v2, v2

    .line 253
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0
.end method

.method q()J
    .registers 3

    .line 261
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->e:J

    return-wide v0
.end method

.method r()J
    .registers 3

    .line 268
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:J

    return-wide v0
.end method

.method s()J
    .registers 3

    .line 275
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    return-wide v0
.end method

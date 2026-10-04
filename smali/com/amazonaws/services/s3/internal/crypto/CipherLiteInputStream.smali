###### Class com.amazonaws.services.s3.internal.crypto.CipherLiteInputStream (com.amazonaws.services.s3.internal.crypto.CipherLiteInputStream)
.class public Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "CipherLiteInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:I = 0x3e8

.field private static final b:I = 0x200

.field private static final c:I = 0xff


# instance fields
.field private d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private final e:Z

.field private final f:Z

.field private g:Z

.field private final h:[B

.field private i:[B

.field private j:I

.field private k:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 8

    .line 110
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    const/16 v3, 0x200

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V
    .registers 9

    const/16 v3, 0x200

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V
    .registers 6

    .line 89
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:Z

    .line 57
    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    .line 58
    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    if-eqz p5, :cond_17

    if-eqz p4, :cond_f

    goto :goto_17

    .line 91
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lastMultiPart can only be true if multipart is true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_17
    :goto_17
    iput-boolean p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->e:Z

    .line 95
    iput-boolean p5, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f:Z

    .line 96
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    if-lez p3, :cond_28

    .line 97
    rem-int/lit16 p1, p3, 0x200

    if-nez p1, :cond_28

    .line 102
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:[B

    return-void

    .line 98
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "buffsize ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") must be a positive multiple of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x200

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()I
    .registers 5

    .line 259
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f()V

    .line 260
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->i:[B

    .line 264
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4e

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:Z

    .line 268
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->e:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f:Z

    if-eqz v0, :cond_4d

    .line 270
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->i:[B

    .line 271
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->i:[B

    if-nez v0, :cond_2f

    return v1

    .line 276
    :cond_2f
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    .line 277
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->i:[B

    array-length v0, v0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    .line 278
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I
    :try_end_38
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_22 .. :try_end_38} :catch_4d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_22 .. :try_end_38} :catch_39

    return v0

    :catch_39
    move-exception v0

    .line 282
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_4d

    .line 283
    :cond_47
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4d
    :cond_4d
    :goto_4d
    return v1

    .line 289
    :cond_4e
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:[B

    invoke-virtual {v1, v3, v2, v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->i:[B

    .line 290
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    .line 291
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->i:[B

    if-nez v0, :cond_5f

    goto :goto_62

    :cond_5f
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->i:[B

    array-length v2, v0

    :goto_62
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    .line 292
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    return v0
.end method


# virtual methods
.method final a()V
    .registers 2

    .line 241
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    .line 243
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    .line 244
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:Z

    :cond_d
    return-void
.end method

.method public available()I
    .registers 3

    .line 193
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f()V

    .line 194
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    sub-int/2addr v0, v1

    return v0
.end method

.method b()V
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-void
.end method

.method public close()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 204
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->e:Z

    if-nez v0, :cond_1a

    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 208
    :try_start_15
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c()[B
    :try_end_1a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_15 .. :try_end_1a} :catch_1a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_15 .. :try_end_1a} :catch_1a

    :catch_1a
    :cond_1a
    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    .line 215
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    .line 216
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f()V

    return-void
.end method

.method public mark(I)V
    .registers 3

    .line 227
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f()V

    .line 228
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 229
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->m()J

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 221
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f()V

    .line 222
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->l()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public read()I
    .registers 4

    .line 115
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    if-lt v0, v1, :cond_24

    .line 116
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    :cond_d
    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_1c

    .line 126
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->c()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-eqz v2, :cond_d

    if-ne v2, v1, :cond_24

    return v1

    .line 123
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "exceeded maximum number of attempts to read next chunk of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_24
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->i:[B

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4

    .line 139
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 8

    .line 144
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_25

    .line 146
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_d

    return v1

    :cond_d
    const/4 v0, 0x0

    :cond_e
    const/16 v3, 0x3e8

    if-gt v0, v3, :cond_1d

    .line 156
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->c()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    if-eqz v3, :cond_e

    if-ne v3, v1, :cond_25

    return v1

    .line 153
    :cond_1d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exceeded maximum number of attempts to read next chunk of data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    if-gtz p3, :cond_28

    return v2

    .line 167
    :cond_28
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_30

    goto :goto_31

    :cond_30
    move p3, v0

    .line 172
    :goto_31
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->i:[B

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    return p3
.end method

.method public reset()V
    .registers 2

    .line 234
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f()V

    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 236
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->n()V

    .line 237
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a()V

    return-void
.end method

.method public skip(J)J
    .registers 6

    .line 179
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f()V

    .line 180
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->k:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    move-wide p1, v0

    :cond_e
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_15

    return-wide v0

    .line 187
    :cond_15
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->j:I

    return-wide p1
.end method

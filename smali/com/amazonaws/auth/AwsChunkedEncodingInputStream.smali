###### Class com.amazonaws.auth.AwsChunkedEncodingInputStream (com.amazonaws.auth.AwsChunkedEncodingInputStream)
.class public final Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "AwsChunkedEncodingInputStream.java"


# static fields
.field protected static final a:Ljava/lang/String; = "UTF-8"

.field private static final b:I = 0xff

.field private static final c:I = 0x20000

.field private static final d:I = 0x40000

.field private static final e:Ljava/lang/String; = "\r\n"

.field private static final f:Ljava/lang/String; = "AWS4-HMAC-SHA256-PAYLOAD"

.field private static final g:Ljava/lang/String; = ";chunk-signature="

.field private static final h:I = 0x40

.field private static final i:[B

.field private static final v:Lcom/amazonaws/logging/Log;


# instance fields
.field private j:Ljava/io/InputStream;

.field private final k:I

.field private final l:[B

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private final q:Lcom/amazonaws/auth/AWS4Signer;

.field private r:Lcom/amazonaws/auth/ChunkContentIterator;

.field private s:Lcom/amazonaws/auth/DecodedStreamBuffer;

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 45
    new-array v0, v0, [B

    sput-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->i:[B

    .line 69
    const-class v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V
    .registers 10

    .line 116
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Ljava/io/InputStream;

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->t:Z

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->u:Z

    .line 117
    instance-of v1, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    if-eqz v1, :cond_21

    .line 120
    check-cast p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    .line 121
    iget v0, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 122
    iget-object v0, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Ljava/io/InputStream;

    .line 123
    iget-object p1, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;

    iput-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;

    goto :goto_25

    .line 125
    :cond_21
    iput-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Ljava/io/InputStream;

    .line 126
    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;

    :goto_25
    const/high16 p1, 0x20000

    if-lt p2, p1, :cond_38

    .line 133
    iput p2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:I

    .line 134
    iput-object p3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->l:[B

    .line 135
    iput-object p4, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->m:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->n:Ljava/lang/String;

    .line 137
    iput-object p6, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->o:Ljava/lang/String;

    .line 138
    iput-object p6, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->p:Ljava/lang/String;

    .line 139
    iput-object p7, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->q:Lcom/amazonaws/auth/AWS4Signer;

    return-void

    .line 130
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max buffer size should not be less than chunk size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V
    .registers 15

    const/high16 v2, 0x40000

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 92
    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;-><init>(Ljava/io/InputStream;I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V

    return-void
.end method

.method public static a(J)J
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_24

    const-wide/32 v2, 0x20000

    .line 285
    div-long v4, p0, v2

    .line 286
    rem-long/2addr p0, v2

    .line 287
    invoke-static {v2, v3}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b(J)J

    move-result-wide v2

    mul-long v4, v4, v2

    cmp-long v2, p0, v0

    if-lez v2, :cond_1b

    .line 288
    invoke-static {p0, p1}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b(J)J

    move-result-wide p0

    goto :goto_1c

    :cond_1b
    move-wide p0, v0

    :goto_1c
    const/4 v2, 0x0

    add-long/2addr v4, p0

    .line 289
    invoke-static {v0, v1}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b(J)J

    move-result-wide p0

    add-long/2addr v4, p0

    return-wide v4

    .line 282
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Nonnegative content length expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a([B)[B
    .registers 8

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AWS4-HMAC-SHA256-PAYLOAD\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->q:Lcom/amazonaws/auth/AWS4Signer;

    const-string v3, ""

    .line 357
    invoke-virtual {v2, v3}, Lcom/amazonaws/auth/AWS4Signer;->d(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->q:Lcom/amazonaws/auth/AWS4Signer;

    .line 358
    invoke-virtual {v2, p1}, Lcom/amazonaws/auth/AWS4Signer;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->q:Lcom/amazonaws/auth/AWS4Signer;

    iget-object v3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->l:[B

    sget-object v4, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazonaws/auth/SigningAlgorithm;

    invoke-virtual {v2, v1, v3, v4}, Lcom/amazonaws/auth/AWS4Signer;->a(Ljava/lang/String;[BLcom/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 361
    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->p:Ljava/lang/String;

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";chunk-signature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :try_start_83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "\r\n"

    .line 367
    sget-object v2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 368
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 369
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    array-length v3, v0

    array-length v5, p1

    invoke-static {p1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    array-length v0, v0

    array-length p1, p1

    add-int/2addr v0, p1

    array-length p1, v1

    invoke-static {v1, v4, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_ad} :catch_ae

    return-object v2

    :catch_ae
    move-exception p1

    .line 376
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to sign the chunked data. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(J)J
    .registers 4

    .line 293
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ";chunk-signature="

    .line 294
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    const-string v1, "\r\n"

    .line 296
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, p0

    const-string p0, "\r\n"

    .line 298
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private b()Z
    .registers 7

    const/high16 v0, 0x20000

    .line 308
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_36

    .line 312
    iget-object v4, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;

    .line 313
    invoke-virtual {v4}, Lcom/amazonaws/auth/DecodedStreamBuffer;->a()Z

    move-result v4

    if-eqz v4, :cond_20

    add-int/lit8 v4, v3, 0x1

    .line 314
    iget-object v5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-virtual {v5}, Lcom/amazonaws/auth/DecodedStreamBuffer;->b()B

    move-result v5

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_6

    :cond_20
    sub-int v4, v0, v3

    .line 319
    iget-object v5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Ljava/io/InputStream;

    invoke-virtual {v5, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_36

    .line 321
    iget-object v5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-eqz v5, :cond_34

    .line 322
    iget-object v5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-virtual {v5, v1, v3, v4}, Lcom/amazonaws/auth/DecodedStreamBuffer;->a([BII)V

    :cond_34
    add-int/2addr v3, v4

    goto :goto_6

    :cond_36
    if-nez v3, :cond_47

    .line 331
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->i:[B

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->a([B)[B

    move-result-object v0

    .line 332
    new-instance v1, Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-direct {v1, v0}, Lcom/amazonaws/auth/ChunkContentIterator;-><init>([B)V

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->r:Lcom/amazonaws/auth/ChunkContentIterator;

    const/4 v0, 0x1

    return v0

    .line 335
    :cond_47
    array-length v0, v1

    if-ge v3, v0, :cond_50

    .line 336
    new-array v0, v3, [B

    .line 337
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_51

    :cond_50
    move-object v0, v1

    .line 340
    :goto_51
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->a([B)[B

    move-result-object v0

    .line 341
    new-instance v1, Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-direct {v1, v0}, Lcom/amazonaws/auth/ChunkContentIterator;-><init>([B)V

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->r:Lcom/amazonaws/auth/ChunkContentIterator;

    return v2
.end method


# virtual methods
.method protected a()Ljava/io/InputStream;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Ljava/io/InputStream;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    .line 220
    :try_start_1
    invoke-virtual {p0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->e()V

    .line 221
    iget-boolean p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->t:Z

    if-eqz p1, :cond_42

    .line 225
    iget-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 226
    sget-object p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 227
    sget-object p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    const-string v0, "AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it\'s mark-supported)."

    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 230
    :cond_1f
    iget-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Ljava/io/InputStream;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    goto :goto_40

    .line 232
    :cond_28
    sget-object p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 233
    sget-object p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    const-string v0, "AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported)."

    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 236
    :cond_37
    new-instance p1, Lcom/amazonaws/auth/DecodedStreamBuffer;

    iget v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:I

    invoke-direct {p1, v0}, Lcom/amazonaws/auth/DecodedStreamBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_4a

    .line 238
    :goto_40
    monitor-exit p0

    return-void

    .line 222
    :cond_42
    :try_start_42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chunk-encoded stream only supports mark() at the start of the stream."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p1

    .line 219
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 5

    const/4 v0, 0x1

    .line 144
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0, v1, v2, v0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1f

    .line 147
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 148
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    const-string v3, "One byte read from the stream."

    invoke-interface {v0, v3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 150
    :cond_1a
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1f
    return v0
.end method

.method public read([BII)I
    .registers 6

    .line 159
    invoke-virtual {p0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->e()V

    if-eqz p1, :cond_58

    if-ltz p2, :cond_52

    if-ltz p3, :cond_52

    .line 162
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_52

    const/4 v0, 0x0

    if-nez p3, :cond_11

    return v0

    .line 168
    :cond_11
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->r:Lcom/amazonaws/auth/ChunkContentIterator;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->r:Lcom/amazonaws/auth/ChunkContentIterator;

    .line 169
    invoke-virtual {v1}, Lcom/amazonaws/auth/ChunkContentIterator;->a()Z

    move-result v1

    if-nez v1, :cond_29

    .line 170
    :cond_1d
    iget-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->u:Z

    if-eqz v1, :cond_23

    const/4 p1, -0x1

    return p1

    .line 173
    :cond_23
    invoke-direct {p0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->u:Z

    .line 177
    :cond_29
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->r:Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-virtual {v1, p1, p2, p3}, Lcom/amazonaws/auth/ChunkContentIterator;->a([BII)I

    move-result p1

    if-lez p1, :cond_51

    .line 179
    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->t:Z

    .line 180
    sget-object p2, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    invoke-interface {p2}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p2

    if-eqz p2, :cond_51

    .line 181
    sget-object p2, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " byte read from the stream."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_51
    return p1

    .line 163
    :cond_52
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 161
    :cond_58
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    .line 246
    :try_start_1
    invoke-virtual {p0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->e()V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->r:Lcom/amazonaws/auth/ChunkContentIterator;

    .line 249
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->p:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 253
    sget-object v1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 254
    sget-object v1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    const-string v2, "AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported)."

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 257
    :cond_22
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_40

    .line 259
    :cond_28
    sget-object v1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 260
    sget-object v1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->v:Lcom/amazonaws/logging/Log;

    const-string v2, "AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream)."

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 263
    :cond_37
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-eqz v1, :cond_4a

    .line 266
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->s:Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-virtual {v1}, Lcom/amazonaws/auth/DecodedStreamBuffer;->c()V

    .line 269
    :goto_40
    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->r:Lcom/amazonaws/auth/ChunkContentIterator;

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->t:Z

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->u:Z
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_52

    .line 272
    monitor-exit p0

    return-void

    .line 264
    :cond_4a
    :try_start_4a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset the stream because the mark is not set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    .line 245
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    :cond_7
    const-wide/32 v2, 0x40000

    .line 193
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 194
    new-array v3, v2, [B

    move-wide v4, p1

    :goto_12
    cmp-long v6, v4, v0

    if-lez v6, :cond_21

    const/4 v6, 0x0

    .line 196
    invoke-virtual {p0, v3, v6, v2}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->read([BII)I

    move-result v6

    if-gez v6, :cond_1e

    goto :goto_21

    :cond_1e
    int-to-long v6, v6

    sub-long/2addr v4, v6

    goto :goto_12

    :cond_21
    :goto_21
    const/4 v0, 0x0

    sub-long/2addr p1, v4

    return-wide p1
.end method

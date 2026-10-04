###### Class com.amazonaws.services.s3.internal.crypto.MultipartUploadCryptoContext (com.amazonaws.services.s3.internal.crypto.MultipartUploadCryptoContext)
.class Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
.super Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;
.source "MultipartUploadCryptoContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

.field private b:I

.field private volatile c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    return-void
.end method


# virtual methods
.method a(I)V
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_45

    .line 74
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->c:Z

    if-nez v1, :cond_3d

    .line 78
    monitor-enter p0

    .line 79
    :try_start_8
    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->b:I

    sub-int v1, p1, v1

    if-gt v1, v0, :cond_14

    .line 80
    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->b:I

    .line 81
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->c:Z

    .line 88
    monitor-exit p0

    return-void

    .line 83
    :cond_14
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parts are required to be uploaded in series (partNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nextPartNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3a
    move-exception p1

    .line 88
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw p1

    .line 75
    :cond_3d
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Parts are required to be uploaded in series"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "part number must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    return-object v0
.end method

.method h()V
    .registers 2

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->c:Z

    return-void
.end method

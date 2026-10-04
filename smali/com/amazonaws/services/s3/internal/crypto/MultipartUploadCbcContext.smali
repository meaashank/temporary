###### Class com.amazonaws.services.s3.internal.crypto.MultipartUploadCbcContext (com.amazonaws.services.s3.internal.crypto.MultipartUploadCbcContext)
.class final Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;
.super Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
.source "MultipartUploadCbcContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->a:[B

    return-void
.end method

.method public a()[B
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->a:[B

    return-object v0
.end method

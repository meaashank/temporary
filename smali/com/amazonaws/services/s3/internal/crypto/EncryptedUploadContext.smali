###### Class com.amazonaws.services.s3.internal.crypto.EncryptedUploadContext (com.amazonaws.services.s3.internal.crypto.EncryptedUploadContext)
.class public Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
.super Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;
.source "EncryptedUploadContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljavax/crypto/SecretKey;

.field private b:[B

.field private c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->a:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public a()Ljavax/crypto/SecretKey;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->a:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public a([B)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->c:[B

    return-void
.end method

.method public b([B)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->b:[B

    return-void
.end method

.method public b()[B
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->c:[B

    return-object v0
.end method

.method public c()[B
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->b:[B

    return-object v0
.end method

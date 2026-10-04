###### Class com.amazonaws.services.s3.internal.crypto.CipherFactory (com.amazonaws.services.s3.internal.crypto.CipherFactory)
.class public Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
.super Ljava/lang/Object;
.source "CipherFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljavax/crypto/SecretKey;

.field private final b:I

.field private c:[B

.field private final d:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->a:Ljavax/crypto/SecretKey;

    .line 56
    iput p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->b:I

    .line 57
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->c:[B

    .line 58
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->d:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public a()Ljavax/crypto/Cipher;
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->a:Ljavax/crypto/SecretKey;

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->b:I

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->d:Ljava/security/Provider;

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->c:[B

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->c:[B

    if-nez v1, :cond_16

    .line 78
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->c:[B

    :cond_16
    return-object v0
.end method

.method public b()Ljava/security/Provider;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->d:Ljava/security/Provider;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->b:I

    return v0
.end method

.method public d()[B
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->c:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_e
    return-object v0
.end method

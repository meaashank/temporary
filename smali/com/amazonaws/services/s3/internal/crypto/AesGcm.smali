###### Class com.amazonaws.services.s3.internal.crypto.AesGcm (com.amazonaws.services.s3.internal.crypto.AesGcm)
.class Lcom/amazonaws/services/s3/internal/crypto/AesGcm;
.super Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.source "AesGcm.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final h:I = 0x100

.field private static final i:I = 0x10

.field private static final j:I = 0xc

.field private static final k:I = 0x80


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 5

    .line 99
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;-><init>(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)V

    return-object v0
.end method

.method a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 8

    .line 93
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;->g:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0, p2, p5, p6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a([BJ)[B

    move-result-object p2

    .line 94
    sget-object p5, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;->g:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method a()Ljava/lang/String;
    .registers 2

    const-string v0, "AES"

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    const-string v0, "AES/GCM/NoPadding"

    return-object v0
.end method

.method c()I
    .registers 2

    const/16 v0, 0x100

    return v0
.end method

.method d()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method e()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method f()J
    .registers 3

    const-wide v0, 0xfffffffe0L

    return-wide v0
.end method

.method g()I
    .registers 2

    const/16 v0, 0x80

    return v0
.end method

.method h()Ljava/lang/String;
    .registers 2

    const-string v0, "BC"

    return-object v0
.end method

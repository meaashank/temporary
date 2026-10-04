###### Class com.amazonaws.services.s3.internal.crypto.CipherLite (com.amazonaws.services.s3.internal.crypto.CipherLite)
.class Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
.super Ljava/lang/Object;
.source "CipherLite.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;


# instance fields
.field private final b:Ljavax/crypto/Cipher;

.field private final c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field private final d:Ljavax/crypto/SecretKey;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 76
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>()V

    return-void
.end method

.method constructor <init>(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V
    .registers 5

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    .line 83
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 84
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    .line 85
    iput p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    return-void
.end method


# virtual methods
.method a(I)I
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p1

    return p1
.end method

.method a()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    .line 93
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v4

    .line 92
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    return-object v0
.end method

.method a(J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 10

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    .line 117
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v4

    move-wide v5, p1

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method a([B)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 6

    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    .line 102
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v3

    .line 101
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method a([BII)[B
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1
.end method

.method b()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 6

    .line 127
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    goto :goto_c

    .line 129
    :cond_7
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    if-ne v0, v1, :cond_21

    const/4 v1, 0x2

    .line 133
    :goto_c
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    .line 134
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v4

    .line 133
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    return-object v0

    .line 132
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method b([B)[B
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method b([BII)[B
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p1

    return-object p1
.end method

.method c()[B
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/security/Provider;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()Ljavax/crypto/Cipher;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method final h()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-object v0
.end method

.method final i()[B
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    return-object v0
.end method

.method final j()I
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method final k()I
    .registers 2

    .line 339
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    return v0
.end method

.method l()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method m()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method n()V
    .registers 3

    .line 391
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.amazonaws.services.s3.internal.crypto.CipherLite.AnonymousClass1 (com.amazonaws.services.s3.internal.crypto.CipherLite$1)
.class final Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;
.super Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
.source "CipherLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>(Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;)V

    return-void
.end method


# virtual methods
.method a(J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 3

    return-object p0
.end method

.method b()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 1

    return-object p0
.end method

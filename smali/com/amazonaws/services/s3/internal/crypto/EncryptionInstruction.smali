###### Class com.amazonaws.services.s3.internal.crypto.EncryptionInstruction (com.amazonaws.services.s3.internal.crypto.EncryptionInstruction)
.class public Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
.super Ljava/lang/Object;
.source "EncryptionInstruction.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[B

.field private final c:Ljavax/crypto/Cipher;

.field private final d:Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;


# direct methods
.method public constructor <init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljavax/crypto/SecretKey;",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->a:Ljava/util/Map;

    .line 72
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->b:[B

    .line 73
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    .line 74
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->a()Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->c:Ljavax/crypto/Cipher;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Ljavax/crypto/Cipher;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljavax/crypto/SecretKey;",
            "Ljavax/crypto/Cipher;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->a:Ljava/util/Map;

    .line 52
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->b:[B

    .line 53
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->c:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->d:Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->a:Ljava/util/Map;

    return-object v0
.end method

.method public c()[B
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->b:[B

    return-object v0
.end method

.method public d()Ljavax/crypto/Cipher;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->c:Ljavax/crypto/Cipher;

    return-object v0
.end method

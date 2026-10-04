###### Class com.amazonaws.services.s3.internal.crypto.S3CryptoScheme (com.amazonaws.services.s3.internal.crypto.S3CryptoScheme)
.class final Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
.super Ljava/lang/Object;
.source "S3CryptoScheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "AES"

.field static final b:Ljava/lang/String; = "RSA"

.field private static final c:Ljava/security/SecureRandom;


# instance fields
.field private final d:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

.field private final e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->c:Ljava/security/SecureRandom;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 42
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->d:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 48
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->d:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-void
.end method

.method static a(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
    .registers 3

    .line 71
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->a:[I

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_28

    .line 80
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 77
    :pswitch_11
    new-instance p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;-><init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V

    return-object p0

    .line 73
    :pswitch_1e
    new-instance p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    sget-object v1, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;-><init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V

    return-object p0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    .line 67
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method a()Ljava/security/SecureRandom;
    .registers 2

    .line 52
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->c:Ljava/security/SecureRandom;

    return-object v0
.end method

.method b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-object v0
.end method

.method c()Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->d:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.internal.crypto.S3CryptoScheme.AnonymousClass1 (com.amazonaws.services.s3.internal.crypto.S3CryptoScheme$1)
.class synthetic Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;
.super Ljava/lang/Object;
.source "S3CryptoScheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 71
    invoke-static {}, Lcom/amazonaws/services/s3/model/CryptoMode;->values()[Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->a:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->a:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->a:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->StrictAuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method

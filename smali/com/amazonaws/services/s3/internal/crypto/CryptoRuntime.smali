###### Class com.amazonaws.services.s3.internal.crypto.CryptoRuntime (com.amazonaws.services.s3.internal.crypto.CryptoRuntime)
.class public Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;
.super Ljava/lang/Object;
.source "CryptoRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;,
        Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "BC"

.field private static final b:Ljava/lang/String; = "org.bouncycastle.jce.provider.BouncyCastleProvider"

.field private static final c:Lcom/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->c:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Z
    .registers 2

    const-class v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;

    monitor-enter v0

    :try_start_3
    const-string v1, "BC"

    .line 46
    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/security/Provider;)Z
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_9

    :cond_3
    const-string p0, "BC"

    .line 73
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p0

    :goto_9
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->a(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized b()V
    .registers 4

    const-class v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;

    monitor-enter v0

    .line 53
    :try_start_3
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->a()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_25

    if-eqz v1, :cond_b

    .line 54
    monitor-exit v0

    return-void

    :cond_b
    :try_start_b
    const-string v1, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    .line 58
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 60
    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1b
    .catchall {:try_start_b .. :try_end_1a} :catchall_25

    goto :goto_23

    :catch_1b
    move-exception v1

    .line 62
    :try_start_1c
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->c:Lcom/amazonaws/logging/Log;

    const-string v3, "Bouncy Castle not available"

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_25

    .line 64
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    .line 52
    monitor-exit v0

    throw v1
.end method

.method static b(Ljava/security/Provider;)Z
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_9

    :cond_3
    const-string p0, "BC"

    .line 77
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p0

    :goto_9
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->a(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

###### Class com.amazonaws.services.s3.internal.crypto.CryptoRuntime.AesGcm (com.amazonaws.services.s3.internal.crypto.CryptoRuntime$AesGcm)
.class final Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;
.super Ljava/lang/Object;
.source "CryptoRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AesGcm"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/security/Provider;)Z
    .registers 1

    .line 80
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->b(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/security/Provider;)Z
    .registers 2

    .line 83
    :try_start_0
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 84
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    const/4 p0, 0x1

    return p0

    :catch_b
    const/4 p0, 0x0

    return p0
.end method

###### Class com.amazonaws.services.s3.internal.crypto.CryptoRuntime.RsaEcbOaepWithSHA256AndMGF1Padding (com.amazonaws.services.s3.internal.crypto.CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding)
.class final Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;
.super Ljava/lang/Object;
.source "CryptoRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RsaEcbOaepWithSHA256AndMGF1Padding"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/security/Provider;)Z
    .registers 1

    .line 93
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->b(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/security/Provider;)Z
    .registers 2

    :try_start_0
    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 96
    invoke-static {v0, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

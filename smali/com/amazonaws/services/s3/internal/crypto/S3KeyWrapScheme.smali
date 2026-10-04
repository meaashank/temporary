###### Class com.amazonaws.services.s3.internal.crypto.S3KeyWrapScheme (com.amazonaws.services.s3.internal.crypto.S3KeyWrapScheme)
.class Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
.super Ljava/lang/Object;
.source "S3KeyWrapScheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

.field public static final b:Ljava/lang/String; = "AESWrap"

.field public static final c:Ljava/lang/String; = "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme$1;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme$1;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/security/Key;Ljava/security/Provider;)Ljava/lang/String;
    .registers 4

    .line 51
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AES"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "AESWrap"

    return-object p1

    :cond_f
    const-string v0, "RSA"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 56
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->b(Ljava/security/Provider;)Z

    move-result p1

    if-eqz p1, :cond_20

    const-string p1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    return-object p1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "S3KeyWrapScheme"

    return-object v0
.end method

###### Class com.amazonaws.services.s3.internal.crypto.S3KeyWrapScheme.AnonymousClass1 (com.amazonaws.services.s3.internal.crypto.S3KeyWrapScheme$1)
.class final Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme$1;
.super Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
.source "S3KeyWrapScheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/security/Key;Ljava/security/Provider;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "NONE"

    return-object v0
.end method

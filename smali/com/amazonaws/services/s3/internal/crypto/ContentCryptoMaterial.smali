###### Class com.amazonaws.services.s3.internal.crypto.ContentCryptoMaterial (com.amazonaws.services.s3.internal.crypto.ContentCryptoMaterial)
.class final Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
.super Ljava/lang/Object;
.source "ContentCryptoMaterial.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[B


# direct methods
.method constructor <init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherLite;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 83
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Ljava/lang/String;

    .line 84
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d:[B

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c:Ljava/util/Map;

    return-void
.end method

.method static a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 12

    .line 339
    sget-object v4, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 7

    .line 358
    invoke-static/range {p0 .. p6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Ljava/security/Provider;",
            "Z",
            "Lcom/amazonaws/services/kms/AWSKMSClient;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .line 457
    sget-object v4, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Ljava/security/Provider;",
            "[J",
            "Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;",
            "Z",
            "Lcom/amazonaws/services/kms/AWSKMSClient;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .line 476
    invoke-static/range {p0 .. p6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 9

    .line 841
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .line 842
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->c()Ljava/util/Map;

    move-result-object v1

    .line 843
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->a()[B

    move-result-object v2

    .line 844
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->b()Ljava/lang/String;

    move-result-object p4

    const/4 v3, 0x1

    .line 845
    invoke-virtual {p2, p0, p1, v3, p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p0

    invoke-direct {v0, v1, v2, p4, p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-object v0
.end method

.method static a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 8

    .line 758
    invoke-static/range {p0 .. p7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 15

    .line 784
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;Ljava/security/SecureRandom;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;
    .registers 8

    .line 869
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->e()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 870
    invoke-static {p1, p6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/AmazonWebServiceRequest;)Ljava/util/Map;

    move-result-object p2

    .line 871
    new-instance p3, Lcom/amazonaws/services/kms/model/EncryptRequest;

    invoke-direct {p3}, Lcom/amazonaws/services/kms/model/EncryptRequest;-><init>()V

    .line 872
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/kms/model/EncryptRequest;->b(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/EncryptRequest;

    move-result-object p3

    .line 873
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazonaws/services/kms/model/EncryptRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/EncryptRequest;

    move-result-object p1

    .line 874
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazonaws/services/kms/model/EncryptRequest;->b(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/EncryptRequest;

    move-result-object p0

    .line 876
    invoke-virtual {p6}, Lcom/amazonaws/AmazonWebServiceRequest;->d()Lcom/amazonaws/event/ProgressListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/EncryptRequest;->b(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    .line 877
    invoke-virtual {p6}, Lcom/amazonaws/AmazonWebServiceRequest;->c()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amazonaws/AmazonWebServiceRequest;->b(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 878
    invoke-virtual {p5, p0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/EncryptRequest;)Lcom/amazonaws/services/kms/model/EncryptResult;

    move-result-object p0

    .line 879
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/EncryptResult;->a()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/BinaryUtils;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 880
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;

    invoke-direct {p1, p0, p2}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;-><init>([BLjava/util/Map;)V

    return-object p1

    .line 882
    :cond_48
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c()Ljava/util/Map;

    move-result-object p5

    .line 885
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a()Ljava/security/KeyPair;

    move-result-object p6

    if-eqz p6, :cond_5b

    .line 887
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a()Ljava/security/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_5f

    .line 890
    :cond_5b
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->b()Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 892
    :goto_5f
    invoke-virtual {p2, p1, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->a(Ljava/security/Key;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7e

    if-nez p4, :cond_6c

    .line 896
    :try_start_67
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    goto :goto_70

    :cond_6c
    invoke-static {p2, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p4

    :goto_70
    const/4 p6, 0x3

    .line 898
    invoke-virtual {p4, p6, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 899
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;

    invoke-virtual {p4, p0}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p0

    invoke-direct {p1, p0, p2, p5}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;-><init>([BLjava/lang/String;Ljava/util/Map;)V

    return-object p1

    .line 903
    :cond_7e
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 904
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_8d

    .line 906
    invoke-static {p2, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_91

    .line 908
    :cond_8d
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    :goto_91
    const/4 p3, 0x1

    .line 910
    invoke-virtual {p2, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 911
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;

    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p5}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;-><init>([BLjava/lang/String;Ljava/util/Map;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_9f} :catch_a0

    return-object p1

    :catch_a0
    move-exception p0

    .line 913
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Unable to encrypt symmetric key"

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 5

    .line 131
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->f()[B

    move-result-object v0

    const-string v1, "x-amz-key-v2"

    .line 133
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->i()[B

    move-result-object v0

    const-string v1, "x-amz-iv"

    .line 136
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-matdesc"

    .line 139
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->i()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {p1, v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v0

    const-string v1, "x-amz-cek-alg"

    .line 145
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p1, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()I

    move-result v0

    if-lez v0, :cond_41

    const-string v1, "x-amz-tag-len"

    .line 149
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_41
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    const-string v1, "x-amz-wrap-alg"

    .line 153
    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    return-object p1
.end method

.method static a(Lcom/amazonaws/services/s3/model/S3Object;)Ljava/lang/String;
    .registers 3

    .line 569
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 571
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Error parsing JSON instruction file"

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 583
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 589
    :goto_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_28

    goto :goto_16

    .line 593
    :cond_20
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_28
    move-exception v0

    .line 593
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 594
    throw v0
.end method

.method static a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/AmazonWebServiceRequest;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterials;",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 920
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c()Ljava/util/Map;

    move-result-object p0

    .line 921
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v0, :cond_19

    .line 922
    check-cast p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 923
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->j_()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 925
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 926
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object p0, v0

    :cond_19
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    .line 244
    :cond_8
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method private static a([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;
    .registers 5

    .line 322
    new-instance p1, Lcom/amazonaws/services/kms/model/DecryptRequest;

    invoke-direct {p1}, Lcom/amazonaws/services/kms/model/DecryptRequest;-><init>()V

    .line 323
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/kms/model/DecryptRequest;->b(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/DecryptRequest;

    move-result-object p1

    .line 324
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazonaws/services/kms/model/DecryptRequest;->b(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/DecryptRequest;

    move-result-object p0

    .line 325
    invoke-virtual {p4, p0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/DecryptRequest;)Lcom/amazonaws/services/kms/model/DecryptResult;

    move-result-object p0

    .line 326
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DecryptResult;->b()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/BinaryUtils;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 327
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private static a([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;
    .registers 7

    .line 268
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 269
    invoke-static {p0, p1, p2, p4, p5}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    .line 272
    :cond_b
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a()Ljava/security/KeyPair;

    move-result-object p4

    if-eqz p4, :cond_24

    .line 274
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a()Ljava/security/KeyPair;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    if-eqz p2, :cond_1c

    goto :goto_2a

    .line 276
    :cond_1c
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Key encrypting key not available"

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_24
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->b()Ljavax/crypto/SecretKey;

    move-result-object p2

    if-eqz p2, :cond_70

    :goto_2a
    if-eqz p1, :cond_45

    if-nez p3, :cond_35

    .line 290
    :try_start_2e
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    goto :goto_39

    :catch_33
    move-exception p0

    goto :goto_68

    :cond_35
    invoke-static {p1, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p3

    :goto_39
    const/4 p4, 0x4

    .line 292
    invoke-virtual {p3, p4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 p2, 0x3

    .line 293
    invoke-virtual {p3, p0, p1, p2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0

    :cond_45
    if-eqz p3, :cond_50

    .line 299
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    goto :goto_58

    .line 302
    :cond_50
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    :goto_58
    const/4 p3, 0x2

    .line 304
    invoke-virtual {p1, p3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 305
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 306
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_67} :catch_33

    return-object p1

    .line 309
    :goto_68
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Unable to decrypt symmetric key from object metadata"

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 282
    :cond_70
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Key encrypting key not available"

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 15

    .line 374
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object p0

    const-string v0, "x-amz-key-v2"

    .line 375
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_21

    const-string v0, "x-amz-key"

    .line 377
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_19

    goto :goto_21

    .line 379
    :cond_19
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Content encrypting key not found."

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 383
    :cond_21
    :goto_21
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "x-amz-iv"

    .line 384
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v0, :cond_ee

    if-eqz v1, :cond_ee

    const-string v2, "x-amz-matdesc"

    .line 390
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "x-amz-wrap-alg"

    .line 391
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 392
    invoke-static {v7}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->a(Ljava/lang/String;)Z

    move-result v3

    .line 393
    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v3, :cond_58

    if-nez p4, :cond_53

    goto :goto_58

    .line 395
    :cond_53
    invoke-virtual {p4, v2}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    goto :goto_59

    :cond_58
    :goto_58
    move-object p4, v2

    :goto_59
    if-eqz v3, :cond_6d

    .line 398
    new-instance p1, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    const-string v3, "kms_cmk_id"

    .line 399
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p1, v3}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    :goto_6b
    move-object v3, p1

    goto :goto_78

    :cond_6d
    if-nez p1, :cond_71

    const/4 p1, 0x0

    goto :goto_75

    .line 404
    :cond_71
    invoke-interface {p1, p4}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    :goto_75
    if-eqz p1, :cond_e6

    goto :goto_6b

    :goto_78
    const-string p1, "x-amz-cek-alg"

    .line 411
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p3, :cond_85

    const/4 v4, 0x1

    goto :goto_86

    :cond_85
    const/4 v4, 0x0

    .line 416
    :goto_86
    invoke-static {p1, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p1

    if-eqz v4, :cond_94

    .line 419
    aget-wide v4, p3, v2

    invoke-virtual {p1, v1, v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a([BJ)[B

    move-result-object v1

    :cond_92
    :goto_92
    move-object p0, v1

    goto :goto_c8

    .line 422
    :cond_94
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()I

    move-result p3

    if-lez p3, :cond_92

    const-string v2, "x-amz-tag-len"

    .line 424
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 425
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p3, p0, :cond_a9

    goto :goto_92

    .line 427
    :cond_a9
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported tag length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expected: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_c8
    if-eqz p5, :cond_d2

    if-eqz v7, :cond_cd

    goto :goto_d2

    .line 434
    :cond_cd
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->j()Lcom/amazonaws/services/s3/KeyWrapException;

    move-result-object p0

    throw p0

    :cond_d2
    :goto_d2
    move-object v1, v0

    move-object v2, v7

    move-object v4, p2

    move-object v5, p1

    move-object v6, p6

    .line 436
    invoke-static/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 438
    new-instance p5, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    const/4 p6, 0x2

    .line 439
    invoke-virtual {p1, p3, p0, p6, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p0

    invoke-direct {p5, p4, v0, v7, p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-object p5

    .line 406
    :cond_e6
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Unable to retrieve the client encryption materials"

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 386
    :cond_ee
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Content encrypting key or IV not found."

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Ljava/security/Provider;",
            "[J",
            "Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;",
            "Z",
            "Lcom/amazonaws/services/kms/AWSKMSClient;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    const-string v0, "x-amz-key-v2"

    .line 492
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1d

    const-string v0, "x-amz-key"

    .line 494
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 496
    :cond_15
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Content encrypting key not found."

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 500
    :cond_1d
    :goto_1d
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "x-amz-iv"

    .line 501
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v0, :cond_f9

    if-eqz v1, :cond_f9

    const-string v2, "x-amz-wrap-alg"

    .line 507
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 508
    invoke-static {v7}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "x-amz-matdesc"

    .line 510
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 511
    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz p4, :cond_54

    if-eqz v2, :cond_4f

    goto :goto_54

    .line 513
    :cond_4f
    invoke-virtual {p4, v3}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    goto :goto_55

    :cond_54
    :goto_54
    move-object p4, v3

    :goto_55
    if-eqz v2, :cond_69

    .line 516
    new-instance p1, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    const-string v2, "kms_cmk_id"

    .line 517
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1, v3}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    :goto_67
    move-object v3, p1

    goto :goto_74

    :cond_69
    if-nez p1, :cond_6d

    const/4 p1, 0x0

    goto :goto_71

    .line 522
    :cond_6d
    invoke-interface {p1, p4}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    :goto_71
    if-eqz p1, :cond_e2

    goto :goto_67

    :goto_74
    const-string p1, "x-amz-cek-alg"

    .line 531
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p3, :cond_81

    const/4 v4, 0x1

    goto :goto_82

    :cond_81
    const/4 v4, 0x0

    .line 536
    :goto_82
    invoke-static {p1, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p1

    if-eqz v4, :cond_90

    .line 539
    aget-wide v4, p3, v2

    invoke-virtual {p1, v1, v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a([BJ)[B

    move-result-object v1

    :cond_8e
    :goto_8e
    move-object p0, v1

    goto :goto_c4

    .line 542
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()I

    move-result p3

    if-lez p3, :cond_8e

    const-string v2, "x-amz-tag-len"

    .line 544
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 545
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p3, p0, :cond_a5

    goto :goto_8e

    .line 547
    :cond_a5
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported tag length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expected: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_c4
    if-eqz p5, :cond_ce

    if-eqz v7, :cond_c9

    goto :goto_ce

    .line 554
    :cond_c9
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->j()Lcom/amazonaws/services/s3/KeyWrapException;

    move-result-object p0

    throw p0

    :cond_ce
    :goto_ce
    move-object v1, v0

    move-object v2, v7

    move-object v4, p2

    move-object v5, p1

    move-object v6, p6

    .line 556
    invoke-static/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 558
    new-instance p5, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    const/4 p6, 0x2

    .line 559
    invoke-virtual {p1, p3, p0, p6, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p0

    invoke-direct {p5, p4, v0, v7, p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-object p5

    .line 524
    :cond_e2
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to retrieve the encryption materials that originally encrypted object corresponding to instruction file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 503
    :cond_f9
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Necessary encryption info not found in the instruction file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static b(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 15

    .line 825
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->c()Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    move-result-object v2

    .line 826
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a()Ljava/security/SecureRandom;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 824
    invoke-static/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;Ljava/security/SecureRandom;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;

    move-result-object p2

    .line 828
    invoke-static {p0, p1, p3, p5, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 4

    .line 167
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->f()[B

    move-result-object v0

    const-string v1, "x-amz-key"

    .line 169
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->i()[B

    move-result-object v0

    const-string v1, "x-amz-iv"

    .line 172
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-matdesc"

    .line 175
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->i()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p1, v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private g()Z
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private h()Ljava/lang/String;
    .registers 4

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->f()[B

    move-result-object v1

    const-string v2, "x-amz-key"

    .line 219
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->i()[B

    move-result-object v1

    const-string v2, "x-amz-iv"

    .line 221
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-amz-matdesc"

    .line 222
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 2

    .line 230
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->e()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_a

    .line 232
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 234
    :cond_a
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j()Lcom/amazonaws/services/s3/KeyWrapException;
    .registers 2

    .line 444
    new-instance v0, Lcom/amazonaws/services/s3/KeyWrapException;

    const-string v1, "Missing key-wrap for the content-encrypting-key"

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/KeyWrapException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 22

    move-object v0, p0

    .line 705
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->g()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 706
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1c

    .line 707
    :cond_14
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Material description of the new KEK must differ from the current one"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->g()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 712
    new-instance v1, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    iget-object v2, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c:Ljava/util/Map;

    const-string v3, "kms_cmk_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    :goto_31
    move-object v4, v1

    goto :goto_3c

    .line 715
    :cond_33
    iget-object v1, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c:Ljava/util/Map;

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v1

    goto :goto_31

    .line 717
    :goto_3c
    iget-object v2, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d:[B

    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Ljava/lang/String;

    .line 718
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v6

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 717
    invoke-static/range {v2 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 719
    iget-object v1, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 720
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->i()[B

    move-result-object v8

    .line 721
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v10

    move-object/from16 v9, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 720
    invoke-static/range {v7 .. v14}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    .line 724
    iget-object v2, v1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d:[B

    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6f

    return-object v1

    .line 725
    :cond_6f
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The new KEK must differ from the original"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;",
            "Ljava/security/Provider;",
            "Lcom/amazonaws/services/kms/AWSKMSClient;",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 649
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->g()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_1c

    .line 650
    :cond_14
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Material description of the new KEK must differ from the current one"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->g()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 655
    new-instance v3, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    iget-object v4, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c:Ljava/util/Map;

    const-string v5, "kms_cmk_id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    :goto_31
    move-object v6, v3

    goto :goto_3a

    .line 658
    :cond_33
    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c:Ljava/util/Map;

    invoke-interface {v2, v3}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v3

    goto :goto_31

    .line 660
    :goto_3a
    invoke-interface {v2, v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v2

    if-eqz v2, :cond_7a

    .line 667
    iget-object v4, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d:[B

    iget-object v5, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Ljava/lang/String;

    .line 668
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v8

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    .line 667
    invoke-static/range {v4 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 669
    iget-object v1, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->i()[B

    move-result-object v8

    .line 670
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v10

    move-object v9, v2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 669
    invoke-static/range {v7 .. v14}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    .line 673
    iget-object v2, v1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d:[B

    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_72

    return-object v1

    .line 674
    :cond_72
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The new KEK must differ from the original"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 662
    :cond_7a
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No material available with the description "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from the encryption material provider"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 4

    .line 119
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne p2, v0, :cond_f

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->g()Z

    move-result p2

    if-nez p2, :cond_f

    .line 120
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    goto :goto_13

    .line 121
    :cond_f
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method a()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/amazonaws/services/s3/model/CryptoMode;)Ljava/lang/String;
    .registers 3

    .line 184
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne p1, v0, :cond_f

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->g()Z

    move-result p1

    if-nez p1, :cond_f

    .line 185
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->h()Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c()Ljava/lang/String;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->h()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 5

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->f()[B

    move-result-object v1

    const-string v2, "x-amz-key-v2"

    .line 195
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->i()[B

    move-result-object v1

    const-string v2, "x-amz-iv"

    .line 197
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-amz-matdesc"

    .line 198
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v1

    const-string v2, "x-amz-cek-alg"

    .line 203
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()I

    move-result v1

    if-lez v1, :cond_46

    const-string v2, "x-amz-tag-len"

    .line 206
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_46
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    const-string v2, "x-amz-wrap-alg"

    .line 210
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_51
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-object v0
.end method

.method e()Ljava/util/Map;
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

    .line 611
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c:Ljava/util/Map;

    return-object v0
.end method

.method f()[B
    .registers 2

    .line 622
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

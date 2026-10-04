###### Class com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase (com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase)
.class public abstract Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;
.source "S3CryptoModuleBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;",
        ">",
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final a:I = 0x800

.field private static final j:Z = true

.field private static final k:I = 0x9


# instance fields
.field protected final b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

.field protected final c:Lcom/amazonaws/logging/Log;

.field protected final d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

.field protected final e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field protected final f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

.field protected final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final h:Lcom/amazonaws/services/s3/internal/S3Direct;

.field protected final i:Lcom/amazonaws/services/kms/AWSKMSClient;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 6

    .line 123
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;-><init>()V

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object p3

    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    .line 112
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-static {p3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Ljava/util/Map;

    .line 124
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->e()Z

    move-result p3

    if-eqz p3, :cond_39

    .line 127
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 128
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 129
    iput-object p5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 130
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 131
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->i:Lcom/amazonaws/services/kms/AWSKMSClient;

    return-void

    .line 125
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The crypto configuration parameter is required to be read-only"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 5

    .line 141
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;-><init>()V

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    .line 112
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Ljava/util/Map;

    .line 142
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 143
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 144
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 145
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 146
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->i:Lcom/amazonaws/services/kms/AWSKMSClient;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
    .registers 11

    .line 658
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->k()Ljava/io/File;

    move-result-object v0

    .line 659
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    if-nez v1, :cond_e

    goto :goto_19

    .line 665
    :cond_e
    :try_start_e
    invoke-static {v1}, Lcom/amazonaws/internal/ReleasableInputStream;->a(Ljava/io/InputStream;)Lcom/amazonaws/internal/ReleasableInputStream;

    move-result-object v3

    goto :goto_18

    .line 667
    :cond_13
    new-instance v3, Lcom/amazonaws/internal/ResettableInputStream;

    invoke-direct {v3, v0}, Lcom/amazonaws/internal/ResettableInputStream;-><init>(Ljava/io/File;)V

    :goto_18
    move-object v2, v3

    :goto_19
    const-wide/16 v3, -0x1

    cmp-long v5, p3, v3

    if-lez v5, :cond_26

    .line 676
    new-instance v3, Lcom/amazonaws/util/LengthCheckInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p3, p4, v4}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    move-object v2, v3

    .line 679
    :cond_26
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p2

    .line 681
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->l()Z

    move-result p3

    const/16 p4, 0x800

    if-eqz p3, :cond_38

    .line 682
    new-instance p3, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    invoke-direct {p3, v2, p2, p4}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V

    return-object p3

    .line 685
    :cond_38
    new-instance p3, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;

    invoke-direct {p3, v2, p2, p4}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3d} :catch_3e

    return-object p3

    :catch_3e
    move-exception p2

    .line 689
    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v0, v1, v2, p3}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 690
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p3, "Unable to create cipher input stream"

    invoke-direct {p1, p3, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 6

    .line 873
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 875
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->b()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 877
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b()Ljava/security/Provider;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->i:Lcom/amazonaws/services/kms/AWSKMSClient;

    .line 875
    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 883
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 888
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->g()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 892
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->i()Ljava/lang/String;

    move-result-object p1

    .line 893
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 889
    :cond_34
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid instruction file for S3 object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S3 object is not encrypted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 12

    .line 538
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->e()I

    move-result v0

    new-array v2, v0, [B

    .line 539
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 541
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->e()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 543
    invoke-static {p1, p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/AmazonWebServiceRequest;)Ljava/util/Map;

    move-result-object v0

    .line 544
    new-instance v1, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;-><init>()V

    .line 545
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->b(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    move-result-object v1

    .line 546
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 547
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    move-result-object p1

    .line 549
    invoke-virtual {p3}, Lcom/amazonaws/AmazonWebServiceRequest;->d()Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->b(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    .line 550
    invoke-virtual {p3}, Lcom/amazonaws/AmazonWebServiceRequest;->c()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/amazonaws/AmazonWebServiceRequest;->b(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 551
    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->i:Lcom/amazonaws/services/kms/AWSKMSClient;

    invoke-virtual {p3, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;)Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;

    move-result-object p1

    .line 552
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 553
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->b()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 554
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 555
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/BinaryUtils;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 556
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;

    invoke-direct {v3, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;-><init>([BLjava/util/Map;)V

    invoke-static {p3, v2, v1, p2, v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 562
    :cond_72
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->i:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    .line 561
    invoke-static/range {v1 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 4

    .line 499
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->a()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 503
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 501
    :cond_b
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "No material available from the encryption material provider"

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/security/Provider;",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .line 482
    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 486
    :cond_8
    invoke-direct {p0, p1, p3, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 6

    .line 899
    invoke-static {p1}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 898
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 900
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 903
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b()Ljava/security/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->i:Lcom/amazonaws/services/kms/AWSKMSClient;

    const/4 v3, 0x0

    .line 900
    invoke-static {p1, v0, v1, v3, v2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method static a([J)[J
    .registers 8

    if-eqz p0, :cond_21

    const/4 v0, 0x0

    .line 939
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    cmp-long v6, v1, v4

    if-lez v6, :cond_d

    goto :goto_21

    :cond_d
    const/4 v1, 0x2

    .line 942
    new-array v1, v1, [J

    .line 943
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b(J)J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 944
    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c(J)J

    move-result-wide v4

    aput-wide v4, v1, v3

    return-object v1

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(J)J
    .registers 6

    const-wide/16 v0, 0x10

    .line 950
    rem-long v2, p0, v0

    sub-long/2addr p0, v2

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_d

    move-wide p0, v0

    :cond_d
    return-wide p0
.end method

.method private b(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 8

    .line 172
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object v1

    .line 175
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v2

    .line 176
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 179
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object v5

    .line 178
    invoke-virtual {p0, v4, v5, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 182
    :try_start_21
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_31

    .line 184
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    return-object v0

    :catchall_31
    move-exception v0

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 185
    throw v0
.end method

.method private static c(J)J
    .registers 6

    const-wide/16 v0, 0x10

    .line 963
    rem-long v2, p0, v0

    sub-long v2, v0, v2

    add-long/2addr p0, v2

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_13

    const-wide p0, 0x7fffffffffffffffL

    :cond_13
    return-wide p0
.end method

.method private c(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 9

    .line 200
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v1

    .line 202
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->w()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    const/4 v3, 0x0

    .line 203
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    .line 204
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "instruction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v3

    .line 211
    invoke-virtual {p0, p1, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 215
    :try_start_3c
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v5, v4}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v5
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_55

    .line 218
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v4

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    .line 217
    invoke-static {p1, v0, v1, v4, v6}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 221
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    return-object v5

    :catchall_55
    move-exception v2

    .line 218
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    .line 217
    invoke-static {p1, v0, v1, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 219
    throw v2
.end method


# virtual methods
.method protected abstract a(J)J
.end method

.method protected final a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .registers 4

    .line 700
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->k()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 701
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->k()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    return-wide p1

    .line 702
    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_22

    const-string p1, "Content-Length"

    .line 703
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 704
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k()J

    move-result-wide p1

    return-wide p1

    :cond_22
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method final a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 764
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->b()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/RequestClientOptions;->b(Ljava/lang/String;)V

    return-object p1
.end method

.method abstract a(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;",
            ">(TI;J)",
            "Lcom/amazonaws/internal/SdkFilterInputStream;"
        }
    .end annotation
.end method

.method abstract a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherLite;"
        }
    .end annotation
.end method

.method protected final a(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
    .registers 14

    .line 356
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k()Ljava/io/File;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->o()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    if-eqz v1, :cond_f

    move-object v3, v1

    goto :goto_1c

    .line 362
    :cond_f
    :try_start_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A File or InputStream must be specified when uploading part"

    invoke-direct {p2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 367
    :cond_17
    new-instance v3, Lcom/amazonaws/internal/ResettableInputStream;

    invoke-direct {v3, v0}, Lcom/amazonaws/internal/ResettableInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_58

    .line 369
    :goto_1c
    :try_start_1c
    new-instance v2, Lcom/amazonaws/services/s3/internal/InputSubstream;

    .line 370
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->s()J

    move-result-wide v6

    .line 371
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p()J

    move-result-wide v8

    .line 372
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->u()Z

    move-result v10

    move-object v4, v2

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2f} :catch_55

    .line 373
    :try_start_2f
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->l()Z

    move-result v3

    if-eqz v3, :cond_45

    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    const/16 v7, 0x800

    const/4 v8, 0x1

    .line 376
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->u()Z

    move-result v9

    move-object v4, v3

    move-object v5, v2

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    goto :goto_54

    :cond_45
    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;

    const/16 v7, 0x800

    const/4 v8, 0x1

    .line 379
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->u()Z

    move-result v9

    move-object v4, v3

    move-object v5, v2

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_54} :catch_58

    :goto_54
    return-object v3

    :catch_55
    move-exception p2

    move-object v2, v3

    goto :goto_59

    :catch_58
    move-exception p2

    .line 381
    :goto_59
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 382
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Unable to create cipher input stream"

    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected final a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .registers 5

    .line 433
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;

    if-eqz v0, :cond_18

    .line 435
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;

    .line 436
    invoke-interface {v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;->a()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 438
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 439
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b()Ljava/security/Provider;

    move-result-object v1

    .line 438
    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 442
    :cond_18
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v0, :cond_58

    .line 444
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 445
    invoke-interface {v0}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->j_()Ljava/util/Map;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 449
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b()Ljava/security/Provider;

    move-result-object v2

    .line 446
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    if-eqz v1, :cond_32

    return-object v1

    :cond_32
    if-eqz v0, :cond_58

    .line 456
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 457
    invoke-interface {v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->a()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->e()Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_58

    .line 459
    :cond_41
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No material available from the encryption material provider for description "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 469
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b()Ljava/security/Provider;

    move-result-object v1

    .line 468
    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method abstract a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;",
            ")TT;"
        }
    .end annotation
.end method

.method final a(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .registers 6

    const/4 v0, 0x0

    .line 795
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 796
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object p2

    .line 795
    invoke-virtual {v1, p2}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p2

    if-nez p2, :cond_e

    goto :goto_14

    .line 797
    :cond_e
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-direct {v1, p2, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    :try_end_13
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_1 .. :try_end_13} :catch_15

    move-object v0, v1

    :goto_14
    return-object v0

    :catch_15
    move-exception p1

    .line 801
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-interface {p2}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p2

    if-eqz p2, :cond_38

    .line 802
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to retrieve instruction file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 802
    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_38
    return-object v0
.end method

.method protected final a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(TR;",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;",
            ")TR;"
        }
    .end annotation

    .line 623
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_b

    .line 625
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 629
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v1, "x-amz-unencrypted-content-md5"

    .line 631
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->q()Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/4 v1, 0x0

    .line 635
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->j(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_38

    const-string v4, "x-amz-unencrypted-content-length"

    .line 642
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 641
    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(J)V

    .line 646
    :cond_38
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 647
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Ljava/io/InputStream;)V

    .line 651
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Ljava/io/File;)V

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .registers 7

    .line 389
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 390
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->j()Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    if-eqz v1, :cond_22

    .line 393
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->f()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_22

    .line 394
    :cond_1a
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Unable to complete an encrypted multipart upload without being told which part was the last.  Without knowing which part was the last, the encrypted data in Amazon S3 is incomplete and corrupt."

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 398
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    if-eqz v1, :cond_49

    .line 402
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 403
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v2, v3, :cond_49

    .line 405
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 406
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->e()Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->c()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    .line 405
    invoke-virtual {p0, v3, v4, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 409
    :cond_49
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .registers 4

    .line 235
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 237
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object p1

    if-eqz v0, :cond_1e

    .line 239
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->f()Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->a(Z)V

    :cond_1e
    return-object p1
.end method

.method final a(Lcom/amazonaws/services/s3/model/S3ObjectId;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 3

    const/4 v0, 0x0

    .line 919
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .registers 5

    .line 251
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 254
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v1, v2, :cond_26

    .line 256
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->o()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 258
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    :cond_1e
    const/4 v2, 0x0

    .line 261
    invoke-virtual {p0, v1, v2, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 264
    :cond_26
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object v1

    .line 265
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    move-result-object v0

    .line 266
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v2, :cond_3d

    .line 267
    check-cast p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 268
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->j_()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->a(Ljava/util/Map;)V

    .line 270
    :cond_3d
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected final a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 5

    if-nez p1, :cond_7

    .line 416
    new-instance p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    :cond_7
    if-eqz p2, :cond_14

    .line 419
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->a()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/util/Mimetypes;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f(Ljava/lang/String;)V

    .line 422
    :cond_14
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 6

    .line 725
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/CryptoMode;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 726
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 727
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 729
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 730
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 733
    :cond_1e
    array-length v1, p2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(J)V

    const-string v1, "x-amz-crypto-instr-file"

    const-string v2, ""

    .line 735
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 738
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Ljava/io/InputStream;)V

    return-object p1
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 8

    .line 746
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/CryptoMode;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 747
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 748
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 749
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 750
    array-length p3, p3

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(J)V

    const-string p3, "x-amz-crypto-instr-file"

    const-string v2, ""

    .line 751
    invoke-virtual {v1, p3, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    new-instance p3, Lcom/amazonaws/services/s3/model/S3ObjectId;

    invoke-direct {p3, p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/S3ObjectId;->a()Lcom/amazonaws/services/s3/model/InstructionFileId;

    move-result-object p1

    .line 754
    new-instance p2, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InstructionFileId;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InstructionFileId;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p2
.end method

.method public final a(Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 12

    .line 812
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->i()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    .line 813
    new-instance v1, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {v1, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    .line 814
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->j:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 816
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v1

    .line 819
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v1, v2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    if-eqz v1, :cond_90

    .line 824
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-direct {v2, v1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    .line 826
    :try_start_20
    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v3

    .line 827
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 828
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    sget-object v4, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-eq v0, v4, :cond_3b

    goto :goto_43

    .line 829
    :cond_3b
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Lowering the protection of encryption material is not allowed"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 832
    :cond_43
    :goto_43
    invoke-virtual {p0, v3, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V

    .line 834
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v4

    if-nez v4, :cond_62

    .line 837
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->j_()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 840
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b()Ljava/security/Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->i:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v9, p1

    .line 837
    invoke-virtual/range {v3 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    goto :goto_73

    .line 842
    :cond_62
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 845
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b()Ljava/security/Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->i:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v9, p1

    .line 842
    invoke-virtual/range {v3 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 847
    :goto_73
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->a(Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    .line 849
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1
    :try_end_81
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_81} :catch_89
    .catch Ljava/lang/Error; {:try_start_20 .. :try_end_81} :catch_82

    return-object p1

    :catch_82
    move-exception p1

    .line 856
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v1, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 857
    throw p1

    :catch_89
    move-exception p1

    .line 853
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v1, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 854
    throw p1

    .line 821
    :cond_90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified S3 object ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") doesn\'t exist."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 4

    .line 165
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v0, v1, :cond_14

    .line 167
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    goto :goto_18

    .line 168
    :cond_14
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    :goto_18
    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .registers 14

    .line 292
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 293
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()I

    move-result v0

    .line 294
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->u()Z

    move-result v1

    .line 295
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->m()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p()J

    move-result-wide v3

    int-to-long v5, v0

    .line 297
    rem-long v5, v3, v5

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    cmp-long v10, v8, v5

    if-nez v10, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    if-nez v1, :cond_45

    if-eqz v5, :cond_29

    goto :goto_45

    .line 299
    :cond_29
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with the exception of the last part."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    if-eqz v0, :cond_b9

    .line 312
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->a(I)V

    .line 313
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v2

    .line 314
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k()Ljava/io/File;

    move-result-object v5

    .line 315
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->o()Ljava/io/InputStream;

    move-result-object v6

    const/4 v10, 0x0

    .line 318
    :try_start_63
    invoke-virtual {p0, p1, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    move-result-object v2
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_ae

    .line 321
    :try_start_67
    invoke-virtual {p0, v2, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;

    move-result-object v3
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_ab

    .line 322
    :try_start_6b
    invoke-virtual {p1, v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Ljava/io/InputStream;)V

    .line 325
    invoke-virtual {p1, v10}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Ljava/io/File;)V

    .line 326
    invoke-virtual {p1, v8, v9}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->c(J)V

    if-eqz v1, :cond_92

    .line 331
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-lez v2, :cond_83

    .line 333
    invoke-virtual {p1, v8, v9}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(J)V

    .line 335
    :cond_83
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->f()Z

    move-result v2

    if-nez v2, :cond_8a

    goto :goto_92

    .line 336
    :cond_8a
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part."

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_92
    :goto_92
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v2
    :try_end_98
    .catchall {:try_start_6b .. :try_end_98} :catchall_a9

    .line 344
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v5, v6, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 345
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->h()V

    if-eqz v1, :cond_a5

    .line 348
    invoke-virtual {v0, v7}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->a(Z)V

    .line 350
    :cond_a5
    invoke-virtual {p0, v0, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V

    return-object v2

    :catchall_a9
    move-exception v1

    goto :goto_b0

    :catchall_ab
    move-exception v1

    move-object v3, v2

    goto :goto_b0

    :catchall_ae
    move-exception v1

    move-object v3, v10

    .line 344
    :goto_b0
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v5, v6, v3, v2}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 345
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->h()V

    .line 346
    throw v1

    .line 307
    :cond_b9
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No client-side information available on upload ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .registers 6

    .line 573
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_f

    .line 577
    :try_start_8
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    goto :goto_13

    :catch_d
    move-exception p1

    goto :goto_7a

    .line 578
    :cond_f
    invoke-static {v0, p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 579
    :goto_13
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c()I

    move-result v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 580
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a()Ljava/security/SecureRandom;

    move-result-object v2

    .line 579
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 583
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a()Ljava/security/KeyPair;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    .line 585
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 586
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->c()Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    move-result-object v2

    .line 587
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->a(Ljava/security/Key;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4c

    .line 589
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->getProvider()Ljava/security/Provider;

    move-result-object p1

    if-nez p1, :cond_41

    const/4 p1, 0x0

    goto :goto_45

    .line 590
    :cond_41
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_45
    const-string p2, "BC"

    .line 591
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    .line 594
    :goto_4d
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    if-eqz p1, :cond_79

    .line 595
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    aget-byte p1, p1, v1

    if-eqz p1, :cond_5c

    goto :goto_79

    :cond_5c
    const/4 p1, 0x0

    :goto_5d
    const/16 p2, 0x9

    if-ge p1, p2, :cond_71

    .line 601
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 602
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    aget-byte v2, v2, v1

    if-eqz v2, :cond_6e

    return-object p2

    :cond_6e
    add-int/lit8 p1, p1, 0x1

    goto :goto_5d

    .line 607
    :cond_71
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Failed to generate secret key"

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_79
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_79} :catch_d

    :cond_79
    :goto_79
    return-object p2

    .line 609
    :goto_7a
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to generate envelope symmetric key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected a(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V
    .registers 3

    return-void
.end method

.method abstract a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/internal/SdkFilterInputStream;",
            ")V"
        }
    .end annotation
.end method

.method public final a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    .line 230
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->j()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 8

    .line 509
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->B()Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object p1

    .line 511
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->k()Ljava/io/File;

    move-result-object v0

    .line 512
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v1

    .line 514
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 515
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->c()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v2

    .line 516
    invoke-virtual {p0, p1, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 519
    :try_start_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/amazonaws/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    const/4 v2, 0x1

    .line 522
    invoke-virtual {p2, v2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->a(Z)V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_38

    .line 525
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->o()Ljava/io/InputStream;

    move-result-object p2

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    .line 524
    invoke-static {p1, v0, v1, p2, v2}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 526
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p3, p1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    return-void

    :catchall_38
    move-exception p2

    .line 525
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    .line 524
    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 526
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p3, p1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 527
    throw p2
.end method

.method abstract b(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
.end method

.method public final b()Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    return-object v0
.end method

.method final b(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 4

    .line 933
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 934
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectId;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InstructionFileId;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    return-object v0
.end method

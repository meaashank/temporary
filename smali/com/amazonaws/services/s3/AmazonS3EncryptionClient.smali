###### Class com.amazonaws.services.s3.AmazonS3EncryptionClient (com.amazonaws.services.s3.AmazonS3EncryptionClient)
.class public Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;
.super Lcom/amazonaws/services/s3/AmazonS3Client;
.source "AmazonS3EncryptionClient.java"

# interfaces
.implements Lcom/amazonaws/services/s3/AmazonS3Encryption;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field private final k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule<",
            "*>;"
        }
    .end annotation
.end field

.field private final l:Lcom/amazonaws/services/kms/AWSKMSClient;

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V
    .registers 4

    .line 274
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 6

    .line 411
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 5

    .line 335
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V
    .registers 5

    .line 292
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    new-instance v1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 6

    .line 418
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 5

    .line 358
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V
    .registers 5

    .line 312
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    new-instance v1, Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 427
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 13

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 438
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 5

    .line 383
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 13

    .line 449
    invoke-direct {p0, p2, p4, p6}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    const-string v0, "EncryptionMaterialsProvider parameter must not be null."

    .line 450
    invoke-direct {p0, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CryptoConfiguration parameter must not be null."

    .line 452
    invoke-direct {p0, p5, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 454
    :goto_12
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->m:Z

    .line 455
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->m:Z

    if-eqz v0, :cond_1c

    .line 456
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/services/kms/AWSKMSClient;

    move-result-object p1

    :cond_1c
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->l:Lcom/amazonaws/services/kms/AWSKMSClient;

    .line 459
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->l:Lcom/amazonaws/services/kms/AWSKMSClient;

    new-instance v2, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;

    const/4 p4, 0x0

    invoke-direct {v2, p0, p4}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;-><init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$1;)V

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V
    .registers 3

    .line 143
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 4

    .line 216
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;)V
    .registers 5

    const/4 v0, 0x0

    .line 177
    check-cast v0, Lcom/amazonaws/auth/AWSCredentialsProvider;

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    new-instance v2, Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 5

    const/4 v0, 0x0

    .line 256
    check-cast v0, Lcom/amazonaws/auth/AWSCredentialsProvider;

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method private a(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/services/kms/AWSKMSClient;
    .registers 6

    .line 473
    new-instance v0, Lcom/amazonaws/services/kms/AWSKMSClient;

    invoke-direct {v0, p1, p2, p4}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 475
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->i()Lcom/amazonaws/regions/Region;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 477
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/regions/Region;)V

    :cond_e
    return-object v0
.end method

.method static synthetic a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 3

    .line 98
    invoke-super {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amazonaws/services/s3/UploadObjectObserver;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/amazonaws/services/s3/UploadObjectObserver;",
            "TT;)TT;"
        }
    .end annotation

    .line 777
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a()V

    return-object p2
.end method

.method static synthetic a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 484
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .registers 3

    .line 530
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;->a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/UploadObjectRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .registers 14

    .line 727
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->x()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-nez v0, :cond_15

    .line 730
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->b()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 731
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->z()Lcom/amazonaws/services/s3/UploadObjectObserver;

    move-result-object v2

    if-nez v2, :cond_20

    .line 733
    new-instance v2, Lcom/amazonaws/services/s3/UploadObjectObserver;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/UploadObjectObserver;-><init>()V

    .line 735
    :cond_20
    new-instance v3, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;-><init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$1;)V

    invoke-virtual {v2, p1, v3, p0, v0}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Lcom/amazonaws/services/s3/internal/S3DirectSpi;Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ExecutorService;)Lcom/amazonaws/services/s3/UploadObjectObserver;

    .line 737
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/UploadObjectObserver;->b(Lcom/amazonaws/services/s3/model/UploadObjectRequest;)Ljava/lang/String;

    move-result-object v9

    .line 738
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 739
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->y()Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;

    move-result-object v3

    if-nez v3, :cond_3d

    .line 741
    new-instance v3, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;-><init>()V

    :cond_3d
    move-object v11, v3

    .line 744
    :try_start_3e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->v()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->w()J

    move-result-wide v7

    move-object v3, v11

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a(Lcom/amazonaws/services/s3/UploadObjectObserver;JJ)Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;

    .line 747
    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    invoke-virtual {v3, p1, v9, v11}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;->a(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 749
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/UploadObjectObserver;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 750
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/model/UploadPartResult;

    .line 751
    new-instance v4, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->a()I

    move-result v5

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_7a} :catch_aa
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_7a} :catch_a2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3e .. :try_end_7a} :catch_9a
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_7a} :catch_92
    .catch Ljava/lang/Error; {:try_start_3e .. :try_end_7a} :catch_8a
    .catchall {:try_start_3e .. :try_end_7a} :catchall_88

    goto :goto_58

    :cond_7b
    if-eqz v1, :cond_80

    .line 765
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 766
    :cond_80
    invoke-virtual {v11}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a()V

    .line 769
    invoke-virtual {v2, v10}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1

    :catchall_88
    move-exception p1

    goto :goto_b2

    :catch_8a
    move-exception p1

    .line 762
    :try_start_8b
    invoke-direct {p0, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/UploadObjectObserver;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Error;

    throw p1

    :catch_92
    move-exception p1

    .line 760
    invoke-direct {p0, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/UploadObjectObserver;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :catch_9a
    move-exception p1

    .line 758
    invoke-direct {p0, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/UploadObjectObserver;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutionException;

    throw p1

    :catch_a2
    move-exception p1

    .line 756
    invoke-direct {p0, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/UploadObjectObserver;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/InterruptedException;

    throw p1

    :catch_aa
    move-exception p1

    .line 754
    invoke-direct {p0, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/UploadObjectObserver;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_b2
    .catchall {:try_start_8b .. :try_end_b2} :catchall_88

    :goto_b2
    if-eqz v1, :cond_b7

    .line 765
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 766
    :cond_b7
    invoke-virtual {v11}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a()V

    .line 767
    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .registers 3

    .line 576
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;->a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .registers 3

    .line 548
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    if-eqz v0, :cond_c

    .line 549
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    .line 551
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->i()Z

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_16

    .line 553
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    .line 554
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    goto :goto_1a

    .line 555
    :cond_16
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    :goto_1a
    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 4

    .line 511
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 3

    .line 596
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;->a(Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->w()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .registers 3

    .line 571
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .registers 3

    .line 581
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->k:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;->a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V
    .registers 5

    .line 516
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->b()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->b(Ljava/lang/String;)V

    .line 518
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    .line 520
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectId;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/S3ObjectId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectId;->a()Lcom/amazonaws/services/s3/model/InstructionFileId;

    move-result-object v0

    .line 522
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->g()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    .line 523
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/InstructionFileId;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/InstructionFileId;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    .line 524
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    return-void
.end method

.method public e()V
    .registers 2

    .line 609
    invoke-super {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->e()V

    .line 610
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->m:Z

    if-eqz v0, :cond_c

    .line 611
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->l:Lcom/amazonaws/services/kms/AWSKMSClient;

    invoke-virtual {v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->e()V

    :cond_c
    return-void
.end method

###### Class com.amazonaws.services.s3.AmazonS3EncryptionClient.AnonymousClass1 (com.amazonaws.services.s3.AmazonS3EncryptionClient$1)
.class synthetic Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$1;
.super Ljava/lang/Object;
.source "AmazonS3EncryptionClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.services.s3.AmazonS3EncryptionClient.S3DirectImpl (com.amazonaws.services.s3.AmazonS3EncryptionClient$S3DirectImpl)
.class final Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;
.super Lcom/amazonaws/services/s3/internal/S3Direct;
.source "AmazonS3EncryptionClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "S3DirectImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;)V
    .registers 2

    .line 620
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/S3Direct;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$1;)V
    .registers 3

    .line 620
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;-><init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .registers 3

    .line 639
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .registers 3

    .line 656
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .registers 3

    .line 645
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 4

    .line 633
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 3

    .line 628
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .registers 3

    .line 651
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .registers 3

    .line 661
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    return-void
.end method

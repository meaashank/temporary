###### Class com.amazonaws.services.s3.AmazonS3Client (com.amazonaws.services.s3.AmazonS3Client)
.class public Lcom/amazonaws/services/s3/AmazonS3Client;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonS3Client.java"

# interfaces
.implements Lcom/amazonaws/services/s3/AmazonS3;


# static fields
.field public static final h:Ljava/lang/String; = "s3"

.field private static final j:Ljava/lang/String; = "S3SignerType"

.field private static final k:Ljava/lang/String; = "AWSS3V4SignerType"

.field private static l:Lcom/amazonaws/logging/Log; = null

.field private static final o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private static final p:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

.field private static final t:I = 0x12c

.field private static final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile i:Ljava/lang/String;

.field private final m:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

.field private final n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/amazonaws/services/s3/S3ClientOptions;

.field private final r:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field private s:I

.field private final v:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 176
    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    .line 180
    invoke-static {}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->addAll(Ljava/util/Collection;)Z

    const-string v0, "S3SignerType"

    .line 183
    const-class v1, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-static {v0, v1}, Lcom/amazonaws/auth/SignerFactory;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "AWSS3V4SignerType"

    .line 184
    const-class v1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-static {v0, v1}, Lcom/amazonaws/auth/SignerFactory;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 195
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 201
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    .line 224
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client$1;

    const/16 v1, 0x12c

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client$1;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->u:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 459
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Region;)V
    .registers 4

    .line 597
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;)V
    .registers 4

    .line 470
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V
    .registers 5

    .line 485
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p3}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .registers 6

    .line 502
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 188
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 191
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 204
    new-instance p2, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/S3ClientOptions;

    const/16 p2, 0x400

    .line 220
    iput p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:I

    .line 238
    new-instance p2, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 408
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 409
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->p()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p2, v0, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 188
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 191
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 204
    new-instance p2, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/S3ClientOptions;

    const/16 p2, 0x400

    .line 220
    iput p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:I

    .line 238
    new-instance p2, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 382
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 383
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->p()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;)V
    .registers 4

    .line 514
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V
    .registers 5

    .line 530
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p3}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .registers 6

    .line 548
    invoke-direct {p0, p3, p4}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 188
    new-instance p4, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 191
    new-instance p4, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 204
    new-instance p4, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/S3ClientOptions;

    const/16 p4, 0x400

    .line 220
    iput p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:I

    .line 238
    new-instance p4, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 549
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 550
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method static B(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "\\."

    .line 5774
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5775
    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_f

    return v0

    .line 5778
    :cond_f
    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    .line 5780
    :try_start_15
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_24

    if-ltz v3, :cond_23

    const/16 v4, 0xff

    if-le v3, v4, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_23
    :goto_23
    return v0

    :catch_24
    return v0

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method private C(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 5646
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_38

    .line 5648
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5649
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bucket region cache doesn\'t have an entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Trying to get bucket region from Amazon S3."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 5652
    :cond_2d
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 5654
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->u:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5657
    :cond_38
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 5658
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Region for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_5e
    return-object v0
.end method

.method private D(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 5674
    :try_start_2
    new-instance v4, Lcom/amazonaws/services/s3/model/HeadBucketRequest;

    invoke-direct {v4, p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    new-instance v6, Ljava/net/URI;

    const-string v1, "https://s3-us-west-1.amazonaws.com"

    invoke-direct {v6, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 5677
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;-><init>()V

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/HeadBucketResult;

    .line 5679
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/HeadBucketResult;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_25
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_2 .. :try_end_25} :catch_27
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_25} :catch_29

    move-object v0, v1

    goto :goto_43

    :catch_27
    move-exception v1

    goto :goto_31

    .line 5686
    :catch_29
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    const-string v2, "Error while creating URI"

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    goto :goto_43

    .line 5681
    :goto_31
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->j()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_43

    .line 5682
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-bucket-region"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_43
    :goto_43
    if-nez v0, :cond_68

    .line 5689
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 5690
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able to derive region of the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from the HEAD Bucket requests."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_68
    return-object v0
.end method

.method private E(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_1b

    const-string v0, "/"

    .line 5760
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1b
    return-object p1
.end method

.method private a(Ljava/io/InputStream;)J
    .registers 8

    const/16 v0, 0x2000

    .line 2017
    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 2019
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    const-wide/16 v2, 0x0

    .line 2021
    :goto_a
    :try_start_a
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v1, :cond_13

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_a

    .line 2024
    :cond_13
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_17

    return-wide v2

    :catch_17
    move-exception p1

    .line 2026
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Could not calculate content length."

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 8

    if-nez p5, :cond_7

    .line 4047
    new-instance p5, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {p5, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 4050
    :cond_7
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p5, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p5

    const-string v0, "acl"

    const/4 v1, 0x0

    .line 4053
    invoke-interface {p5, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1a

    const-string v0, "versionId"

    .line 4055
    invoke-interface {p5, v0, p3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4057
    :cond_1a
    invoke-static {p5, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 4059
    new-instance p3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$AccessControlListUnmarshaller;

    invoke-direct {p3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$AccessControlListUnmarshaller;-><init>()V

    invoke-direct {p0, p5, p3, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;)Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
    .registers 6

    .line 5025
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified while getting the Request Payment Configuration."

    .line 5027
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5031
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "requestPayment"

    .line 5034
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/xml"

    .line 5035
    invoke-interface {p1, v1, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5037
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$RequestPaymentConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$RequestPaymentConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    return-object p1
.end method

.method private a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TY;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TX;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 4868
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    .line 4869
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 4870
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v2

    .line 4872
    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 4879
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v3, 0x0

    .line 4882
    :try_start_15
    iget v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->f:I

    invoke-interface {p1, v4}, Lcom/amazonaws/Request;->a(I)V

    .line 4889
    invoke-interface {p1}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    .line 4890
    invoke-interface {p1, v4, v5}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    if-eqz p3, :cond_40

    .line 4897
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v4

    instance-of v4, v4, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    if-nez v4, :cond_40

    .line 4898
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->c(Lcom/amazonaws/Request;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 4899
    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 4902
    :cond_40
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v4}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v4

    .line 4903
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 4904
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v4

    .line 4906
    :cond_50
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/amazonaws/http/ExecutionContext;->a(Lcom/amazonaws/auth/Signer;)V

    .line 4907
    invoke-virtual {v1, v4}, Lcom/amazonaws/http/ExecutionContext;->a(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 4908
    iget-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->d:Lcom/amazonaws/http/AmazonHttpClient;

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-virtual {p4, p1, p2, v0, v1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p2
    :try_end_62
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_15 .. :try_end_62} :catch_74
    .catchall {:try_start_15 .. :try_end_62} :catchall_72

    .line 4910
    :try_start_62
    invoke-virtual {p2}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object p4
    :try_end_66
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_62 .. :try_end_66} :catch_6e
    .catchall {:try_start_62 .. :try_end_66} :catchall_6a

    .line 4930
    invoke-virtual {p0, v2, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object p4

    :catchall_6a
    move-exception p3

    move-object v3, p2

    move-object p2, p3

    goto :goto_ae

    :catch_6e
    move-exception p4

    move-object v3, p2

    move-object p2, p4

    goto :goto_75

    :catchall_72
    move-exception p2

    goto :goto_ae

    :catch_74
    move-exception p2

    .line 4920
    :goto_75
    :try_start_75
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->g()I

    move-result p4

    const/16 v0, 0x12d

    if-ne p4, v0, :cond_ad

    .line 4921
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->j()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_ad

    .line 4922
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->j()Ljava/util/Map;

    move-result-object p4

    const-string v0, "x-amz-bucket-region"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 4923
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->u:Ljava/util/Map;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4924
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The bucket is in this region: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ". Please use this region to retry the request"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->d(Ljava/lang/String;)V

    .line 4928
    :cond_ad
    throw p2
    :try_end_ae
    .catchall {:try_start_75 .. :try_end_ae} :catchall_72

    .line 4930
    :goto_ae
    invoke-virtual {p0, v2, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 4931
    throw p2
.end method

.method private a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TY;>;",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TX;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 4856
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_4f

    .line 5478
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectTagging;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4f

    .line 5481
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5483
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectTagging;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5484
    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 5485
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Tag;

    .line 5486
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Tag;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5487
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Tag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5488
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "&"

    .line 5489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 5493
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4f
    :goto_4f
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .registers 6

    .line 4362
    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4363
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_29} :catch_2a

    return-object v0

    :catch_2a
    move-exception p1

    .line 4365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bucket name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/AccessControlList;",
            ")V"
        }
    .end annotation

    .line 2036
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->b()Ljava/util/Set;

    move-result-object p1

    .line 2037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2038
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Grant;

    .line 2039
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->b()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2040
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->b()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    :cond_2f
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->b()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->a()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 2044
    :cond_41
    invoke-static {}, Lcom/amazonaws/services/s3/model/Permission;->values()[Lcom/amazonaws/services/s3/model/Permission;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_48
    if-ge v3, v1, :cond_a3

    aget-object v4, p1, v3

    .line 2045
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 2046
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 2048
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2049
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_95

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazonaws/services/s3/model/Grantee;

    if-nez v7, :cond_72

    const/4 v7, 0x1

    goto :goto_77

    :cond_72
    const-string v9, ", "

    .line 2053
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    :goto_77
    invoke-interface {v8}, Lcom/amazonaws/services/s3/model/Grantee;->getTypeIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-interface {v8}, Lcom/amazonaws/services/s3/model/Grantee;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 2058
    :cond_95
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/Permission;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_a3
    return-void
.end method

.method private a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyObjectRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/CopyObjectRequest;",
            ")V"
        }
    .end annotation

    .line 4459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4460
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4462
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 4463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?versionId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3f
    const-string v1, "x-amz-copy-source"

    .line 4465
    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-copy-source-if-modified-since"

    .line 4468
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->u()Ljava/util/Date;

    move-result-object v1

    .line 4467
    invoke-static {p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v0, "x-amz-copy-source-if-unmodified-since"

    .line 4470
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->s()Ljava/util/Date;

    move-result-object v1

    .line 4469
    invoke-static {p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v0, "x-amz-copy-source-if-match"

    .line 4473
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->q()Ljava/util/List;

    move-result-object v1

    .line 4472
    invoke-static {p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "x-amz-copy-source-if-none-match"

    .line 4475
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->r()Ljava/util/List;

    move-result-object v1

    .line 4474
    invoke-static {p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 4477
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->o()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 4478
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->o()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_89

    .line 4479
    :cond_76
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->n()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    if-eqz v0, :cond_89

    const-string v0, "x-amz-acl"

    .line 4481
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->n()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4480
    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4484
    :cond_89
    :goto_89
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    const-string v0, "x-amz-storage-class"

    .line 4485
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->m()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4488
    :cond_98
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a7

    const-string v0, "x-amz-website-redirect-location"

    .line 4489
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->v()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4492
    :cond_a7
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->y()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 4494
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->p()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-eqz v0, :cond_be

    const-string v1, "x-amz-metadata-directive"

    const-string v2, "REPLACE"

    .line 4496
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4497
    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 4501
    :cond_be
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->w()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 4502
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->x()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-void
.end method

.method private a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/CopyPartRequest;",
            ")V"
        }
    .end annotation

    .line 4518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4519
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4521
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 4522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?versionId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3f
    const-string v1, "x-amz-copy-source"

    .line 4524
    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-copy-source-if-modified-since"

    .line 4527
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->t()Ljava/util/Date;

    move-result-object v1

    .line 4526
    invoke-static {p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v0, "x-amz-copy-source-if-unmodified-since"

    .line 4529
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->s()Ljava/util/Date;

    move-result-object v1

    .line 4528
    invoke-static {p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v0, "x-amz-copy-source-if-match"

    .line 4532
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->q()Ljava/util/List;

    move-result-object v1

    .line 4531
    invoke-static {p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "x-amz-copy-source-if-none-match"

    .line 4534
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->r()Ljava/util/List;

    move-result-object v1

    .line 4533
    invoke-static {p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 4536
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->o()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->p()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 4537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->o()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4538
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-amz-copy-source-range"

    .line 4539
    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4543
    :cond_9a
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->u()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 4544
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->v()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-void
.end method

.method private a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 4433
    :cond_3
    invoke-interface {p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    .line 4434
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "http://"

    const-string v2, "https://"

    .line 4435
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4436
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 4437
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    const-string v1, "Overriding current endpoint to use HTTPS as required by S3 for requests containing an MFA header"

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    :cond_29
    const-string v0, "x-amz-mfa"

    .line 4441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4442
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4441
    invoke-interface {p1, v0, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    .line 4380
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->i()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 4382
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/lang/String;

    const-string v2, "x-amz-server-side-encryption"

    .line 4384
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4383
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_23

    .line 4385
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    if-eqz v0, :cond_4b

    .line 4390
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4391
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 4395
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->v()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5a

    const-string v1, "Expires"

    .line 4397
    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4400
    :cond_5a
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_a1

    .line 4402
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4403
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4404
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_86

    .line 4406
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_86
    if-eqz v0, :cond_8c

    .line 4409
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4411
    :cond_8c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x-amz-meta-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_a1
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_5c

    .line 4730
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "response-cache-control"

    .line 4732
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->k()Ljava/lang/String;

    move-result-object v1

    .line 4731
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4734
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v0, "response-content-disposition"

    .line 4736
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->l()Ljava/lang/String;

    move-result-object v1

    .line 4735
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4738
    :cond_20
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    const-string v0, "response-content-encoding"

    .line 4740
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->m()Ljava/lang/String;

    move-result-object v1

    .line 4739
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4742
    :cond_2f
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    const-string v0, "response-content-language"

    .line 4744
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->i()Ljava/lang/String;

    move-result-object v1

    .line 4743
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4746
    :cond_3e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    const-string v0, "response-content-type"

    .line 4748
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->h()Ljava/lang/String;

    move-result-object v1

    .line 4747
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4750
    :cond_4d
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    const-string v0, "response-expires"

    .line 4752
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->j()Ljava/lang/String;

    move-result-object p1

    .line 4751
    invoke-interface {p0, v0, p1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_14

    const-string v0, "x-amz-server-side-encryption"

    .line 4610
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->b()Ljava/lang/String;

    move-result-object v1

    .line 4609
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 4613
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->a()Ljava/lang/String;

    move-result-object p1

    .line 4611
    invoke-static {p0, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "x-amz-server-side-encryption-customer-algorithm"

    .line 4566
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->b()Ljava/lang/String;

    move-result-object v1

    .line 4565
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-server-side-encryption-customer-key"

    .line 4568
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a()Ljava/lang/String;

    move-result-object v1

    .line 4567
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-server-side-encryption-customer-key-MD5"

    .line 4570
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c()Ljava/lang/String;

    move-result-object v1

    .line 4569
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4573
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 4574
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 4575
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a()Ljava/lang/String;

    move-result-object p1

    .line 4576
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "x-amz-server-side-encryption-customer-key-MD5"

    .line 4578
    invoke-static {p1}, Lcom/amazonaws/util/Md5Utils;->b([B)Ljava/lang/String;

    move-result-object p1

    .line 4577
    invoke-interface {p0, v0, p1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private a(Lcom/amazonaws/Request;Ljava/lang/Integer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_b

    const-string v0, "partNumber"

    .line 4627
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 4662
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 4697
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_f

    .line 4713
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4714
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method protected static a(Lcom/amazonaws/Request;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    const-string p1, "x-amz-request-payer"

    const-string v0, "requester"

    .line 5523
    invoke-interface {p0, p1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private a(Lcom/amazonaws/Request;[BLjava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;[B",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 5497
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const-string v0, "Content-Length"

    .line 5498
    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    .line 5499
    invoke-interface {p1, v0, p3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_30

    .line 5502
    :try_start_19
    invoke-static {p2}, Lcom/amazonaws/util/Md5Utils;->a([B)[B

    move-result-object p2

    .line 5503
    invoke-static {p2}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-MD5"

    .line 5504
    invoke-interface {p1, p3, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_27

    goto :goto_30

    :catch_27
    move-exception p1

    .line 5506
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    const-string p3, "Couldn\'t compute md5 sum"

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_30
    :goto_30
    return-void
.end method

.method private a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 4022
    :cond_3
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 4023
    invoke-virtual {v0, p2}, Lcom/amazonaws/event/ProgressEvent;->a(I)V

    .line 4024
    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private a(Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 628
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/auth/AWSCredentialsProvider;

    if-eqz v0, :cond_50

    if-eqz p1, :cond_48

    .line 636
    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->c:Lcom/amazonaws/ClientConfiguration;

    const-string p2, "s3"

    .line 637
    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Ljava/lang/String;

    const-string p2, "s3.amazonaws.com"

    .line 640
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/regions/Region;)V

    .line 643
    new-instance p1, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {p1}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 644
    iget-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->e:Ljava/util/List;

    const-string v0, "/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {p1, v0}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 646
    iget-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->e:Ljava/util/List;

    const-string v0, "/com/amazonaws/services/s3/request.handler2s"

    invoke-virtual {p1, v0}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 649
    sget-object p1, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initialized with endpoint = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Ljava/net/URI;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    return-void

    .line 633
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Region cannot be null. Region is required to sign the request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 629
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Credentials cannot be null. Credentials is required to sign the request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V
    .registers 4

    .line 4231
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->a(Ljava/lang/String;)V

    .line 4232
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;)V
    .registers 7

    .line 4988
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    .line 4990
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->h()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified while setting the Requester Pays."

    .line 4992
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The request payment configuration parameter must be specified when setting the Requester Pays."

    .line 4995
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4999
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "requestPayment"

    .line 5002
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 5003
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    .line 5006
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 5007
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5008
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 5010
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V
    .registers 9

    if-nez p6, :cond_7

    .line 4118
    new-instance p6, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {p6, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 4121
    :cond_7
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p6

    const-string v0, "acl"

    const/4 v1, 0x0

    .line 4123
    invoke-interface {p6, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1a

    const-string v0, "versionId"

    .line 4125
    invoke-interface {p6, v0, p3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4127
    :cond_1a
    invoke-static {p6, p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 4129
    new-instance p3, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;

    invoke-direct {p3}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;-><init>()V

    invoke-virtual {p3, p4}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->a(Lcom/amazonaws/services/s3/model/AccessControlList;)[B

    move-result-object p3

    const-string p4, "Content-Type"

    const-string p5, "application/xml"

    .line 4130
    invoke-interface {p6, p4, p5}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "Content-Length"

    .line 4131
    array-length p5, p3

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p6, p4, p5}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4132
    new-instance p4, Ljava/io/ByteArrayInputStream;

    invoke-direct {p4, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p6, p4}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 4134
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p6, p3, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V
    .registers 9

    if-nez p6, :cond_7

    .line 4081
    new-instance p6, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {p6, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 4084
    :cond_7
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p6

    const-string v0, "acl"

    const/4 v1, 0x0

    .line 4086
    invoke-interface {p6, v0, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-acl"

    .line 4087
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p6, v0, p4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_23

    const-string p4, "versionId"

    .line 4089
    invoke-interface {p6, p4, p3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    :cond_23
    invoke-static {p6, p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 4093
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p6, p3, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/model/AmazonS3Exception;I)Z
    .registers 7

    .line 3615
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->k()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 3617
    invoke-virtual {v0}, Lcom/amazonaws/retry/RetryPolicy;->a()Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_1c

    .line 3621
    :cond_10
    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->a:Lcom/amazonaws/retry/RetryPolicy;

    if-ne v0, v2, :cond_15

    return v1

    .line 3625
    :cond_15
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 3626
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    return v1
.end method

.method private b(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .registers 8

    const/high16 v0, 0x40000

    .line 5060
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    const/4 v4, -0x1

    if-lez v0, :cond_14

    .line 5065
    :try_start_9
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v4, :cond_14

    add-int/2addr v3, v5

    sub-int/2addr v0, v5

    goto :goto_6

    :catch_12
    move-exception p1

    goto :goto_2b

    .line 5069
    :cond_14
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_23

    .line 5072
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1d} :catch_12

    .line 5076
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object p1

    .line 5070
    :cond_23
    :try_start_23
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Input stream exceeds 256k buffer."

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2b} :catch_12

    .line 5074
    :goto_2b
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Failed to read from inputstream"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "x-amz-copy-source-server-side-encryption-customer-algorithm"

    .line 4589
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->b()Ljava/lang/String;

    move-result-object v1

    .line 4588
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-copy-source-server-side-encryption-customer-key"

    .line 4591
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a()Ljava/lang/String;

    move-result-object v1

    .line 4590
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-copy-source-server-side-encryption-customer-key-MD5"

    .line 4593
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c()Ljava/lang/String;

    move-result-object v1

    .line 4592
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4596
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 4597
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 4598
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a()Ljava/lang/String;

    move-result-object p1

    .line 4599
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "x-amz-copy-source-server-side-encryption-customer-key-MD5"

    .line 4601
    invoke-static {p1}, Lcom/amazonaws/util/Md5Utils;->b([B)Ljava/lang/String;

    move-result-object p1

    .line 4600
    invoke-interface {p0, v0, p1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 12

    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    .line 1321
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    .line 1323
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1326
    new-instance v0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->b(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 1326
    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 12

    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    .line 1369
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    .line 1371
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1374
    new-instance v0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->b(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 1374
    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    return-void
.end method

.method private b(Ljava/net/URI;Ljava/lang/String;)Z
    .registers 4

    .line 5748
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;->b()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isDNSBucketName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 5749
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->B(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private c(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/services/s3/internal/S3Signer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_20

    :cond_1e
    const-string p2, ""

    :goto_20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_26

    goto :goto_28

    :cond_26
    const-string p3, ""

    :goto_28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4284
    new-instance p3, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-interface {p1}, Lcom/amazonaws/Request;->e()Lcom/amazonaws/http/HttpMethodName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/amazonaws/services/s3/internal/S3Signer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method private c(Lcom/amazonaws/Request;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 4254
    invoke-interface {p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->c(Ljava/net/URI;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4255
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->r()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private c(Ljava/net/URI;)Z
    .registers 3

    .line 4274
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s3.amazonaws.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private d(Lcom/amazonaws/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 4343
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->e:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 4344
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/handlers/RequestHandler2;

    .line 4345
    invoke-virtual {v1, p1}, Lcom/amazonaws/handlers/RequestHandler2;->a(Lcom/amazonaws/Request;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private static d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 4644
    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private e(Lcom/amazonaws/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "Content-Length"

    const/4 v1, 0x0

    .line 5046
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 4680
    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static o()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->u:Ljava/util/Map;

    return-object v0
.end method

.method private p()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "s3.amazonaws.com"

    .line 606
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;)V

    const-string v0, "s3"

    .line 607
    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Ljava/lang/String;

    .line 609
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 610
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 612
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/s3/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private q()Z
    .registers 2

    .line 4239
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->c:Lcom/amazonaws/ClientConfiguration;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->c:Lcom/amazonaws/ClientConfiguration;

    .line 4240
    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private r()Ljava/lang/String;
    .registers 2

    .line 4266
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 4268
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Ljava/lang/String;

    :cond_8
    return-object v0
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 5767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_10

    goto :goto_12

    :cond_10
    const-string p2, ""

    :goto_12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .registers 3

    .line 3192
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazonaws/http/HttpMethodName;",
            ")",
            "Lcom/amazonaws/Request<",
            "TX;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4826
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazonaws/http/HttpMethodName;",
            "Ljava/net/URI;",
            ")",
            "Lcom/amazonaws/Request<",
            "TX;>;"
        }
    .end annotation

    .line 4831
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "Amazon S3"

    invoke-direct {v0, p3, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 4836
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/S3ClientOptions;->d()Z

    move-result p3

    if-eqz p3, :cond_30

    .line 4837
    invoke-interface {v0}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p3

    instance-of p3, p3, Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;

    if-nez p3, :cond_30

    .line 4838
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/S3ClientOptions;->f()Z

    move-result p3

    if-eqz p3, :cond_28

    const-string p3, "s3-accelerate.dualstack.amazonaws.com"

    .line 4839
    iget-object p5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-static {p3, p5}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object p5

    goto :goto_30

    :cond_28
    const-string p3, "s3-accelerate.amazonaws.com"

    .line 4842
    iget-object p5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-static {p3, p5}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object p5

    .line 4847
    :cond_30
    :goto_30
    invoke-interface {v0, p4}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/http/HttpMethodName;)V

    .line 4848
    invoke-virtual {p0, v0, p1, p2, p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method protected a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/auth/Signer;"
        }
    .end annotation

    .line 4168
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Ljava/net/URI;

    goto :goto_f

    .line 4170
    :cond_b
    invoke-interface {p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v0

    .line 4174
    :goto_f
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    .line 4176
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->q()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 4177
    instance-of v1, v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    if-eqz v1, :cond_5a

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->c(Lcom/amazonaws/Request;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 4179
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Ljava/lang/String;

    if-nez v1, :cond_30

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->u:Ljava/util/Map;

    .line 4180
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_32

    :cond_30
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Ljava/lang/String;

    :goto_32
    if-eqz v1, :cond_4d

    .line 4188
    invoke-static {v1}, Lcom/amazonaws/regions/RegionUtils;->b(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v2

    const-string v3, "s3"

    invoke-virtual {v2, v3}, Lcom/amazonaws/regions/Region;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-static {v2, v3}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object v2

    .line 4185
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 4191
    check-cast v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    .line 4192
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V

    return-object v0

    .line 4194
    :cond_4d
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    if-eqz v1, :cond_5a

    .line 4195
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->c(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;

    move-result-object p1

    return-object p1

    .line 4200
    :cond_5a
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->n()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_70

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Ljava/lang/String;

    if-nez v1, :cond_6d

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->u:Ljava/util/Map;

    .line 4201
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_74

    :cond_6d
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Ljava/lang/String;

    goto :goto_74

    .line 4202
    :cond_70
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->n()Ljava/lang/String;

    move-result-object v1

    :goto_74
    if-eqz v1, :cond_7f

    .line 4204
    new-instance p1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;-><init>()V

    .line 4205
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V

    return-object p1

    .line 4210
    :cond_7f
    instance-of v1, v0, Lcom/amazonaws/services/s3/internal/S3Signer;

    if-eqz v1, :cond_88

    .line 4215
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->c(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;

    move-result-object p1

    return-object p1

    :cond_88
    return-object v0
.end method

.method protected final a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;
    .registers 4

    .line 4861
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d_(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lcom/amazonaws/services/s3/AmazonS3Client;->g()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 4862
    :goto_10
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->e:Ljava/util/List;

    invoke-direct {v0, v1, p1, p0}, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 8

    .line 1297
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAclRequest;->h()Ljava/lang/String;

    move-result-object v1

    const-string v0, "The bucket name parameter must be specified when requesting a bucket\'s ACL"

    .line 1298
    invoke-static {v1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1301
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 10

    const-string v0, "The request parameter must be specified when requesting an object\'s ACL"

    .line 1177
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting an object\'s ACL"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when requesting an object\'s ACL"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->i()Ljava/lang/String;

    move-result-object v4

    .line 1185
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->k()Z

    move-result v6

    move-object v2, p0

    move-object v7, p1

    .line 1184
    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;
    .registers 9

    const-string v0, "The CreateBucketRequest parameter must be specified when creating a bucket"

    .line 1091
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 1095
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when creating a bucket"

    .line 1096
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_18

    .line 1100
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1102
    :cond_18
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->validateBucketName(Ljava/lang/String;)V

    .line 1104
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 1107
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->k()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 1108
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->k()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_43

    .line 1109
    :cond_30
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->j()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v4

    if-eqz v4, :cond_43

    const-string v4, "x-amz-acl"

    .line 1110
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->j()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v4, p1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v4, "s3.amazonaws.com"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    if-eqz v1, :cond_59

    .line 1119
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 1122
    :cond_59
    :try_start_59
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Ljava/net/URI;

    .line 1123
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/regions/RegionUtils;->c(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object p1

    .line 1124
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_67} :catch_68

    goto :goto_69

    :catch_68
    :cond_68
    move-object p1, v1

    :goto_69
    if-eqz p1, :cond_af

    .line 1136
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    .line 1137
    new-instance v1, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v4, "CreateBucketConfiguration"

    const-string v5, "xmlns"

    const-string v6, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 1138
    invoke-virtual {v1, v4, v5, v6}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v4, "LocationConstraint"

    .line 1139
    invoke-virtual {v1, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 1140
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 1142
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    const-string v1, "Content-Length"

    .line 1143
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v1}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 1147
    :cond_af
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1149
    new-instance p1, Lcom/amazonaws/services/s3/model/Bucket;

    invoke-direct {p1, v0}, Lcom/amazonaws/services/s3/model/Bucket;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)Lcom/amazonaws/services/s3/model/Bucket;
    .registers 4

    .line 1068
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .registers 5

    const-string v0, "getBucketAccelerateConfigurationRequest must be specified."

    .line 3201
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3203
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when querying accelerate configuration"

    .line 3204
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3207
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "accelerate"

    .line 3209
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketAccelerateConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketAccelerateConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .registers 5

    const-string v0, "The request object parameter getBucketCrossOriginConfigurationRequest must be specified."

    .line 2712
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2714
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specified when retrieving the bucket cross origin configuration."

    .line 2715
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2718
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "cors"

    .line 2720
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    :try_start_1a
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketCrossOriginConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketCrossOriginConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    :try_end_25
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_1a .. :try_end_25} :catch_26

    return-object p1

    :catch_26
    move-exception p1

    .line 2726
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->g()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_30

    return-object v2

    .line 2730
    :cond_30
    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .registers 5

    const-string v0, "The request object pamameter getBucketLifecycleConfigurationRequest must be specified."

    .line 2583
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specifed when retrieving the bucket lifecycle configuration."

    .line 2586
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2589
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "lifecycle"

    .line 2591
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    :try_start_1a
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLifecycleConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLifecycleConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    :try_end_25
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_1a .. :try_end_25} :catch_26

    return-object p1

    :catch_26
    move-exception p1

    .line 2597
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->g()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_30

    return-object v2

    .line 2601
    :cond_30
    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
    .registers 5

    const-string v0, "The bucket logging configuration"

    .line 3143
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3145
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    .line 3146
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "logging"

    .line 3148
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLoggingConfigurationnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLoggingConfigurationnmarshaller;-><init>()V

    .line 3151
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;->i()Ljava/lang/String;

    move-result-object p1

    .line 3149
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .registers 5

    .line 3112
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket request must specify a bucket name when querying notification configuration"

    .line 3113
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3116
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "notification"

    .line 3118
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/BucketNotificationConfigurationStaxUnmarshaller;->a()Lcom/amazonaws/services/s3/model/transform/BucketNotificationConfigurationStaxUnmarshaller;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;)Lcom/amazonaws/services/s3/model/BucketPolicy;
    .registers 6

    const-string v0, "The request object must be specified when getting a bucket policy"

    .line 3308
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3311
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specified when getting a bucket policy"

    .line 3312
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3315
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "policy"

    .line 3317
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3319
    new-instance v1, Lcom/amazonaws/services/s3/model/BucketPolicy;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/BucketPolicy;-><init>()V

    .line 3321
    :try_start_1f
    new-instance v3, Lcom/amazonaws/services/s3/internal/S3StringResponseHandler;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/S3StringResponseHandler;-><init>()V

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3322
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/BucketPolicy;->a(Ljava/lang/String;)V
    :try_end_2d
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_1f .. :try_end_2d} :catch_2e

    return-object v1

    :catch_2e
    move-exception p1

    .line 3331
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NoSuchBucketPolicy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    return-object v1

    .line 3334
    :cond_3c
    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .registers 5

    const-string v0, "The bucket request parameter must be specified when retrieving replication configuration"

    .line 5144
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5147
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket request must specify a bucket name when retrieving replication configuration"

    .line 5148
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5152
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "replication"

    .line 5154
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5156
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketReplicationConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketReplicationConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .registers 5

    const-string v0, "The request object parameter getBucketTaggingConfigurationRequest must be specifed."

    .line 2841
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2843
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specified when retrieving the bucket tagging configuration."

    .line 2844
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2847
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "tagging"

    .line 2849
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    :try_start_1a
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketTaggingConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketTaggingConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    :try_end_25
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_1a .. :try_end_25} :catch_26

    return-object p1

    :catch_26
    move-exception p1

    .line 2855
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->g()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_30

    return-object v2

    .line 2859
    :cond_30
    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .registers 5

    const-string v0, "The request object parameter getBucketVersioningConfigurationRequest must be specified."

    .line 2511
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2513
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when querying versioning configuration"

    .line 2514
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2517
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "versioning"

    .line 2519
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketVersioningConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketVersioningConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .registers 6

    .line 2547
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting a bucket\'s website configuration"

    .line 2549
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2552
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "website"

    .line 2554
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/xml"

    .line 2555
    invoke-interface {p1, v1, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    :try_start_1c
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketWebsiteConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketWebsiteConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    :try_end_27
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_1c .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception p1

    .line 2561
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->g()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_32

    return-object v2

    .line 2564
    :cond_32
    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .registers 13

    const-string v0, "The request parameter must be specified when completing a multipart upload"

    .line 3562
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3565
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 3566
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->i()Ljava/lang/String;

    move-result-object v1

    .line 3567
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket name parameter must be specified when completing a multipart upload"

    .line 3568
    invoke-static {v0, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The key parameter must be specified when completing a multipart upload"

    .line 3570
    invoke-static {v1, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The upload ID parameter must be specified when completing a multipart upload"

    .line 3572
    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3574
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->k()Ljava/util/List;

    move-result-object v3

    const-string v4, "The part ETags parameter must be specified when completing a multipart upload"

    invoke-static {v3, v4}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3580
    :goto_2b
    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v5

    const-string v6, "uploadId"

    .line 3581
    invoke-interface {v5, v6, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->l()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 3585
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->k()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->a(Ljava/util/List;)[B

    move-result-object v6

    const-string v7, "Content-Type"

    const-string v8, "application/xml"

    .line 3586
    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Length"

    .line 3587
    array-length v8, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v5, v7}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3593
    new-instance v6, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v7, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v9, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v9}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v9, v8, v3

    new-instance v9, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v9}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    new-instance v10, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct {v10}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    invoke-direct {v10}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    aput-object v10, v8, v9

    invoke-direct {v6, v7, v8}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 3601
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    .line 3602
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->k()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v6

    if-eqz v6, :cond_9b

    .line 3603
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->k()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1

    .line 3606
    :cond_9b
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->l()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 3605
    invoke-direct {p0, p1, v6, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/model/AmazonS3Exception;I)Z

    move-result v4

    if-eqz v4, :cond_a9

    move v4, v7

    goto :goto_2b

    .line 3608
    :cond_a9
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->l()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;
    .registers 9

    .line 2085
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The source bucket name must be specified when copying an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2087
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The source object key must be specified when copying an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2089
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The destination bucket name must be specified when copying an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2091
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The destination object key must be specified when copying an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2094
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->l()Ljava/lang/String;

    move-result-object v0

    .line 2095
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k()Ljava/lang/String;

    move-result-object v1

    .line 2097
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 2100
    invoke-direct {p0, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyObjectRequest;)V

    .line 2104
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->t()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object p1

    .line 2103
    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 2110
    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;)V

    .line 2115
    :try_start_3f
    new-instance p1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v5, 0x0

    new-instance v6, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    aput-object v6, v4, v5

    invoke-direct {p1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 2123
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    :try_end_72
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_3f .. :try_end_72} :catch_ed

    .line 2149
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_bd

    .line 2168
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;-><init>()V

    .line 2169
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->f(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->k()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->b(Ljava/util/Date;)V

    .line 2171
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->b(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->k_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->c(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->d(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->e(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->a(Ljava/util/Date;)V

    .line 2176
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->a(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->c()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->a(Z)V

    return-object v0

    .line 2150
    :cond_bd
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->m()Ljava/lang/String;

    move-result-object v0

    .line 2151
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->o()Ljava/lang/String;

    move-result-object v1

    .line 2152
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->p()Ljava/lang/String;

    move-result-object v3

    .line 2153
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->n()Ljava/lang/String;

    move-result-object p1

    .line 2155
    new-instance v4, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v4, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {v4, v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->c(Ljava/lang/String;)V

    .line 2157
    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v4, v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 2158
    invoke-virtual {v4, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->e(Ljava/lang/String;)V

    .line 2160
    invoke-interface {v2}, Lcom/amazonaws/Request;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->b(Ljava/lang/String;)V

    const/16 p1, 0xc8

    .line 2161
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(I)V

    .line 2163
    throw v4

    :catch_ed
    move-exception p1

    .line 2132
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->g()I

    move-result v0

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_f8

    const/4 p1, 0x0

    return-object p1

    .line 2136
    :cond_f8
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectResult;
    .registers 6

    .line 2072
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .registers 10

    .line 2209
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The source bucket name must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2211
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The source object key must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2213
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The destination bucket name must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2215
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The upload id must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The destination object key must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2219
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "The part number must be specified when copying a part"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2222
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->n()Ljava/lang/String;

    move-result-object v0

    .line 2223
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->m()Ljava/lang/String;

    move-result-object v1

    .line 2225
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 2229
    invoke-direct {p0, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V

    const-string v3, "uploadId"

    .line 2231
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "partNumber"

    .line 2232
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->i()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;)V

    .line 2244
    :try_start_64
    new-instance v3, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v4, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v6, 0x0

    new-instance v7, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 2250
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    :try_end_87
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_64 .. :try_end_87} :catch_f4

    .line 2277
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->m()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c4

    .line 2294
    new-instance v1, Lcom/amazonaws/services/s3/model/CopyPartResult;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/CopyPartResult;-><init>()V

    .line 2295
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/CopyPartResult;->a(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->i()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->a(I)V

    .line 2297
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->k()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->a(Ljava/util/Date;)V

    .line 2298
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->b(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->k_()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->c(Ljava/lang/String;)V

    .line 2300
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->d(Ljava/lang/String;)V

    .line 2301
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/CopyPartResult;->e(Ljava/lang/String;)V

    return-object v1

    .line 2278
    :cond_c4
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->m()Ljava/lang/String;

    move-result-object p1

    .line 2279
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->o()Ljava/lang/String;

    move-result-object v1

    .line 2280
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->p()Ljava/lang/String;

    move-result-object v3

    .line 2281
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->n()Ljava/lang/String;

    move-result-object v0

    .line 2283
    new-instance v4, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v4, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->c(Ljava/lang/String;)V

    .line 2285
    sget-object p1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 2286
    invoke-virtual {v4, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {v4, v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->e(Ljava/lang/String;)V

    .line 2288
    invoke-interface {v2}, Lcom/amazonaws/Request;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->b(Ljava/lang/String;)V

    const/16 p1, 0xc8

    .line 2289
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(I)V

    .line 2291
    throw v4

    :catch_f4
    move-exception p1

    .line 2260
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->g()I

    move-result v0

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_ff

    const/4 p1, 0x0

    return-object p1

    .line 2264
    :cond_ff
    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationResult;
    .registers 6

    const-string v0, "The request cannot be null"

    .line 5293
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5296
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    .line 5295
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5298
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analytics Id"

    .line 5297
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5300
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    .line 5301
    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "analytics"

    .line 5302
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 5303
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5305
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketAnalyticsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketAnalyticsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationResult;
    .registers 6

    const-string v0, "The request cannot be null"

    .line 5397
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5399
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5400
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inventory id"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5402
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "inventory"

    .line 5403
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 5404
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5406
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketInventoryConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketInventoryConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationResult;
    .registers 6

    const-string v0, "The request cannot be null"

    .line 5197
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5199
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5200
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Metrics Id"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5202
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    .line 5203
    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "metrics"

    .line 5204
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 5205
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5207
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketMetricsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketMetricsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectTaggingResult;
    .registers 9

    const-string v0, "The request parameter must be specified when delete the object tags"

    .line 5590
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5592
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5594
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Key"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5596
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v3, "tagging"

    const/4 v4, 0x0

    .line 5598
    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "versionId"

    .line 5599
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    new-instance p1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectTaggingResponseUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectTaggingResponseUnmarshaller;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v5, Lcom/amazonaws/services/s3/internal/DeleteObjectTaggingHeaderHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/DeleteObjectTaggingHeaderHandler;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 5605
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
    .registers 9

    .line 2348
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "delete"

    .line 2350
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->i()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 2353
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->i()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 2356
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->l()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 2358
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;-><init>()V

    .line 2359
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;->a(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)[B

    move-result-object v1

    const-string v3, "Content-Length"

    .line 2360
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    .line 2361
    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v3}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 2364
    :try_start_46
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->a([B)[B

    move-result-object v1

    .line 2365
    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-MD5"

    .line 2366
    invoke-interface {v0, v3, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_53} :catch_c2

    .line 2373
    new-instance v1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectsResultUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectsResultUnmarshaller;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v5, 0x0

    new-instance v6, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    aput-object v6, v4, v5

    invoke-direct {v1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 2377
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    .line 2382
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2396
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->c()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;-><init>(Ljava/util/List;Z)V

    return-object v0

    .line 2383
    :cond_8a
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->b()Ljava/util/Map;

    move-result-object v0

    .line 2385
    new-instance v1, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;

    .line 2386
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->b()Ljava/util/List;

    move-result-object v2

    .line 2387
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    const/16 p1, 0xc8

    .line 2389
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->a(I)V

    const-string p1, "x-amz-request-id"

    .line 2390
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->a(Ljava/lang/String;)V

    const-string p1, "x-amz-id-2"

    .line 2391
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->e(Ljava/lang/String;)V

    const-string p1, "X-Amz-Cf-Id"

    .line 2392
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->f(Ljava/lang/String;)V

    .line 2394
    throw v1

    :catch_c2
    move-exception p1

    .line 2368
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Couldn\'t compute md5 sum"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
    .registers 6

    const-string v0, "The request cannot be null"

    .line 5319
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5322
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    .line 5321
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5324
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analytics Id"

    .line 5323
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5326
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    .line 5327
    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "analytics"

    .line 5328
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 5329
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5331
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketAnalyticsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketAnalyticsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;
    .registers 6

    const-string v0, "The request cannot be null"

    .line 5420
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5422
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5423
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inventory id"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5425
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "inventory"

    .line 5426
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 5427
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5429
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketInventoryConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketInventoryConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;
    .registers 6

    const-string v0, "The request cannot be null"

    .line 5221
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5222
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5223
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Metrics Id"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5225
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    .line 5226
    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "metrics"

    .line 5227
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 5228
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5230
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketMetricsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketMetricsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;)Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;
    .registers 9

    const-string v0, "The request parameter must be specified when getting the object tags"

    .line 5544
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5546
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5548
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Key"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5550
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v3, "tagging"

    const/4 v4, 0x0

    .line 5552
    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "versionId"

    .line 5553
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5555
    new-instance p1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetObjectTaggingResponseUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetObjectTaggingResponseUnmarshaller;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v5, Lcom/amazonaws/services/s3/internal/GetObjectTaggingResponseHeaderHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/GetObjectTaggingResponseHeaderHandler;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 5559
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/HeadBucketRequest;)Lcom/amazonaws/services/s3/model/HeadBucketResult;
    .registers 5

    .line 1481
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucketName parameter must be specified."

    .line 1483
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1486
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    .line 1488
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/HeadBucketResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .registers 8

    const-string v0, "The request parameter must be specified when initiating a multipart upload"

    .line 3638
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3641
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when initiating a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3643
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when initiating a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3647
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->j()Ljava/lang/String;

    move-result-object v0

    .line 3648
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    .line 3646
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "uploads"

    const/4 v2, 0x0

    .line 3650
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3652
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->n()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    if-eqz v1, :cond_3e

    const-string v1, "x-amz-storage-class"

    .line 3654
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->n()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3653
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3657
    :cond_3e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    const-string v1, "x-amz-website-redirect-location"

    .line 3659
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->p()Ljava/lang/String;

    move-result-object v2

    .line 3658
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    :cond_4d
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->m()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 3663
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->m()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_6e

    .line 3664
    :cond_5b
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->l()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    if-eqz v1, :cond_6e

    const-string v1, "x-amz-acl"

    .line 3665
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->l()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v2

    .line 3666
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3665
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    :cond_6e
    :goto_6e
    iget-object v1, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v1, :cond_77

    .line 3670
    iget-object v1, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->a:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 3673
    :cond_77
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->r()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 3676
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3680
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->t()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v1

    .line 3679
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 3684
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;)V

    .line 3689
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3693
    new-instance v1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v5, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v5, v4, v2

    invoke-direct {v1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 3699
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->j()Ljava/lang/String;

    move-result-object v2

    .line 3700
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->k()Ljava/lang/String;

    move-result-object p1

    .line 3698
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;
    .registers 6

    const-string v0, "The request cannot be null"

    .line 5373
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5376
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    .line 5375
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5378
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    .line 5379
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    const-string v3, "analytics"

    .line 5380
    invoke-interface {v1, v3, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "continuation-token"

    .line 5381
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5383
    new-instance p1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketAnalyticsConfigurationUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketAnalyticsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;)Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;
    .registers 6

    const-string v0, "The request cannot be null"

    .line 5466
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5468
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5470
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    const-string v3, "inventory"

    .line 5471
    invoke-interface {v1, v3, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "continuation-token"

    .line 5472
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5474
    new-instance p1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketInventoryConfigurationsUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketInventoryConfigurationsUnmarshaller;-><init>()V

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .registers 6

    const-string v0, "The request cannot be null"

    .line 5270
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5272
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5274
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    .line 5275
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    const-string v3, "metrics"

    .line 5276
    invoke-interface {v1, v3, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "continuation-token"

    .line 5277
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5279
    new-instance p1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketMetricsConfigurationsUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketMetricsConfigurationsUnmarshaller;-><init>()V

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListObjectsV2Request;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
    .registers 6

    .line 899
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when listing objects in a bucket"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    .line 901
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "list-type"

    const-string v3, "2"

    .line 907
    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start-after"

    .line 909
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "continuation-token"

    .line 911
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->m()Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delimiter"

    .line 912
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max-keys"

    .line 913
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->k()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "prefix"

    .line 914
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "encoding-type"

    .line 915
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fetch-owner"

    .line 916
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->n()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->p()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    const-string v1, "url"

    .line 924
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 926
    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsV2Unmarshaller;

    invoke-direct {v3, v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsV2Unmarshaller;-><init>(Z)V

    .line 927
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->h()Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-direct {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;
    .registers 6

    const-string v0, "The request parameter must be specified when listing multipart uploads"

    .line 3713
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3716
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when listing multipart uploads"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3720
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    .line 3719
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "uploads"

    .line 3722
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3724
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    const-string v1, "key-marker"

    .line 3725
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    :cond_2d
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->i()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_40

    const-string v1, "max-uploads"

    .line 3728
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->i()Ljava/lang/Integer;

    move-result-object v3

    .line 3729
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3728
    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3731
    :cond_40
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    const-string v1, "upload-id-marker"

    .line 3733
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->k()Ljava/lang/String;

    move-result-object v3

    .line 3732
    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3735
    :cond_4f
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5e

    const-string v1, "delimiter"

    .line 3736
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3738
    :cond_5e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    const-string v1, "prefix"

    .line 3739
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3741
    :cond_6d
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7c

    const-string v1, "encoding-type"

    .line 3742
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3745
    :cond_7c
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListMultipartUploadsResultUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListMultipartUploadsResultUnmarshaller;-><init>()V

    .line 3746
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->h()Ljava/lang/String;

    move-result-object p1

    .line 3745
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .registers 4

    .line 953
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->h()Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->i()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 956
    new-instance p1, Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;-><init>()V

    .line 957
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->b(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->e(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->d(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->g()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->a(I)V

    .line 961
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->c(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 963
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->a(Z)V

    return-object p1

    .line 967
    :cond_3e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->i()Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .registers 7

    .line 852
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when listing objects in a bucket"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    .line 862
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 866
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    .line 865
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    const-string v2, "prefix"

    .line 868
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "delimiter"

    .line 869
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "marker"

    .line 870
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "encoding-type"

    .line 871
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->n()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 875
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->l()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 876
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->l()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_66

    const-string v2, "max-keys"

    .line 877
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->l()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_66
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;

    invoke-direct {v2, v0}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;-><init>(Z)V

    .line 880
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->h()Ljava/lang/String;

    move-result-object p1

    .line 879
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ObjectListing;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .registers 3

    const-string v0, "The previous object listing parameter must be specified when listing the next batch of objects in a bucket"

    .line 939
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    new-instance v0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;-><init>(Lcom/amazonaws/services/s3/model/ObjectListing;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 7

    const-string v0, "The GetObjectMetadataRequest parameter must be specified when requesting an object\'s metadata"

    .line 1400
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 1404
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->i()Ljava/lang/String;

    move-result-object v1

    .line 1405
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket name parameter must be specified when requesting an object\'s metadata"

    .line 1407
    invoke-static {v0, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The key parameter must be specified when requesting an object\'s metadata"

    .line 1409
    invoke-static {v1, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1412
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    if-eqz v2, :cond_28

    const-string v4, "versionId"

    .line 1415
    invoke-interface {v3, v4, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_28
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->k()Z

    move-result v2

    invoke-static {v3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 1419
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->l()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/Integer;)V

    .line 1421
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 1423
    new-instance p1, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v3, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 9

    const-string v0, "The destination file parameter must be specified when downloading an object directly to a file"

    .line 1693
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->n()[J

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->n()[J

    move-result-object v0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_19

    const/4 v1, 0x1

    .line 1699
    :cond_19
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client$2;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client$2;-><init>(Lcom/amazonaws/services/s3/AmazonS3Client;Lcom/amazonaws/services/s3/model/GetObjectRequest;)V

    invoke-static {p2, v0, v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Ljava/io/File;Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;Z)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    if-nez p1, :cond_26

    const/4 p1, 0x0

    return-object p1

    .line 1718
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/amazonaws/services/s3/model/Owner;
    .registers 2

    .line 979
    new-instance v0, Lcom/amazonaws/services/s3/model/GetS3AccountOwnerRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/GetS3AccountOwnerRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetS3AccountOwnerRequest;)Lcom/amazonaws/services/s3/model/Owner;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetS3AccountOwnerRequest;)Lcom/amazonaws/services/s3/model/Owner;
    .registers 4

    const-string v0, "The request object parameter getS3AccountOwnerRequest must be specified."

    .line 987
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    new-instance p1, Lcom/amazonaws/services/s3/model/ListBucketsRequest;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ListBucketsRequest;-><init>()V

    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    .line 992
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsOwnerUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsOwnerUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/Owner;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListPartsRequest;)Lcom/amazonaws/services/s3/model/PartListing;
    .registers 5

    const-string v0, "The request parameter must be specified when listing parts"

    .line 3758
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3761
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when listing parts"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3763
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when listing parts"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3765
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The upload ID parameter must be specified when listing parts"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3768
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 3769
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->i()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    .line 3768
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "uploadId"

    .line 3770
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3772
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->k()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4a

    const-string v1, "max-parts"

    .line 3773
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->k()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3775
    :cond_4a
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->l()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5d

    const-string v1, "part-number-marker"

    .line 3776
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->l()Ljava/lang/Integer;

    move-result-object v2

    .line 3777
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3776
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3779
    :cond_5d
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    const-string v1, "encoding-type"

    .line 3780
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3784
    :cond_6c
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->n()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 3785
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListPartsResultUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListPartsResultUnmarshaller;-><init>()V

    .line 3786
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->i()Ljava/lang/String;

    move-result-object p1

    .line 3785
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PartListing;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 16

    const-string v0, "The PutObjectRequest parameter must be specified when uploading an object"

    .line 1787
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1790
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 1791
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->i()Ljava/lang/String;

    move-result-object v1

    .line 1792
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    .line 1793
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v3

    .line 1800
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->d()Lcom/amazonaws/event/ProgressListener;

    move-result-object v4

    .line 1802
    invoke-static {v4}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v4

    if-nez v2, :cond_24

    .line 1805
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    :cond_24
    const-string v5, "The bucket name parameter must be specified when uploading an object"

    .line 1808
    invoke-static {v0, v5}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "The key parameter must be specified when uploading an object"

    .line 1810
    invoke-static {v1, v5}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1813
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v5

    .line 1817
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_97

    .line 1818
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object v3

    .line 1820
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(J)V

    .line 1822
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->q()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4d

    const/4 v6, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x0

    .line 1825
    :goto_4e
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->m()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5f

    .line 1826
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->a()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/amazonaws/services/s3/util/Mimetypes;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f(Ljava/lang/String;)V

    :cond_5f
    if-eqz v6, :cond_87

    if-nez v5, :cond_87

    .line 1831
    :try_start_63
    invoke-static {v3}, Lcom/amazonaws/util/Md5Utils;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 1832
    invoke-virtual {v2, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->j(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6a} :catch_6b

    goto :goto_87

    :catch_6b
    move-exception p1

    .line 1834
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to calculate MD5 hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1840
    :cond_87
    :goto_87
    :try_start_87
    new-instance v6, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-direct {v6, v3}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_8c} :catch_8e

    move-object v3, v6

    goto :goto_97

    :catch_8e
    move-exception p1

    .line 1842
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to find file to upload"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1846
    :cond_97
    :goto_97
    sget-object v6, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v6

    .line 1849
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->n()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v9

    if-eqz v9, :cond_ab

    .line 1850
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->n()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_be

    .line 1851
    :cond_ab
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->m()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v9

    if-eqz v9, :cond_be

    const-string v9, "x-amz-acl"

    .line 1852
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->m()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :cond_be
    :goto_be
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->j()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_cd

    const-string v9, "x-amz-storage-class"

    .line 1856
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->j()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    :cond_cd
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->p()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e8

    const-string v9, "x-amz-website-redirect-location"

    .line 1860
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->p()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_e8

    .line 1862
    invoke-direct {p0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;)V

    .line 1863
    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v9, v8, [B

    invoke-direct {v3, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_e8
    const-string v9, "x-amz-tagging"

    .line 1867
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->r()Lcom/amazonaws/services/s3/model/ObjectTagging;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v9, v10}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->x()Z

    move-result v9

    invoke-static {v6, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 1872
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    const-string v9, "Content-Length"

    .line 1875
    invoke-virtual {v2, v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-nez v9, :cond_13d

    .line 1884
    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v8

    if-nez v8, :cond_12f

    .line 1885
    sget-object v8, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    const-string v9, "No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors."

    invoke-interface {v8, v9}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 1888
    invoke-direct {p0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v3

    const-string v8, "Content-Length"

    .line 1889
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    invoke-interface {v6, v7}, Lcom/amazonaws/Request;->a(Z)V

    goto :goto_156

    .line 1893
    :cond_12f
    invoke-direct {p0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/io/InputStream;)J

    move-result-wide v7

    const-string v9, "Content-Length"

    .line 1894
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v9, v7}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_156

    .line 1897
    :cond_13d
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-ltz v7, :cond_156

    .line 1906
    new-instance v7, Lcom/amazonaws/util/LengthCheckInputStream;

    invoke-direct {v7, v3, v10, v11, v8}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    const-string v3, "Content-Length"

    .line 1911
    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v3, v8}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    :cond_156
    :goto_156
    if-eqz v4, :cond_16a

    .line 1916
    new-instance v7, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v7, v3, v4}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 1917
    move-object v3, v7

    check-cast v3, Lcom/amazonaws/event/ProgressReportingInputStream;

    iget v8, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:I

    invoke-virtual {v3, v8}, Lcom/amazonaws/event/ProgressReportingInputStream;->a(I)V

    const/4 v3, 0x2

    .line 1918
    invoke-direct {p0, v4, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v3, v7

    :cond_16a
    const/4 v7, 0x0

    .line 1922
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->q()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_179

    if-nez v5, :cond_179

    .line 1930
    new-instance v7, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v7, v3}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v7

    .line 1933
    :cond_179
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->m()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_184

    const-string v8, "application/octet-stream"

    .line 1938
    invoke-virtual {v2, v8}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f(Ljava/lang/String;)V

    .line 1941
    :cond_184
    invoke-static {v6, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 1942
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->t()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 1944
    invoke-interface {v6, v3}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const/16 p1, 0x8

    .line 1959
    :try_start_193
    new-instance v8, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v8}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v6, v8, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_19e
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_193 .. :try_end_19e} :catch_238
    .catchall {:try_start_193 .. :try_end_19e} :catchall_236

    .line 1965
    :try_start_19e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1a1
    .catch Lcom/amazonaws/AbortedException; {:try_start_19e .. :try_end_1a1} :catch_1be
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a1} :catch_1a2

    goto :goto_1bf

    :catch_1a2
    move-exception v1

    .line 1968
    sget-object v3, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to cleanly close input stream: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1bf

    :catch_1be
    nop

    .line 1972
    :goto_1bf
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_1cd

    .line 1974
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->a()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object v1

    :cond_1cd
    if-eqz v0, :cond_1f1

    if-eqz v1, :cond_1f1

    if-nez v5, :cond_1f1

    .line 1978
    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 1979
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 1981
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1e6

    goto :goto_1f1

    .line 1982
    :cond_1e6
    invoke-direct {p0, v4, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1984
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f1
    :goto_1f1
    const/4 p1, 0x4

    .line 1993
    invoke-direct {p0, v4, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1995
    new-instance p1, Lcom/amazonaws/services/s3/model/PutObjectResult;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/PutObjectResult;-><init>()V

    .line 1996
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->b(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->c(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->d(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->e(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->a(Ljava/util/Date;)V

    .line 2001
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->a(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->f(Ljava/lang/String;)V

    .line 2003
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 2004
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->a(Z)V

    return-object p1

    :catchall_236
    move-exception p1

    goto :goto_23d

    :catch_238
    move-exception v0

    .line 1961
    :try_start_239
    invoke-direct {p0, v4, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1962
    throw v0
    :try_end_23d
    .catchall {:try_start_239 .. :try_end_23d} :catchall_236

    .line 1965
    :goto_23d
    :try_start_23d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_240
    .catch Lcom/amazonaws/AbortedException; {:try_start_23d .. :try_end_240} :catch_25c
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_240} :catch_241

    goto :goto_25c

    :catch_241
    move-exception v0

    .line 1968
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to cleanly close input stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1970
    :catch_25c
    :goto_25c
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 5

    .line 1761
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    new-instance p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 1762
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    .line 1761
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 6

    .line 1775
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 11

    const-string v0, "The GetObjectRequest parameter must be specified when requesting an object"

    .line 1540
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when requesting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->k()Ljava/lang/String;

    move-result-object v0

    .line 1548
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    .line 1547
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1550
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    const-string v1, "versionId"

    .line 1551
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    :cond_34
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->n()[J

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7a

    .line 1557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1558
    aget-wide v4, v1, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_75

    .line 1564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_75
    const-string v1, "Range"

    .line 1566
    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_7a
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->v()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 1571
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->t()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    const-string v1, "If-Modified-Since"

    .line 1574
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s()Ljava/util/Date;

    move-result-object v3

    .line 1573
    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v1, "If-Unmodified-Since"

    .line 1576
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->r()Ljava/util/Date;

    move-result-object v3

    .line 1575
    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v1, "If-Match"

    .line 1578
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->o()Ljava/util/List;

    move-result-object v3

    .line 1577
    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "If-None-Match"

    .line 1580
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->p()Ljava/util/List;

    move-result-object v3

    .line 1579
    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 1583
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 1590
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->d()Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    .line 1592
    invoke-static {v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v1

    .line 1595
    :try_start_bb
    new-instance v3, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;-><init>()V

    .line 1596
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->l()Ljava/lang/String;

    move-result-object v5

    .line 1595
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3Object;

    .line 1603
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/S3Object;->a(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/S3Object;->b(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v3

    .line 1611
    new-instance v4, Lcom/amazonaws/util/ServiceClientHolderInputStream;

    invoke-direct {v4, v3, p0}, Lcom/amazonaws/util/ServiceClientHolderInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/AmazonWebServiceClient;)V

    if-eqz v1, :cond_f9

    .line 1618
    new-instance v3, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v3, v4, v1}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 1620
    invoke-virtual {v3, v2}, Lcom/amazonaws/event/ProgressReportingInputStream;->a(Z)V

    .line 1621
    iget v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:I

    invoke-virtual {v3, v4}, Lcom/amazonaws/event/ProgressReportingInputStream;->a(I)V

    const/4 v4, 0x2

    .line 1623
    invoke-direct {p0, v1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    goto :goto_fa

    :cond_f9
    move-object v3, v4

    .line 1631
    :goto_fa
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_13d

    .line 1632
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Z

    move-result p1

    if-nez p1, :cond_13d

    .line 1634
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->s()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13b

    .line 1635
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13b

    .line 1636
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->s()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_126
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_bb .. :try_end_126} :catch_153

    :try_start_126
    const-string v2, "MD5"

    .line 1641
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1642
    new-instance v4, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;

    invoke-direct {v4, v3, v2, p1}, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;[B)V
    :try_end_131
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_126 .. :try_end_131} :catch_133
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_126 .. :try_end_131} :catch_153

    move-object v3, v4

    goto :goto_13b

    :catch_133
    move-exception p1

    .line 1644
    :try_start_134
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    const-string v4, "No MD5 digest algorithm available. Unable to calculate checksum and verify data integrity."

    invoke-interface {v2, v4, p1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_13b
    :goto_13b
    move-object p1, v3

    goto :goto_14a

    .line 1651
    :cond_13d
    new-instance p1, Lcom/amazonaws/util/LengthCheckInputStream;

    .line 1652
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k()J

    move-result-wide v4

    invoke-direct {p1, v3, v4, v5, v2}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    .line 1661
    :goto_14a
    new-instance v2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_152
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_134 .. :try_end_152} :catch_153

    return-object v0

    :catch_153
    move-exception p1

    .line 1672
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->g()I

    move-result v0

    const/16 v2, 0x19c

    if-eq v0, v2, :cond_16b

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->g()I

    move-result v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_165

    goto :goto_16b

    :cond_165
    const/16 v0, 0x8

    .line 1678
    invoke-direct {p0, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1680
    throw p1

    :cond_16b
    :goto_16b
    const/16 p1, 0x10

    .line 1673
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationResult;
    .registers 7

    const-string v0, "The request cannot be null"

    .line 5347
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5350
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    .line 5349
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5352
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    move-result-object v1

    const-string v2, "Analytics Configuration"

    .line 5351
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 5353
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Analytics Id"

    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5355
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v4, 0x0

    .line 5356
    invoke-virtual {p0, v0, v4, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v3, "analytics"

    .line 5357
    invoke-interface {p1, v3, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    .line 5358
    invoke-interface {p1, v3, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5360
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 5361
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/xml"

    .line 5362
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5363
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 5365
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketAnalyticsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketAnalyticsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationResult;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationResult;
    .registers 4

    .line 5338
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationResult;
    .registers 7

    const-string v0, "The request cannot be null"

    .line 5444
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5446
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5447
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    move-result-object v1

    const-string v2, "InventoryConfiguration"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 5449
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Inventory id"

    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5451
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v3, "inventory"

    .line 5452
    invoke-interface {p1, v3, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    .line 5453
    invoke-interface {p1, v3, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5455
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 5456
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/xml"

    .line 5457
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5458
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 5460
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketInventoryConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketInventoryConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationResult;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationResult;
    .registers 4

    .line 5436
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationResult;
    .registers 7

    .line 5245
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;-><init>()V

    const-string v0, "The request cannot be null"

    .line 5246
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5247
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5249
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    move-result-object v1

    const-string v2, "Metrics Configuration"

    .line 5248
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 5250
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Metrics Id"

    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5252
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v4, 0x0

    .line 5253
    invoke-virtual {p0, v0, v4, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v3, "metrics"

    .line 5254
    invoke-interface {p1, v3, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    .line 5255
    invoke-interface {p1, v3, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5257
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 5258
    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/xml"

    .line 5259
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5260
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 5262
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketMetricsConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketMetricsConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationResult;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationResult;
    .registers 4

    .line 5237
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;)Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;
    .registers 9

    const-string v0, "The request parameter must be specified setting the object tags"

    .line 5565
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5567
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketName"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5569
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Key"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5570
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->k()Lcom/amazonaws/services/s3/model/ObjectTagging;

    move-result-object v2

    const-string v3, "ObjectTagging"

    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 5573
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    const-string v4, "tagging"

    const/4 v5, 0x0

    .line 5575
    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "versionId"

    .line 5576
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 5577
    new-instance p1, Lcom/amazonaws/services/s3/model/transform/ObjectTaggingXmlFactory;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/transform/ObjectTaggingXmlFactory;-><init>()V

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/transform/ObjectTaggingXmlFactory;->a(Lcom/amazonaws/services/s3/model/ObjectTagging;)[B

    move-result-object p1

    const-string v2, "application/xml"

    const/4 v4, 0x1

    .line 5578
    invoke-direct {p0, v3, p1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;[BLjava/lang/String;Z)V

    .line 5580
    new-instance p1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetObjectTaggingResponseUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$SetObjectTaggingResponseUnmarshaller;-><init>()V

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v5, Lcom/amazonaws/services/s3/internal/SetObjectTaggingResponseHeaderHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/SetObjectTaggingResponseHeaderHandler;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p1, v2, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 5584
    invoke-direct {p0, v3, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .registers 14

    const-string v0, "The request parameter must be specified when uploading a part"

    .line 3798
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3801
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->j()Ljava/lang/String;

    move-result-object v0

    .line 3802
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->l()Ljava/lang/String;

    move-result-object v1

    .line 3803
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->m()Ljava/lang/String;

    move-result-object v2

    .line 3804
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->n()I

    move-result v3

    .line 3805
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p()J

    move-result-wide v8

    const-string v4, "The bucket name parameter must be specified when uploading a part"

    .line 3807
    invoke-static {v0, v4}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The key parameter must be specified when uploading a part"

    .line 3809
    invoke-static {v1, v4}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The upload ID parameter must be specified when uploading a part"

    .line 3811
    invoke-static {v2, v4}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3813
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The part number parameter must be specified when uploading a part"

    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3815
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "The part size parameter must be specified when uploading a part"

    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3818
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v11

    const-string v4, "uploadId"

    .line 3820
    invoke-interface {v11, v4, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "partNumber"

    .line 3821
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->v()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 3825
    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    :cond_57
    const-string v2, "Content-MD5"

    .line 3828
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    .line 3829
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->w()Z

    move-result v2

    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 3837
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3840
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->o()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 3841
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->o()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_9c

    .line 3842
    :cond_82
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_14d

    .line 3844
    :try_start_88
    new-instance v2, Lcom/amazonaws/services/s3/internal/InputSubstream;

    new-instance v5, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 3845
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k()Ljava/io/File;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 3846
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->s()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_9c} :catch_144

    :goto_9c
    const/4 v4, 0x0

    .line 3856
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->r()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_af

    .line 3857
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v5

    if-nez v5, :cond_af

    .line 3864
    new-instance v4, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v4, v2}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 3872
    :cond_af
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d()Lcom/amazonaws/event/ProgressListener;

    move-result-object p1

    .line 3874
    invoke-static {p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object p1

    if-eqz p1, :cond_cc

    .line 3877
    new-instance v5, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v5, v2, p1}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 3878
    move-object v2, v5

    check-cast v2, Lcom/amazonaws/event/ProgressReportingInputStream;

    iget v6, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:I

    invoke-virtual {v2, v6}, Lcom/amazonaws/event/ProgressReportingInputStream;->a(I)V

    const/16 v2, 0x400

    .line 3879
    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v2, v5

    .line 3883
    :cond_cc
    :try_start_cc
    invoke-interface {v11, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3884
    new-instance v5, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v11, v5, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v0, :cond_ff

    if-eqz v4, :cond_ff

    .line 3888
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Z

    move-result v1

    if-nez v1, :cond_ff

    .line 3889
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->a()[B

    move-result-object v1

    .line 3890
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 3892
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_f7

    goto :goto_ff

    .line 3893
    :cond_f7
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ff
    :goto_ff
    const/16 v1, 0x800

    .line 3902
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 3905
    new-instance v1, Lcom/amazonaws/services/s3/model/UploadPartResult;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;-><init>()V

    .line 3906
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/s3/model/UploadPartResult;->a(Ljava/lang/String;)V

    .line 3907
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->a(I)V

    .line 3908
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->c(Ljava/lang/String;)V

    .line 3909
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->d(Ljava/lang/String;)V

    .line 3910
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->e(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->a(Z)V
    :try_end_12f
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_cc .. :try_end_12f} :catch_137
    .catchall {:try_start_cc .. :try_end_12f} :catchall_135

    if-eqz v2, :cond_134

    .line 3927
    :try_start_131
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_134

    :catch_134
    :cond_134
    return-object v1

    :catchall_135
    move-exception p1

    goto :goto_13e

    :catch_137
    move-exception v0

    const/16 v1, 0x1000

    .line 3914
    :try_start_13a
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 3923
    throw v0
    :try_end_13e
    .catchall {:try_start_13a .. :try_end_13e} :catchall_135

    :goto_13e
    if-eqz v2, :cond_143

    .line 3927
    :try_start_140
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_143} :catch_143

    .line 3931
    :catch_143
    :cond_143
    throw p1

    :catch_144
    move-exception p1

    .line 3848
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified file doesn\'t exist"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3851
    :cond_14d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A File or InputStream must be specified when uploading part"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;
    .registers 4

    const-string v0, "The request object parameter must be specified when listing the next batch of versions in a bucket"

    .line 725
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->h()Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->k()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 733
    new-instance p1, Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/VersionListing;-><init>()V

    .line 734
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->a(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->e(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->c(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->d(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->g()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->a(I)V

    .line 739
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/VersionListing;->b(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->a(Z)V

    return-object p1

    .line 746
    :cond_4a
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->i()Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;
    .registers 7

    .line 790
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when listing versions in a bucket"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    .line 799
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 802
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    .line 801
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    const-string v2, "versions"

    .line 803
    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "prefix"

    .line 805
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "delimiter"

    .line 806
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key-marker"

    .line 807
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "version-id-marker"

    .line 809
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->k()Ljava/lang/String;

    move-result-object v4

    .line 808
    invoke-static {v1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "encoding-type"

    .line 811
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->n()Ljava/lang/String;

    move-result-object v4

    .line 810
    invoke-static {v1, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->m()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 814
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->m()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_6d

    const-string v2, "max-keys"

    .line 815
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->m()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_6d
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$VersionListUnmarshaller;

    invoke-direct {v2, v0}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$VersionListUnmarshaller;-><init>(Z)V

    .line 819
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->h()Ljava/lang/String;

    move-result-object p1

    .line 818
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/VersionListing;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/VersionListing;)Lcom/amazonaws/services/s3/model/VersionListing;
    .registers 3

    .line 717
    new-instance v0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;-><init>(Lcom/amazonaws/services/s3/model/VersionListing;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/VersionListing;
    .registers 8

    .line 771
    new-instance v0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>()V

    .line 772
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 773
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 774
    invoke-virtual {p1, p5}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 775
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 776
    invoke-virtual {p1, p4}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 777
    invoke-virtual {p1, p6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->b(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object p1

    .line 778
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;)Ljava/lang/String;
    .registers 5

    const-string v0, "The request parameter must be specified when requesting a bucket\'s location"

    .line 1026
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting a bucket\'s location"

    .line 1029
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "location"

    .line 1034
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;
    .registers 10

    const-string v0, "The request parameter must be specified when generating a pre-signed URL"

    .line 3430
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3433
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->k()Ljava/lang/String;

    move-result-object v4

    .line 3434
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->l()Ljava/lang/String;

    move-result-object v5

    const-string v0, "The bucket name parameter must be specified when generating a pre-signed URL"

    .line 3436
    invoke-static {v4, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3438
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->j()Lcom/amazonaws/HttpMethod;

    move-result-object v0

    const-string v1, "The HTTP method request parameter must be specified when generating a pre-signed URL"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3441
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->n()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_31

    .line 3442
    new-instance v0, Ljava/util/Date;

    .line 3443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v6, 0xdbba0

    add-long/2addr v1, v6

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 3442
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a(Ljava/util/Date;)V

    .line 3446
    :cond_31
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->j()Lcom/amazonaws/HttpMethod;

    move-result-object v0

    .line 3447
    invoke-virtual {v0}, Lcom/amazonaws/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3446
    invoke-static {v0}, Lcom/amazonaws/http/HttpMethodName;->valueOf(Ljava/lang/String;)Lcom/amazonaws/http/HttpMethodName;

    move-result-object v0

    .line 3454
    invoke-virtual {p0, v4, v5, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "versionId"

    .line 3457
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->e(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->u()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 3460
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3463
    :cond_5b
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->o()Ljava/util/Map;

    move-result-object v1

    .line 3464
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 3463
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3465
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 3468
    :cond_83
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_92

    const-string v1, "Content-Type"

    .line 3469
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    :cond_92
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a1

    const-string v1, "Content-MD5"

    .line 3473
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->t()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    :cond_a1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    const-string v1, "x-amz-server-side-encryption"

    .line 3480
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->i()Ljava/lang/String;

    move-result-object v2

    .line 3479
    invoke-static {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 3484
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->h()Ljava/lang/String;

    move-result-object v2

    .line 3482
    invoke-static {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->p()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_e4

    .line 3489
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3490
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    .line 3494
    :cond_e4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->r()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 3496
    invoke-virtual {p0, v0, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v1

    .line 3499
    instance-of v2, v1, Lcom/amazonaws/auth/Presigner;

    if-eqz v2, :cond_103

    .line 3502
    check-cast v1, Lcom/amazonaws/auth/Presigner;

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 3504
    invoke-interface {v2}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    .line 3505
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->n()Ljava/util/Date;

    move-result-object p1

    .line 3502
    invoke-interface {v1, v0, v2, p1}, Lcom/amazonaws/auth/Presigner;->a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;Ljava/util/Date;)V

    goto :goto_111

    .line 3512
    :cond_103
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->j()Lcom/amazonaws/HttpMethod;

    move-result-object v3

    .line 3515
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->n()Ljava/util/Date;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 3510
    invoke-virtual/range {v1 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/HttpMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    :goto_111
    const/4 p1, 0x1

    .line 3520
    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/Request;Z)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/net/URL;
    .registers 5

    .line 3401
    sget-object v0, Lcom/amazonaws/HttpMethod;->GET:Lcom/amazonaws/HttpMethod;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazonaws/HttpMethod;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazonaws/HttpMethod;)Ljava/net/URL;
    .registers 6

    .line 3414
    new-instance v0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    invoke-direct {v0, p1, p2, p4}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V

    .line 3416
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->a(Ljava/util/Date;)V

    .line 3418
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/ListBucketsRequest;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/ListBucketsRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Bucket;",
            ">;"
        }
    .end annotation

    .line 1002
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    .line 1004
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method protected a(Lcom/amazonaws/Request;Lcom/amazonaws/HttpMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TT;>;",
            "Lcom/amazonaws/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4307
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Lcom/amazonaws/Request;)V

    .line 4309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_23

    :cond_21
    const-string p3, ""

    :goto_23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_29

    goto :goto_2b

    :cond_29
    const-string p4, ""

    :goto_2b
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_42

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "?"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_44

    :cond_42
    const-string p3, ""

    :goto_44
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "(?<=/)/"

    const-string p6, "%2F"

    .line 4319
    invoke-virtual {p3, p4, p6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4321
    iget-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {p4}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object p4

    .line 4322
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p6

    if-eqz p6, :cond_69

    .line 4323
    invoke-virtual {p6}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 4324
    invoke-virtual {p6}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object p4

    .line 4327
    :cond_69
    new-instance p6, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;

    invoke-virtual {p2}, Lcom/amazonaws/HttpMethod;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p6, p2, p3, p5}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {p6, p1, p4}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V

    .line 4335
    invoke-interface {p1}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p2

    const-string p3, "x-amz-security-token"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 4336
    invoke-interface {p1}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p2

    const-string p3, "x-amz-security-token"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "x-amz-security-token"

    .line 4337
    invoke-interface {p1, p3, p2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    invoke-interface {p1}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p1

    const-string p2, "x-amz-security-token"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b
    return-void
.end method

.method public a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_4

    .line 5732
    iget-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Ljava/net/URI;

    .line 5733
    :cond_4
    invoke-direct {p0, p4, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/net/URI;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 5734
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using virtual style addressing. Endpoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 5735
    invoke-direct {p0, p4, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 5736
    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    goto :goto_51

    .line 5738
    :cond_2f
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using path style addressing. Endpoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 5739
    invoke-interface {p1, p4}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    if-eqz p2, :cond_51

    .line 5741
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    .line 5744
    :cond_51
    :goto_51
    sget-object p2, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/logging/Log;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; Request: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/amazonaws/regions/Region;)V
    .registers 2

    .line 685
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/regions/Region;)V

    .line 692
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .registers 3

    .line 705
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/S3ClientOptions;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .registers 7

    const-string v0, "The request parameter must be specified when aborting a multipart upload"

    .line 3532
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3534
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3536
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3538
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The upload ID parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3541
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 3542
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->i()Ljava/lang/String;

    move-result-object v1

    .line 3544
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v3, "uploadId"

    .line 3546
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3547
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->k()Z

    move-result p1

    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 3549
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;)V
    .registers 5

    const-string v0, "The delete bucket cross origin configuration request object must be specified."

    .line 2814
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2817
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting bucket cross origin configuration."

    .line 2818
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2821
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "cors"

    .line 2823
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;)V
    .registers 5

    const-string v0, "The delete bucket lifecycle configuration request object must be specified."

    .line 2683
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2686
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting bucket lifecycle configuration."

    .line 2687
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2690
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "lifecycle"

    .line 2692
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;)V
    .registers 5

    const-string v0, "The request object must be specified when deleting a bucket policy"

    .line 3378
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3381
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specified when deleting a bucket policy"

    .line 3382
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3385
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "policy"

    .line 3387
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;)V
    .registers 5

    .line 5173
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting replication configuration"

    .line 5174
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5178
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "replication"

    .line 5181
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5183
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteBucketRequest;)V
    .registers 5

    const-string v0, "The DeleteBucketRequest parameter must be specified when deleting a bucket"

    .line 1740
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1743
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting a bucket"

    .line 1744
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1747
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    .line 1749
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1750
    sget-object p1, Lcom/amazonaws/services/s3/AmazonS3Client;->u:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;)V
    .registers 5

    const-string v0, "The delete bucket tagging configuration request object must be specified."

    .line 2940
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2943
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting bucket tagging configuration."

    .line 2944
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2947
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "tagging"

    .line 2949
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;)V
    .registers 6

    .line 3027
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when deleting a bucket\'s website configuration"

    .line 3029
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3032
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v1, "website"

    .line 3034
    invoke-interface {p1, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/xml"

    .line 3035
    invoke-interface {p1, v1, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V
    .registers 5

    const-string v0, "The delete object request must be specified when deleting an object"

    .line 2326
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2329
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name must be specified when deleting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2331
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key must be specified when deleting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 2335
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->i()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    .line 2334
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2336
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->h()Ljava/lang/String;

    move-result-object v2

    .line 2337
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->i()Ljava/lang/String;

    move-result-object p1

    .line 2336
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/DeleteVersionRequest;)V
    .registers 7

    const-string v0, "The delete version request object must be specified when deleting a version"

    .line 2422
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2425
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 2426
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->i()Ljava/lang/String;

    move-result-object v1

    .line 2427
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket name must be specified when deleting a version"

    .line 2429
    invoke-static {v0, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The key must be specified when deleting a version"

    .line 2431
    invoke-static {v1, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The version ID must be specified when deleting a version"

    .line 2432
    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2435
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    if-eqz v2, :cond_2d

    const-string v4, "versionId"

    .line 2438
    invoke-interface {v3, v4, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    :cond_2d
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->k()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 2442
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->k()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 2445
    :cond_3a
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)V
    .registers 8

    .line 3954
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 3955
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->i()Ljava/lang/String;

    move-result-object v1

    .line 3956
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->j()Ljava/lang/String;

    move-result-object v2

    .line 3957
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->k()I

    move-result v3

    const-string v4, "The bucket name parameter must be specified when copying a glacier object"

    .line 3959
    invoke-static {v0, v4}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The key parameter must be specified when copying a glacier object"

    .line 3961
    invoke-static {v1, v4}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    if-eq v3, v4, :cond_70

    .line 3968
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    const-string v4, "restore"

    const/4 v5, 0x0

    .line 3970
    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_30

    const-string v4, "versionId"

    .line 3972
    invoke-interface {v3, v4, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    :cond_30
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->l()Z

    move-result v2

    invoke-static {v3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 3977
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->a(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)[B

    move-result-object p1

    const-string v2, "Content-Length"

    .line 3978
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 3979
    invoke-interface {v3, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3982
    :try_start_54
    invoke-static {p1}, Lcom/amazonaws/util/Md5Utils;->a([B)[B

    move-result-object p1

    .line 3983
    invoke-static {p1}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Content-MD5"

    .line 3984
    invoke-interface {v3, v2, p1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_61} :catch_67

    .line 3989
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_67
    move-exception p1

    .line 3986
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Couldn\'t compute md5 sum"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3964
    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The expiration in days parameter must be specified when copying a glacier object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;)V
    .registers 7

    const-string v0, "setBucketAccelerateConfigurationRequest must be specified"

    .line 3228
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3231
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 3233
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting accelerate configuration."

    .line 3235
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The bucket accelerate configuration parameter must be specified."

    .line 3237
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3239
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The status parameter must be specified when updating bucket accelerate configuration."

    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3242
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "accelerate"

    .line 3245
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 3248
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3249
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3251
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketAclRequest;)V
    .registers 9

    .line 1334
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->h()Ljava/lang/String;

    move-result-object v1

    .line 1335
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->i()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v4

    .line 1336
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->j()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v5

    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    .line 1337
    invoke-static {v1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 1341
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    goto :goto_2f

    :cond_1c
    if-eqz v5, :cond_29

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v5

    move v5, v6

    move-object v6, p1

    .line 1343
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    goto :goto_2f

    :cond_29
    const/4 p1, 0x0

    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    .line 1345
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;)V
    .registers 7

    const-string v0, "The set bucket cross origin configuration request object must be specified."

    .line 2759
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2762
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 2764
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting bucket cross origin configuration."

    .line 2766
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The cross origin configuration parameter must be specified when setting bucket cross origin configuration."

    .line 2768
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2772
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "cors"

    .line 2774
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    .line 2777
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 2778
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 2779
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 2782
    :try_start_45
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->a([B)[B

    move-result-object v1

    .line 2783
    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-MD5"

    .line 2784
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_52} :catch_58

    .line 2789
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_58
    move-exception p1

    .line 2786
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Couldn\'t compute md5 sum"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;)V
    .registers 7

    const-string v0, "The set bucket lifecycle configuration request object must be specified."

    .line 2629
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2632
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 2634
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting bucket lifecycle configuration."

    .line 2636
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The lifecycle configuration parameter must be specified when setting bucket lifecycle configuration."

    .line 2638
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2642
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "lifecycle"

    .line 2644
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    .line 2647
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 2648
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 2649
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 2652
    :try_start_45
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->a([B)[B

    move-result-object v1

    .line 2653
    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-MD5"

    .line 2654
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_52} :catch_58

    .line 2659
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_58
    move-exception p1

    .line 2656
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Couldn\'t compute md5 sum"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;)V
    .registers 7

    const-string v0, "The set bucket logging configuration request object must be specified when enabling server access logging"

    .line 3164
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3168
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 3170
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when enabling server access logging"

    .line 3172
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The logging configuration parameter must be specified when enabling server access logging"

    .line 3174
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3177
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "logging"

    .line 3179
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 3182
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3185
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;)V
    .registers 7

    const-string v0, "The set bucket notification configuration request object must be specified."

    .line 3067
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3070
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->k()Ljava/lang/String;

    move-result-object v0

    .line 3072
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting bucket notification configuration."

    .line 3074
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The notification configuration parameter must be specified when setting bucket notification configuration."

    .line 3076
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3080
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "notification"

    .line 3082
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 3085
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 3086
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3089
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;)V
    .registers 7

    const-string v0, "The request object must be specified when setting a bucket policy"

    .line 3347
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3350
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 3351
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name must be specified when setting a bucket policy"

    .line 3353
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The policy text must be specified when setting a bucket policy"

    .line 3355
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3358
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "policy"

    .line 3360
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3361
    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 3362
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3363
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3365
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;)V
    .registers 7

    const-string v0, "The set bucket replication configuration request object must be specified."

    .line 5091
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5095
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 5098
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting replication configuration."

    .line 5100
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The replication configuration parameter must be specified when setting replication configuration."

    .line 5103
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5107
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "replication"

    .line 5110
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5112
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 5113
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 5115
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 5116
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5117
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    :try_start_42
    const-string v2, "Content-MD5"

    .line 5121
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 5120
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4f} :catch_55

    .line 5128
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_55
    move-exception p1

    .line 5123
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not able to compute MD5 of the replication rule configuration. Exception Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5125
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;)V
    .registers 7

    const-string v0, "The set bucket tagging configuration request object must be specified."

    .line 2888
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2891
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 2893
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting bucket tagging configuration."

    .line 2895
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The tagging configuration parameter must be specified when setting bucket tagging configuration."

    .line 2897
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2900
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "tagging"

    .line 2902
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    .line 2905
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 2906
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 2907
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 2910
    :try_start_45
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->a([B)[B

    move-result-object v1

    .line 2911
    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-MD5"

    .line 2912
    invoke-interface {p1, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_52} :catch_58

    .line 2917
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_58
    move-exception p1

    .line 2914
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Couldn\'t compute md5 sum"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;)V
    .registers 7

    const-string v0, "The SetBucketVersioningConfigurationRequest object must be specified when setting versioning configuration"

    .line 2458
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2462
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 2464
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting versioning configuration"

    .line 2466
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The bucket versioning parameter must be specified when setting versioning configuration"

    .line 2468
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2470
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->b()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 2472
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->j()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v2

    const-string v3, "The MFA parameter must be specified when changing MFA Delete status in the versioning configuration"

    .line 2471
    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2476
    :cond_26
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v4, "versioning"

    .line 2478
    invoke-interface {v2, v4, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->b()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 2481
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->j()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 2483
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->j()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object p1

    .line 2482
    invoke-direct {p0, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 2487
    :cond_45
    sget-object p1, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)[B

    move-result-object p1

    const-string v1, "Content-Length"

    .line 2488
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v1}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 2491
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;)V
    .registers 7

    .line 2978
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 2980
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->i()Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when setting a bucket\'s website configuration"

    .line 2982
    invoke-static {v0, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "The bucket website configuration parameter must be specified when setting a bucket\'s website configuration"

    .line 2984
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2987
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->c()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v2

    if-nez v2, :cond_21

    .line 2989
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket website configuration parameter must specify the index document suffix when setting a bucket\'s website configuration"

    .line 2988
    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2993
    :cond_21
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object p1

    const-string v2, "website"

    .line 2995
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/xml"

    .line 2996
    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    .line 2999
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3002
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V
    .registers 10

    const-string v0, "The request must not be null."

    .line 1241
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when setting an object\'s ACL"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when setting an object\'s ACL"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->k()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->l()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_2c

    .line 1249
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one of the ACL and CannedACL parameters can be specified, not both."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1253
    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->k()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1254
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->h()Ljava/lang/String;

    move-result-object v2

    .line 1255
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->i()Ljava/lang/String;

    move-result-object v3

    .line 1256
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->j()Ljava/lang/String;

    move-result-object v4

    .line 1257
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->k()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v5

    .line 1258
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->m()Z

    move-result v6

    move-object v1, p0

    move-object v7, p1

    .line 1254
    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    goto :goto_6b

    .line 1261
    :cond_4c
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->l()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 1262
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->h()Ljava/lang/String;

    move-result-object v2

    .line 1263
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->i()Ljava/lang/String;

    move-result-object v3

    .line 1264
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->j()Ljava/lang/String;

    move-result-object v4

    .line 1265
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->l()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v5

    .line 1266
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->m()Z

    move-result v6

    move-object v1, p0

    move-object v7, p1

    .line 1262
    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;ZLcom/amazonaws/AmazonWebServiceRequest;)V

    :goto_6b
    return-void

    .line 1270
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one of the ACL and CannedACL parameters should be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "s3-accelerate.amazonaws.com"

    .line 668
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 672
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/lang/String;)V

    const-string v0, "s3.amazonaws.com"

    .line 677
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 678
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s3"

    invoke-static {p1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Ljava/lang/String;

    :cond_21
    return-void

    .line 669
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 4

    const/4 v0, 0x0

    .line 1307
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 4

    .line 1316
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V
    .registers 4

    .line 3219
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V
    .registers 4

    .line 2746
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V
    .registers 4

    .line 2616
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V
    .registers 4

    .line 3052
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)V
    .registers 4

    .line 5083
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V
    .registers 4

    .line 2875
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V
    .registers 4

    .line 2964
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .registers 4

    const/4 v0, 0x0

    .line 1353
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 4

    .line 1363
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 4002
    new-instance v0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 5

    const/4 v0, 0x0

    .line 1192
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .registers 5

    const/4 v0, 0x0

    .line 1198
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/StorageClass;)V
    .registers 5

    const-string v0, "The bucketName parameter must be specified when changing an object\'s storage class"

    .line 1500
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The key parameter must be specified when changing an object\'s storage class"

    .line 1502
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The newStorageClass parameter must be specified when changing an object\'s storage class"

    .line 1504
    invoke-static {p3, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1507
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p1, p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    move-result-object p1

    .line 1507
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 6

    .line 1204
    new-instance v0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 7

    .line 1214
    new-instance v0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 1215
    invoke-virtual {v0, p5}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->b(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    .line 1214
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .registers 6

    .line 1222
    new-instance v0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 7

    .line 1233
    new-instance v0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 1234
    invoke-virtual {v0, p5}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->b(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;

    .line 1233
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V

    return-void
.end method

.method public a_(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .registers 10

    .line 840
    new-instance v6, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public a_(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "The bucketName parameter must be specified when changing an object\'s storage class"

    .line 1520
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The key parameter must be specified when changing an object\'s storage class"

    .line 1522
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The newStorageClass parameter must be specified when changing an object\'s storage class"

    .line 1524
    invoke-static {p3, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1527
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p1, p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->p(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    move-result-object p1

    .line 1527
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    return-void
.end method

.method public b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/S3ResponseMetadata;
    .registers 3

    .line 3942
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/S3ResponseMetadata;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 5

    .line 1171
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetObjectAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
    .registers 4

    .line 892
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;-><init>()V

    .line 893
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    move-result-object p1

    .line 892
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListObjectsV2Request;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .registers 9

    .line 829
    new-instance v6, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5712
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
    .registers 3

    .line 886
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListObjectsV2Request;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 8

    const-string v0, "Bucket name must be provided"

    .line 5611
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Object key must be provided"

    .line 5612
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "String content must be provided"

    .line 5613
    invoke-static {p3, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5615
    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 5617
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5618
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    const-string v2, "text/plain"

    .line 5619
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f(Ljava/lang/String;)V

    .line 5620
    array-length p3, p3

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(J)V

    .line 5622
    new-instance p3, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/VersionListing;
    .registers 11

    .line 757
    new-instance v7, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object p1

    return-object p1
.end method

.method public c(I)V
    .registers 2

    .line 663
    iput p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:I

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Bucket;
    .registers 4

    .line 1079
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .registers 4

    .line 5627
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3.amazonaws.com"

    .line 5628
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, "us-east-1"

    return-object v0

    .line 5631
    :cond_11
    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 5633
    :try_start_17
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    const/4 v1, 0x1

    .line 5634
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->b(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception v0

    .line 5636
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No valid region has been specified. Unable to return region name"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2410
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteVersionRequest;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    .line 1446
    :try_start_1
    new-instance v1, Lcom/amazonaws/services/s3/model/HeadBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/HeadBucketRequest;)Lcom/amazonaws/services/s3/model/HeadBucketResult;
    :try_end_9
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_1 .. :try_end_9} :catch_a

    return v0

    :catch_a
    move-exception p1

    .line 1451
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->g()I

    move-result v1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_27

    .line 1452
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->g()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_1c

    goto :goto_27

    .line 1455
    :cond_1c
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->g()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_26

    const/4 p1, 0x0

    return p1

    .line 1458
    :cond_26
    throw p1

    :cond_27
    :goto_27
    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 4

    .line 1160
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetObjectAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1047
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Bucket;
    .registers 3

    .line 1057
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 4

    .line 1388
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 9

    const-string v0, "The bucket name parameter must be specified when requesting a bucket\'s ACL"

    .line 1282
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1285
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 4

    .line 1434
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method public g_()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Bucket;",
            ">;"
        }
    .end annotation

    .line 1014
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ListBucketsRequest;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "Bucket name must be provided"

    .line 5530
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Object key must be provided"

    .line 5531
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5533
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    .line 5535
    :try_start_e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_17

    return-object p1

    .line 5537
    :catch_17
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Error streaming content from S3 during download"

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/lang/String;)V
    .registers 3

    .line 1728
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteBucketRequest;)V

    return-void
.end method

.method public h_()Lcom/amazonaws/services/s3/model/Region;
    .registers 3

    .line 4793
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3.amazonaws.com"

    .line 4794
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4795
    sget-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    return-object v0

    .line 4797
    :cond_11
    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4798
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    .line 4799
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/services/s3/model/Region;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;

    move-result-object v0

    return-object v0

    .line 4801
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "S3 client with invalid S3 endpoint configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
    .registers 3

    const-string v0, "The bucket name parameter must be specified when requesting a bucket\'s logging status"

    .line 3133
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3136
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2314
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .registers 3

    .line 2503
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "The bucket name must be specified when setting a bucket policy"

    .line 3272
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The policy text must be specified when setting a bucket policy"

    .line 3274
    invoke-static {p2, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3277
    new-instance v0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "policy"

    .line 3279
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3280
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d(Ljava/lang/String;)[B

    move-result-object p2

    const-string v1, "Content-Length"

    .line 3281
    array-length v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3284
    iget-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v0, p2, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .registers 3

    .line 2576
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1467
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_3
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p1, 0x1

    return p1

    :catch_5
    move-exception p1

    .line 1470
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->g()I

    move-result p2

    const/16 v0, 0x194

    if-ne p2, v0, :cond_10

    const/4 p1, 0x0

    return p1

    .line 1473
    :cond_10
    throw p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationResult;
    .registers 4

    .line 5189
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)V
    .registers 3

    .line 2670
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;)V

    return-void
.end method

.method public m(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .registers 3

    .line 2705
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;
    .registers 4

    .line 5213
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationResult;
    .registers 4

    .line 5285
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;)V
    .registers 3

    .line 2800
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;)V

    return-void
.end method

.method public o(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .registers 3

    .line 2835
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
    .registers 4

    .line 5311
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationResult;
    .registers 4

    .line 5389
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;)V
    .registers 3

    .line 2928
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;)V

    return-void
.end method

.method public q(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .registers 3

    const-string v0, "The bucket name parameter must be specified when querying notification configuration"

    .line 3095
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3097
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;
    .registers 4

    .line 5412
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .registers 3

    .line 2534
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .registers 5

    .line 4786
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "Amazon S3"

    invoke-direct {v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Ljava/lang/String;)V

    .line 4787
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4788
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/Request;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 4764
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public s(Ljava/lang/String;)V
    .registers 3

    .line 3014
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;)V

    return-void
.end method

.method public t(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketPolicy;
    .registers 3

    .line 3261
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;)Lcom/amazonaws/services/s3/model/BucketPolicy;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;)V
    .registers 3

    .line 3295
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 4

    .line 4941
    new-instance v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    sget-object v1, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->Requester:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;-><init>(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;)V

    .line 4944
    new-instance v1, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;

    invoke-direct {v1, p1, v0}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)V

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 4

    .line 4955
    new-instance v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    sget-object v1, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->BucketOwner:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;-><init>(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;)V

    .line 4958
    new-instance v1, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;

    invoke-direct {v1, p1, v0}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)V

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;)V

    return-void
.end method

.method public x(Ljava/lang/String;)Z
    .registers 3

    .line 4970
    new-instance v0, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;)Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    move-result-object p1

    .line 4972
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;->a()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    move-result-object p1

    sget-object v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->Requester:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    if-ne p1, v0, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public y(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .registers 3

    .line 5135
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/String;)V
    .registers 3

    .line 5164
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;)V

    return-void
.end method

###### Class com.amazonaws.services.s3.AmazonS3Client.AnonymousClass1 (com.amazonaws.services.s3.AmazonS3Client$1)
.class final Lcom/amazonaws/services/s3/AmazonS3Client$1;
.super Ljava/util/LinkedHashMap;
.source "AmazonS3Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/AmazonS3Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b9dL


# direct methods
.method constructor <init>(IFZ)V
    .registers 4

    .line 225
    invoke-direct {p0, p1, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client$1;->size()I

    move-result p1

    const/16 v0, 0x12c

    if-le p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

###### Class com.amazonaws.services.s3.AmazonS3Client.AnonymousClass2 (com.amazonaws.services.s3.AmazonS3Client$2)
.class Lcom/amazonaws/services/s3/AmazonS3Client$2;
.super Ljava/lang/Object;
.source "AmazonS3Client.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/model/GetObjectRequest;

.field final synthetic b:Lcom/amazonaws/services/s3/AmazonS3Client;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/s3/AmazonS3Client;Lcom/amazonaws/services/s3/model/GetObjectRequest;)V
    .registers 3

    .line 1700
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client$2;->b:Lcom/amazonaws/services/s3/AmazonS3Client;

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client$2;->a:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/S3Object;
    .registers 3

    .line 1704
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client$2;->b:Lcom/amazonaws/services/s3/AmazonS3Client;

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client$2;->a:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 1709
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client$2;->a:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class com.amazonaws.services.kms.AWSKMSClient (com.amazonaws.services.kms.AWSKMSClient)
.class public Lcom/amazonaws/services/kms/AWSKMSClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AWSKMSClient.java"

# interfaces
.implements Lcom/amazonaws/services/kms/AWSKMS;


# instance fields
.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/transform/JsonErrorUnmarshaller;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/amazonaws/auth/AWSCredentialsProvider;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .registers 3

    .line 240
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 268
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .registers 3

    .line 294
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 325
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .registers 4

    .line 373
    invoke-static {p2}, Lcom/amazonaws/services/kms/AWSKMSClient;->b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 375
    iput-object p1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 377
    invoke-direct {p0}, Lcom/amazonaws/services/kms/AWSKMSClient;->o()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    invoke-static {p2}, Lcom/amazonaws/services/kms/AWSKMSClient;->b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 350
    iput-object p1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 352
    invoke-direct {p0}, Lcom/amazonaws/services/kms/AWSKMSClient;->o()V

    return-void
.end method

.method private a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .registers 7
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
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 3831
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->b:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 3832
    iget v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->f:I

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(I)V

    .line 3834
    invoke-virtual {p3}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 3836
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    .line 3838
    :try_start_13
    iget-object v1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_3f

    .line 3840
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3843
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 3844
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 3845
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 3848
    :cond_2e
    invoke-virtual {p3, v1}, Lcom/amazonaws/http/ExecutionContext;->a(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 3849
    new-instance v0, Lcom/amazonaws/http/JsonErrorResponseHandler;

    iget-object v1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amazonaws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 3851
    iget-object v1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    return-object p1

    :catchall_3f
    move-exception p1

    .line 3840
    sget-object p2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, p2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3841
    throw p1
.end method

.method private static b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;
    .registers 1

    return-object p0
.end method

.method private o()V
    .registers 4

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    .line 382
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/AlreadyExistsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/AlreadyExistsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterInUseExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterInUseExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterInvalidConfigurationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterInvalidConfigurationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotActiveExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotActiveExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotRelatedExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotRelatedExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreHasCMKsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreHasCMKsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreInvalidStateExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreInvalidStateExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreNameInUseExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreNameInUseExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/DependencyTimeoutExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/DependencyTimeoutExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/DisabledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/DisabledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/ExpiredImportTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/ExpiredImportTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/IncorrectKeyMaterialExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/IncorrectKeyMaterialExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/IncorrectTrustAnchorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/IncorrectTrustAnchorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidAliasNameExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidAliasNameExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidArnExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidArnExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidCiphertextExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidCiphertextExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidGrantIdExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidGrantIdExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidGrantTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidGrantTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidImportTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidImportTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidKeyUsageExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidKeyUsageExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidMarkerExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidMarkerExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/KMSInternalExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/KMSInternalExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/KMSInvalidStateExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/KMSInvalidStateExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/KeyUnavailableExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/KeyUnavailableExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/NotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/NotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/TagExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/TagExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/UnsupportedOperationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/UnsupportedOperationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/JsonErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "kms.us-east-1.amazonaws.com"

    .line 416
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Ljava/lang/String;)V

    const-string v0, "kms"

    .line 417
    iput-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/lang/String;

    .line 419
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 420
    iget-object v1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/kms/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 422
    iget-object v1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/kms/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/kms/model/CancelKeyDeletionRequest;)Lcom/amazonaws/services/kms/model/CancelKeyDeletionResult;
    .registers 9

    .line 473
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 475
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 479
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 481
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/CancelKeyDeletionRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/CancelKeyDeletionRequestMarshaller;-><init>()V

    .line 482
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/CancelKeyDeletionRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/CancelKeyDeletionRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 484
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 486
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 488
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/CancelKeyDeletionResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/CancelKeyDeletionResultJsonUnmarshaller;-><init>()V

    .line 489
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 492
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 494
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/CancelKeyDeletionResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 496
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 497
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 486
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 487
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 496
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 497
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 498
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ConnectCustomKeyStoreRequest;)Lcom/amazonaws/services/kms/model/ConnectCustomKeyStoreResult;
    .registers 9

    .line 580
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 582
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 586
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 588
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ConnectCustomKeyStoreRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ConnectCustomKeyStoreRequestMarshaller;-><init>()V

    .line 589
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/ConnectCustomKeyStoreRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/ConnectCustomKeyStoreRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 591
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 593
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 595
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ConnectCustomKeyStoreResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ConnectCustomKeyStoreResultJsonUnmarshaller;-><init>()V

    .line 596
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 599
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 601
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/ConnectCustomKeyStoreResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 603
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 604
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 593
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 594
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 603
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 604
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 605
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;)Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreResult;
    .registers 9

    .line 832
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 833
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 834
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 838
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 840
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreRequestMarshaller;-><init>()V

    .line 841
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 843
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 845
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 847
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;-><init>()V

    .line 848
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 851
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 853
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 855
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 856
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 845
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 846
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 855
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 856
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 857
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/CreateGrantRequest;)Lcom/amazonaws/services/kms/model/CreateGrantResult;
    .registers 9

    .line 902
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 904
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 908
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 910
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/CreateGrantRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/CreateGrantRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/CreateGrantRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/CreateGrantRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 912
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 914
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 916
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/CreateGrantResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/CreateGrantResultJsonUnmarshaller;-><init>()V

    .line 917
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 920
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 922
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/CreateGrantResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 924
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 925
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 914
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 915
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 924
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 925
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 926
    throw v0
.end method

.method public a()Lcom/amazonaws/services/kms/model/CreateKeyResult;
    .registers 2

    .line 3640
    new-instance v0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;-><init>()V

    .line 3641
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/CreateKeyRequest;)Lcom/amazonaws/services/kms/model/CreateKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/CreateKeyRequest;)Lcom/amazonaws/services/kms/model/CreateKeyResult;
    .registers 9

    .line 996
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 997
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 998
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1002
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1004
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/CreateKeyRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/CreateKeyRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/CreateKeyRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/CreateKeyRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1006
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1008
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1010
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;-><init>()V

    .line 1011
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1014
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1016
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/CreateKeyResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1018
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1019
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 1008
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1009
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1018
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1019
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1020
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/DecryptRequest;)Lcom/amazonaws/services/kms/model/DecryptResult;
    .registers 9

    .line 1085
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1086
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1087
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1091
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1093
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DecryptRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DecryptRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/DecryptRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/DecryptRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1095
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1097
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1099
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DecryptResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DecryptResultJsonUnmarshaller;-><init>()V

    .line 1100
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1103
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1105
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/DecryptResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1107
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1108
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 1097
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1098
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1107
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1108
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1109
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreRequest;)Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreResult;
    .registers 9

    .line 1231
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1232
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1233
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1237
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1239
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreRequestMarshaller;-><init>()V

    .line 1240
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1242
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1244
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1246
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;-><init>()V

    .line 1247
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1250
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1252
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1254
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1255
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 1244
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1245
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1254
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1255
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1256
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;)Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;
    .registers 9

    .line 1389
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1390
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1391
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1395
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1397
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresRequestMarshaller;-><init>()V

    .line 1398
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1400
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1402
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1404
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;-><init>()V

    .line 1405
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1408
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1410
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1412
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1413
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 1402
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1403
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1412
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1413
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1414
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/DescribeKeyRequest;)Lcom/amazonaws/services/kms/model/DescribeKeyResult;
    .registers 9

    .line 1452
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1453
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1454
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1458
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1460
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DescribeKeyRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DescribeKeyRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/DescribeKeyRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/DescribeKeyRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1462
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1464
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1466
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DescribeKeyResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DescribeKeyResultJsonUnmarshaller;-><init>()V

    .line 1467
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1470
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1472
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/DescribeKeyResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1474
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1475
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 1464
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1465
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1474
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1475
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1476
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreRequest;)Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;
    .registers 9

    .line 1647
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1648
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1649
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1653
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1655
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreRequestMarshaller;-><init>()V

    .line 1656
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1658
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1660
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1662
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;-><init>()V

    .line 1663
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1666
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1668
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1670
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1671
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 1660
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1661
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1670
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1671
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1672
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/EncryptRequest;)Lcom/amazonaws/services/kms/model/EncryptResult;
    .registers 9

    .line 1859
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1860
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1861
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1865
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1867
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/EncryptRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/EncryptRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/EncryptRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/EncryptRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1869
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1871
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1873
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/EncryptResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/EncryptResultJsonUnmarshaller;-><init>()V

    .line 1874
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1877
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1879
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/EncryptResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1881
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1882
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 1871
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1872
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 1881
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1882
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1883
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;)Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;
    .registers 9

    .line 1995
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1996
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1997
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2001
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2003
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2005
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2007
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2009
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyResultJsonUnmarshaller;-><init>()V

    .line 2010
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2013
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2015
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2017
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2018
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2007
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2008
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2017
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2018
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2019
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextResult;
    .registers 9

    .line 2078
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2079
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2080
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2084
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2086
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextRequestMarshaller;-><init>()V

    .line 2087
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2089
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2091
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2093
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;-><init>()V

    .line 2094
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2097
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2099
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2101
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2102
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2091
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2092
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2101
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2102
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2103
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/GenerateRandomRequest;)Lcom/amazonaws/services/kms/model/GenerateRandomResult;
    .registers 9

    .line 2141
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2142
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2143
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2147
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2149
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GenerateRandomRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GenerateRandomRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/GenerateRandomRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/GenerateRandomRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2151
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2153
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2155
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GenerateRandomResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GenerateRandomResultJsonUnmarshaller;-><init>()V

    .line 2156
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2159
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2161
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/GenerateRandomResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2163
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2164
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2153
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2154
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2163
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2164
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2165
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/GetKeyPolicyRequest;)Lcom/amazonaws/services/kms/model/GetKeyPolicyResult;
    .registers 9

    .line 2192
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2193
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2194
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2198
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2200
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GetKeyPolicyRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GetKeyPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/GetKeyPolicyRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/GetKeyPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2202
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2204
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2206
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GetKeyPolicyResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GetKeyPolicyResultJsonUnmarshaller;-><init>()V

    .line 2207
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2210
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2212
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/GetKeyPolicyResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2214
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2215
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2204
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2205
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2214
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2215
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2216
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;)Lcom/amazonaws/services/kms/model/GetKeyRotationStatusResult;
    .registers 9

    .line 2275
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2276
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2277
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2281
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2283
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GetKeyRotationStatusRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GetKeyRotationStatusRequestMarshaller;-><init>()V

    .line 2284
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/GetKeyRotationStatusRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2286
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2288
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2290
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GetKeyRotationStatusResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GetKeyRotationStatusResultJsonUnmarshaller;-><init>()V

    .line 2291
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2294
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2296
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/GetKeyRotationStatusResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2298
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2299
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2288
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2289
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2298
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2299
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2300
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .registers 9

    .line 2358
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2359
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2360
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2364
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2366
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GetParametersForImportRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GetParametersForImportRequestMarshaller;-><init>()V

    .line 2367
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/GetParametersForImportRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2369
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2371
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2373
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GetParametersForImportResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GetParametersForImportResultJsonUnmarshaller;-><init>()V

    .line 2374
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2377
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2379
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2381
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2382
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2371
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2372
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2381
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2382
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2383
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialResult;
    .registers 9

    .line 2479
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2480
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2481
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2485
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2487
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ImportKeyMaterialRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ImportKeyMaterialRequestMarshaller;-><init>()V

    .line 2488
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/ImportKeyMaterialRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2490
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2492
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2494
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ImportKeyMaterialResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ImportKeyMaterialResultJsonUnmarshaller;-><init>()V

    .line 2495
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2498
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2500
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/ImportKeyMaterialResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2502
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2503
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2492
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2493
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2502
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2503
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2504
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ListAliasesRequest;)Lcom/amazonaws/services/kms/model/ListAliasesResult;
    .registers 9

    .line 2547
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2548
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2549
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2553
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2555
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListAliasesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListAliasesRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/ListAliasesRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/ListAliasesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2557
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2559
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2561
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListAliasesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListAliasesResultJsonUnmarshaller;-><init>()V

    .line 2562
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2565
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2567
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/ListAliasesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2569
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2570
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2559
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2560
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2569
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2570
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2571
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ListGrantsRequest;)Lcom/amazonaws/services/kms/model/ListGrantsResult;
    .registers 9

    .line 2602
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2603
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2604
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2608
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2610
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListGrantsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListGrantsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/ListGrantsRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/ListGrantsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2612
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2614
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2616
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListGrantsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListGrantsResultJsonUnmarshaller;-><init>()V

    .line 2617
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2620
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2622
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/ListGrantsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2624
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2625
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2614
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2615
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2624
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2625
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2626
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;)Lcom/amazonaws/services/kms/model/ListKeyPoliciesResult;
    .registers 9

    .line 2656
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2657
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2658
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2662
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2664
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListKeyPoliciesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListKeyPoliciesRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/ListKeyPoliciesRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2666
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2668
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2670
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListKeyPoliciesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListKeyPoliciesResultJsonUnmarshaller;-><init>()V

    .line 2671
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2674
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2676
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/ListKeyPoliciesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2678
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2679
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2668
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2669
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2678
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2679
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2680
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ListKeysRequest;)Lcom/amazonaws/services/kms/model/ListKeysResult;
    .registers 9

    .line 2705
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2706
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2707
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2711
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2713
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListKeysRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListKeysRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/ListKeysRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/ListKeysRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2715
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2717
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2719
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListKeysResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListKeysResultJsonUnmarshaller;-><init>()V

    .line 2720
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2723
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2725
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/ListKeysResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2727
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2728
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2717
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2718
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2727
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2728
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2729
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ListResourceTagsRequest;)Lcom/amazonaws/services/kms/model/ListResourceTagsResult;
    .registers 9

    .line 2757
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2758
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2759
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2763
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2765
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListResourceTagsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListResourceTagsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/ListResourceTagsRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/ListResourceTagsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2767
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2769
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2771
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListResourceTagsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListResourceTagsResultJsonUnmarshaller;-><init>()V

    .line 2772
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2775
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2777
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/ListResourceTagsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2779
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2780
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2769
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2770
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2779
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2780
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2781
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;)Lcom/amazonaws/services/kms/model/ListRetirableGrantsResult;
    .registers 9

    .line 2814
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2815
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2816
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2820
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2822
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListRetirableGrantsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListRetirableGrantsRequestMarshaller;-><init>()V

    .line 2823
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/ListRetirableGrantsRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2825
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2827
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2829
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ListRetirableGrantsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ListRetirableGrantsResultJsonUnmarshaller;-><init>()V

    .line 2830
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2833
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2835
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/ListRetirableGrantsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2837
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2838
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2827
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2828
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2837
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2838
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2839
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ReEncryptRequest;)Lcom/amazonaws/services/kms/model/ReEncryptResult;
    .registers 9

    .line 2947
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2948
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2949
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2953
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2955
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ReEncryptRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ReEncryptRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/ReEncryptRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/ReEncryptRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2957
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2959
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2961
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ReEncryptResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ReEncryptResultJsonUnmarshaller;-><init>()V

    .line 2962
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2965
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2967
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/ReEncryptResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2969
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2970
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 2959
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2960
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 2969
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2970
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2971
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;)Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionResult;
    .registers 9

    .line 3162
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3163
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3164
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3168
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3170
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionRequestMarshaller;-><init>()V

    .line 3171
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3173
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3175
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3177
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/ScheduleKeyDeletionResultJsonUnmarshaller;-><init>()V

    .line 3178
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3181
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3183
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3185
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3186
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 3175
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3176
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 3185
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3186
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3187
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;)Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreResult;
    .registers 9

    .line 3491
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3492
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3493
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3497
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3499
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/UpdateCustomKeyStoreRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/UpdateCustomKeyStoreRequestMarshaller;-><init>()V

    .line 3500
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/UpdateCustomKeyStoreRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3502
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3504
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3506
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/UpdateCustomKeyStoreResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/UpdateCustomKeyStoreResultJsonUnmarshaller;-><init>()V

    .line 3507
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3510
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3512
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3514
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3515
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-object v3

    :catchall_42
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_56

    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object p1, v3

    .line 3504
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3505
    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_56

    :catchall_53
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .line 3514
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3515
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3516
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/CreateAliasRequest;)V
    .registers 7

    .line 667
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 669
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 673
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 675
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/CreateAliasRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/CreateAliasRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/CreateAliasRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/CreateAliasRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 677
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 679
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 681
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 682
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 684
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 685
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 679
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 680
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 684
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 685
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 686
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/DeleteAliasRequest;)V
    .registers 7

    .line 1145
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1146
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1147
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1151
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 1153
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DeleteAliasRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DeleteAliasRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/DeleteAliasRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/DeleteAliasRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 1155
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 1157
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1159
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1160
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 1162
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1163
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 1157
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1158
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 1162
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1163
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1164
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/DeleteImportedKeyMaterialRequest;)V
    .registers 7

    .line 1304
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1305
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1306
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1310
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 1312
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DeleteImportedKeyMaterialRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DeleteImportedKeyMaterialRequestMarshaller;-><init>()V

    .line 1313
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/DeleteImportedKeyMaterialRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/DeleteImportedKeyMaterialRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 1315
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 1317
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1319
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1320
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 1322
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1323
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 1317
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1318
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 1322
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1323
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1324
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/DisableKeyRequest;)V
    .registers 7

    .line 1516
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1517
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1518
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1522
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 1524
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DisableKeyRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DisableKeyRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/DisableKeyRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/DisableKeyRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 1526
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 1528
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1530
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1531
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 1533
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1534
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 1528
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1529
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 1533
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1534
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1535
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/DisableKeyRotationRequest;)V
    .registers 7

    .line 1572
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1573
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1574
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1578
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 1580
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DisableKeyRotationRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DisableKeyRotationRequestMarshaller;-><init>()V

    .line 1581
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/DisableKeyRotationRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/DisableKeyRotationRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 1583
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 1585
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1587
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1588
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 1590
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1591
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 1585
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1586
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 1590
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1591
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1592
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/EnableKeyRequest;)V
    .registers 7

    .line 1706
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1707
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1708
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1712
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 1714
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/EnableKeyRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/EnableKeyRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/EnableKeyRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/EnableKeyRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 1716
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 1718
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1720
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1721
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 1723
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1724
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 1718
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1719
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 1723
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1724
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1725
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/EnableKeyRotationRequest;)V
    .registers 7

    .line 1768
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1769
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1770
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1774
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 1776
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/EnableKeyRotationRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/EnableKeyRotationRequestMarshaller;-><init>()V

    .line 1777
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/EnableKeyRotationRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/EnableKeyRotationRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 1779
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 1781
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1783
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1784
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 1786
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1787
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 1781
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1782
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 1786
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1787
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1788
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/PutKeyPolicyRequest;)V
    .registers 7

    .line 2873
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2874
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2875
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2879
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 2881
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/PutKeyPolicyRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/PutKeyPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/PutKeyPolicyRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/PutKeyPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 2883
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 2885
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2887
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2888
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 2890
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2891
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 2885
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2886
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 2890
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2891
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2892
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/RetireGrantRequest;)V
    .registers 7

    .line 3025
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3026
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3027
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3031
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 3033
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/RetireGrantRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/RetireGrantRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/RetireGrantRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/RetireGrantRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 3035
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 3037
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3039
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3040
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 3042
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3043
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 3037
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3038
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 3042
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3043
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3044
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/RevokeGrantRequest;)V
    .registers 7

    .line 3074
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3075
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3076
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3080
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 3082
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/RevokeGrantRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/RevokeGrantRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/RevokeGrantRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/RevokeGrantRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 3084
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 3086
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3088
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3089
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 3091
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3092
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 3086
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3087
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 3091
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3092
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3093
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/TagResourceRequest;)V
    .registers 7

    .line 3235
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3236
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3237
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3241
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 3243
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/TagResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/TagResourceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/TagResourceRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/TagResourceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 3245
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 3247
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3249
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3250
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 3252
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3253
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 3247
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3248
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 3252
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3253
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3254
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/UntagResourceRequest;)V
    .registers 7

    .line 3290
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3291
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3292
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3296
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 3298
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/UntagResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/UntagResourceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/UntagResourceRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/UntagResourceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 3300
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 3302
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3304
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3305
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 3307
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3308
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 3302
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3303
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 3307
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3308
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3309
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/UpdateAliasRequest;)V
    .registers 7

    .line 3363
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3364
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3365
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3369
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 3371
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/UpdateAliasRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/UpdateAliasRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/UpdateAliasRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/UpdateAliasRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 3373
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 3375
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3377
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3378
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 3380
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3381
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 3375
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3376
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 3380
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3381
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3382
    throw v0
.end method

.method public a(Lcom/amazonaws/services/kms/model/UpdateKeyDescriptionRequest;)V
    .registers 7

    .line 3551
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3552
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3553
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3557
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 3559
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/UpdateKeyDescriptionRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/UpdateKeyDescriptionRequestMarshaller;-><init>()V

    .line 3560
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/UpdateKeyDescriptionRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/UpdateKeyDescriptionRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 3562
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 3564
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3566
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3567
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 3569
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3570
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 3564
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3565
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 3569
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3570
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3571
    throw v0
.end method

.method public b_()Lcom/amazonaws/services/kms/model/ListKeysResult;
    .registers 2

    .line 3665
    new-instance v0, Lcom/amazonaws/services/kms/model/ListKeysRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/ListKeysRequest;-><init>()V

    .line 3666
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/ListKeysRequest;)Lcom/amazonaws/services/kms/model/ListKeysResult;

    move-result-object v0

    return-object v0
.end method

.method public c_(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3825
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

.method public c_()Lcom/amazonaws/services/kms/model/ListAliasesResult;
    .registers 2

    .line 3708
    new-instance v0, Lcom/amazonaws/services/kms/model/ListAliasesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/ListAliasesRequest;-><init>()V

    .line 3709
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/ListAliasesRequest;)Lcom/amazonaws/services/kms/model/ListAliasesResult;

    move-result-object v0

    return-object v0
.end method

.method public d_()V
    .registers 2

    .line 3762
    new-instance v0, Lcom/amazonaws/services/kms/model/RetireGrantRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/RetireGrantRequest;-><init>()V

    .line 3763
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/RetireGrantRequest;)V

    return-void
.end method

.method public e_()Lcom/amazonaws/services/kms/model/GenerateRandomResult;
    .registers 2

    .line 3800
    new-instance v0, Lcom/amazonaws/services/kms/model/GenerateRandomRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/GenerateRandomRequest;-><init>()V

    .line 3801
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/GenerateRandomRequest;)Lcom/amazonaws/services/kms/model/GenerateRandomResult;

    move-result-object v0

    return-object v0
.end method

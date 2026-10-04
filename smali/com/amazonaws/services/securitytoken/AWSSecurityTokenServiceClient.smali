###### Class com.amazonaws.services.securitytoken.AWSSecurityTokenServiceClient (com.amazonaws.services.securitytoken.AWSSecurityTokenServiceClient)
.class public Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AWSSecurityTokenServiceClient.java"

# interfaces
.implements Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;


# instance fields
.field protected final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lorg/w3c/dom/Node;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Lcom/amazonaws/auth/AWSCredentialsProvider;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .registers 3

    .line 189
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 219
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .registers 3

    .line 246
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 277
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .registers 4

    .line 325
    invoke-static {p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 120
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 329
    invoke-direct {p0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->o()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    invoke-static {p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 120
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    .line 302
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 304
    invoke-direct {p0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->o()V

    return-void
.end method

.method private a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
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
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TX;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->b:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 1172
    iget v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->f:I

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(I)V

    .line 1173
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    .line 1175
    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 1176
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1177
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 1180
    :cond_1e
    invoke-virtual {p3, v1}, Lcom/amazonaws/http/ExecutionContext;->a(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 1182
    new-instance v0, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1183
    new-instance p2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    invoke-direct {p2, v1}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 1185
    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    return-object p1
.end method

.method private static b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;
    .registers 1

    return-object p0
.end method

.method private o()V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/IDPCommunicationErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/IDPCommunicationErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/IDPRejectedClaimExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/IDPRejectedClaimExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/InvalidIdentityTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/InvalidIdentityTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/PackedPolicyTooLargeExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/PackedPolicyTooLargeExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/transform/RegionDisabledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/transform/RegionDisabledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "sts.amazonaws.com"

    .line 343
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Ljava/lang/String;)V

    const-string v0, "sts"

    .line 344
    iput-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->g:Ljava/lang/String;

    .line 346
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/securitytoken/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    iget-object v1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/securitytoken/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    .registers 7

    .line 512
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 514
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 518
    :try_start_e
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;->a(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_39

    .line 520
    :try_start_17
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 521
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_37

    .line 522
    :try_start_23
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_32

    .line 524
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 525
    invoke-virtual {p0, v1, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object v2

    :catchall_32
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_3c

    :catchall_37
    move-exception v0

    goto :goto_3c

    :catchall_39
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    .line 524
    :goto_3c
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 525
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 526
    throw v0
.end method

.method public a(Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    .registers 7

    .line 704
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 706
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 710
    :try_start_e
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;-><init>()V

    .line 711
    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;->a(Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_39

    .line 713
    :try_start_17
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 714
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_37

    .line 716
    :try_start_23
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_32

    .line 718
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 719
    invoke-virtual {p0, v1, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object v2

    :catchall_32
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_3c

    :catchall_37
    move-exception v0

    goto :goto_3c

    :catchall_39
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    .line 718
    :goto_3c
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 719
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 720
    throw v0
.end method

.method public a(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    .registers 7

    .line 743
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 745
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 749
    :try_start_e
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;->a(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_39

    .line 751
    :try_start_17
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 752
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_37

    .line 754
    :try_start_23
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_32

    .line 756
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 757
    invoke-virtual {p0, v1, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object v2

    :catchall_32
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_3c

    :catchall_37
    move-exception v0

    goto :goto_3c

    :catchall_39
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    .line 756
    :goto_3c
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 757
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 758
    throw v0
.end method

.method public a(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .registers 7

    .line 903
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 904
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 905
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 909
    :try_start_e
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;->a(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_39

    .line 911
    :try_start_17
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 912
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetFederationTokenResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_37

    .line 914
    :try_start_23
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_32

    .line 916
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 917
    invoke-virtual {p0, v1, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object v2

    :catchall_32
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_3c

    :catchall_37
    move-exception v0

    goto :goto_3c

    :catchall_39
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    .line 916
    :goto_3c
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 917
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 918
    throw v0
.end method

.method public a()Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    .registers 2

    .line 1118
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;-><init>()V

    .line 1119
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    .registers 7

    .line 1011
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1013
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1017
    :try_start_e
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;->a(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_39

    .line 1019
    :try_start_17
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 1020
    new-instance v3, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_37

    .line 1022
    :try_start_23
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_32

    .line 1024
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1025
    invoke-virtual {p0, v1, p1, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object v2

    :catchall_32
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_3c

    :catchall_37
    move-exception v0

    goto :goto_3c

    :catchall_39
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    .line 1024
    :goto_3c
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1025
    invoke-virtual {p0, v1, p1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 1026
    throw v0
.end method

.method public b()Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    .registers 2

    .line 1140
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;-><init>()V

    .line 1141
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->a(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;

    move-result-object v0

    return-object v0
.end method

.method public e_(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1165
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

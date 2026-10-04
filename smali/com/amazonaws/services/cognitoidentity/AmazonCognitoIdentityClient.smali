###### Class com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient (com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient)
.class public Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonCognitoIdentityClient.java"

# interfaces
.implements Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;


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

    .line 94
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .registers 3

    .line 143
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 173
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .registers 3

    .line 200
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 231
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .registers 4

    .line 279
    invoke-static {p2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 281
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 283
    invoke-direct {p0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->o()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    invoke-static {p2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 256
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 258
    invoke-direct {p0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->o()V

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

    .line 1638
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->b:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 1639
    iget v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->f:I

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(I)V

    .line 1641
    invoke-virtual {p3}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 1643
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    .line 1645
    :try_start_13
    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_3f

    .line 1647
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1650
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1651
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 1652
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 1655
    :cond_2e
    invoke-virtual {p3, v1}, Lcom/amazonaws/http/ExecutionContext;->a(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 1656
    new-instance v0, Lcom/amazonaws/http/JsonErrorResponseHandler;

    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amazonaws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 1658
    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    return-object p1

    :catchall_3f
    move-exception p1

    .line 1647
    sget-object p2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, p2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1648
    throw p1
.end method

.method private static b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;
    .registers 1

    return-object p0
.end method

.method private o()V
    .registers 4

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    .line 288
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/ConcurrentModificationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ConcurrentModificationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/DeveloperUserAlreadyRegisteredExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/DeveloperUserAlreadyRegisteredExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/ExternalServiceExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ExternalServiceExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/InternalErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/InternalErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/InvalidIdentityPoolConfigurationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/InvalidIdentityPoolConfigurationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/InvalidParameterExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/InvalidParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/NotAuthorizedExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/NotAuthorizedExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/ResourceConflictExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ResourceConflictExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/TooManyRequestsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/TooManyRequestsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/JsonErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "cognito-identity.us-east-1.amazonaws.com"

    .line 302
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Ljava/lang/String;)V

    const-string v0, "cognito-identity"

    .line 303
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->g:Ljava/lang/String;

    .line 305
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/cognitoidentity/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/cognitoidentity/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolResult;
    .registers 9

    .line 378
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 380
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 384
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 386
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/CreateIdentityPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/CreateIdentityPoolRequestMarshaller;-><init>()V

    .line 387
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/CreateIdentityPoolRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 389
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 391
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 393
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/CreateIdentityPoolResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/CreateIdentityPoolResultJsonUnmarshaller;-><init>()V

    .line 394
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 397
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 399
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 401
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 402
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 391
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 392
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

    .line 401
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 402
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 403
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/DeleteIdentitiesRequest;)Lcom/amazonaws/services/cognitoidentity/model/DeleteIdentitiesResult;
    .registers 9

    .line 433
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 435
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 439
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 441
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/DeleteIdentitiesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/DeleteIdentitiesRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/DeleteIdentitiesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/DeleteIdentitiesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 443
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 445
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 447
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;-><init>()V

    .line 448
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 451
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 453
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/DeleteIdentitiesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 455
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 456
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 445
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 446
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

    .line 455
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 456
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 457
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolRequest;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .registers 9

    .line 597
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 599
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 603
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 605
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolRequestMarshaller;-><init>()V

    .line 606
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 608
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 610
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 612
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;-><init>()V

    .line 613
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 616
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 618
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 620
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 621
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 610
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 611
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

    .line 620
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 621
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 622
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;
    .registers 9

    .line 539
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 541
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 545
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 547
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 549
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 551
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 553
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityResultJsonUnmarshaller;-><init>()V

    .line 554
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 557
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 559
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 561
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 562
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 551
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 552
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

    .line 561
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 562
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 563
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .registers 9

    .line 661
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 663
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 667
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 669
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;-><init>()V

    .line 670
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 672
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 674
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 676
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;-><init>()V

    .line 677
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 680
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 682
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 684
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 685
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 674
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 675
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

    .line 684
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 685
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 686
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;
    .registers 9

    .line 721
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 723
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 727
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 729
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 731
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 733
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 735
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;-><init>()V

    .line 736
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 739
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 741
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 743
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 744
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 733
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 734
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

    .line 743
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 744
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 745
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .registers 9

    .line 779
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 781
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 785
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 787
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesRequestMarshaller;-><init>()V

    .line 788
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 790
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 792
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 794
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;-><init>()V

    .line 795
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 798
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 800
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 802
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 803
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 792
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 793
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

    .line 802
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 803
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 804
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;
    .registers 9

    .line 918
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 919
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 920
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 924
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 926
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityRequestMarshaller;-><init>()V

    .line 927
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 929
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 931
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 933
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;-><init>()V

    .line 934
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 937
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 939
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 941
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 942
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 931
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 932
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

    .line 941
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 942
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 943
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;
    .registers 9

    .line 842
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 844
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 848
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 850
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 852
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 854
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 856
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenResultJsonUnmarshaller;-><init>()V

    .line 857
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 860
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 862
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 864
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 865
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 854
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 855
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

    .line 864
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 865
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 866
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/ListIdentitiesRequest;)Lcom/amazonaws/services/cognitoidentity/model/ListIdentitiesResult;
    .registers 9

    .line 974
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 976
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 980
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 982
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/ListIdentitiesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/ListIdentitiesRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ListIdentitiesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/ListIdentitiesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 984
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 986
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 988
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/ListIdentitiesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/ListIdentitiesResultJsonUnmarshaller;-><init>()V

    .line 989
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 992
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 994
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/ListIdentitiesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 996
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 997
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 986
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 987
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

    .line 996
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 997
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 998
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/ListIdentityPoolsRequest;)Lcom/amazonaws/services/cognitoidentity/model/ListIdentityPoolsResult;
    .registers 9

    .line 1030
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1032
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1036
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1038
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/ListIdentityPoolsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/ListIdentityPoolsRequestMarshaller;-><init>()V

    .line 1039
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ListIdentityPoolsRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/ListIdentityPoolsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1041
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1043
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1045
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/ListIdentityPoolsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/ListIdentityPoolsResultJsonUnmarshaller;-><init>()V

    .line 1046
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1049
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1051
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/ListIdentityPoolsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1053
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1054
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1043
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1044
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

    .line 1053
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1054
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1055
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;)Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;
    .registers 9

    .line 1091
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1093
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1097
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1099
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/ListTagsForResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/ListTagsForResourceRequestMarshaller;-><init>()V

    .line 1100
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ListTagsForResourceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1102
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1104
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1106
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/ListTagsForResourceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/ListTagsForResourceResultJsonUnmarshaller;-><init>()V

    .line 1107
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1110
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1112
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1114
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1115
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1104
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1105
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

    .line 1114
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1115
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1116
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
    .registers 9

    .line 1168
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1169
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1170
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1174
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1176
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityRequestMarshaller;-><init>()V

    .line 1177
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1179
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1181
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1183
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;-><init>()V

    .line 1184
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1187
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1189
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1191
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1192
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1181
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1182
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

    .line 1191
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1192
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1193
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesRequest;)Lcom/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;
    .registers 9

    .line 1241
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1243
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1247
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1249
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesRequestMarshaller;-><init>()V

    .line 1250
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1252
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1254
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1256
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;-><init>()V

    .line 1257
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1260
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1262
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1264
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1265
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1254
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1255
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

    .line 1264
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1265
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1266
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/TagResourceRequest;)Lcom/amazonaws/services/cognitoidentity/model/TagResourceResult;
    .registers 9

    .line 1366
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1368
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1372
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1374
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/TagResourceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1376
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1378
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1380
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;-><init>()V

    .line 1381
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1384
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1386
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/TagResourceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1388
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1389
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1378
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1379
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

    .line 1388
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1389
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1390
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/UntagResourceRequest;)Lcom/amazonaws/services/cognitoidentity/model/UntagResourceResult;
    .registers 9

    .line 1524
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1525
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1526
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1530
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1532
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/UntagResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/UntagResourceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/UntagResourceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/UntagResourceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1534
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1536
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1538
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/UntagResourceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/UntagResourceResultJsonUnmarshaller;-><init>()V

    .line 1539
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1542
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1544
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/UntagResourceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1546
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1547
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1536
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1537
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

    .line 1546
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1547
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1548
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 9

    .line 1583
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1584
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1585
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1589
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1591
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/UpdateIdentityPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/UpdateIdentityPoolRequestMarshaller;-><init>()V

    .line 1592
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/UpdateIdentityPoolRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1594
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1596
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1598
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/UpdateIdentityPoolResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/UpdateIdentityPoolResultJsonUnmarshaller;-><init>()V

    .line 1599
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1602
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1604
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1606
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1607
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1596
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1597
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

    .line 1606
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1607
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1608
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/DeleteIdentityPoolRequest;)V
    .registers 7

    .line 487
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 489
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 493
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 495
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/DeleteIdentityPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/DeleteIdentityPoolRequestMarshaller;-><init>()V

    .line 496
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/DeleteIdentityPoolRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/DeleteIdentityPoolRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 498
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 500
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 502
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 503
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 505
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 506
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 500
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 501
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 505
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 506
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 507
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;)V
    .registers 7

    .line 1298
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1300
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1304
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 1306
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/SetIdentityPoolRolesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/SetIdentityPoolRolesRequestMarshaller;-><init>()V

    .line 1307
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/SetIdentityPoolRolesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 1309
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 1311
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1313
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1314
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 1316
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1317
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 1311
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1312
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 1316
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1317
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1318
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/UnlinkDeveloperIdentityRequest;)V
    .registers 7

    .line 1425
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1426
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1427
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1431
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 1433
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/UnlinkDeveloperIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/UnlinkDeveloperIdentityRequestMarshaller;-><init>()V

    .line 1434
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/UnlinkDeveloperIdentityRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/UnlinkDeveloperIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 1436
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 1438
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1440
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1441
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 1443
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1444
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 1438
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1439
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 1443
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1444
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1445
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentity/model/UnlinkIdentityRequest;)V
    .registers 7

    .line 1478
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1480
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1484
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 1486
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentity/model/transform/UnlinkIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentity/model/transform/UnlinkIdentityRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/UnlinkIdentityRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/UnlinkIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 1488
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 1490
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1492
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1493
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 1495
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1496
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 1490
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1491
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 1495
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1496
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1497
    throw v0
.end method

.method public a_(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1632
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

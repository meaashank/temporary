###### Class com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProviderClient (com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProviderClient)
.class public Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonCognitoIdentityProviderClient.java"

# interfaces
.implements Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;


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

    .line 80
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .registers 3

    .line 130
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 160
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .registers 3

    .line 187
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 218
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .registers 4

    .line 266
    invoke-static {p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 268
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 270
    invoke-direct {p0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->o()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-static {p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 243
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 245
    invoke-direct {p0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->o()V

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

    .line 6116
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->b:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 6117
    iget v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->f:I

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(I)V

    .line 6119
    invoke-virtual {p3}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 6121
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    .line 6123
    :try_start_13
    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->i:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_3f

    .line 6125
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6128
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 6129
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 6130
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->l_()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 6133
    :cond_2e
    invoke-virtual {p3, v1}, Lcom/amazonaws/http/ExecutionContext;->a(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 6134
    new-instance v0, Lcom/amazonaws/http/JsonErrorResponseHandler;

    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amazonaws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 6136
    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    return-object p1

    :catchall_3f
    move-exception p1

    .line 6125
    sget-object p2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, p2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6126
    throw p1
.end method

.method private static b(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;
    .registers 1

    return-object p0
.end method

.method private o()V
    .registers 4

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    .line 275
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AliasExistsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AliasExistsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeDeliveryFailureExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeDeliveryFailureExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeMismatchExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeMismatchExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConcurrentModificationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConcurrentModificationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DuplicateProviderExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DuplicateProviderExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EnableSoftwareTokenMFAExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EnableSoftwareTokenMFAExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ExpiredCodeExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ExpiredCodeExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupExistsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupExistsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InternalErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InternalErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidEmailRoleAccessPolicyExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidEmailRoleAccessPolicyExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidLambdaResponseExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidLambdaResponseExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidOAuthFlowExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidOAuthFlowExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidParameterExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidPasswordExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidPasswordExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidSmsRoleAccessPolicyExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidSmsRoleAccessPolicyExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidSmsRoleTrustRelationshipExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidSmsRoleTrustRelationshipExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidUserPoolConfigurationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidUserPoolConfigurationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/MFAMethodNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/MFAMethodNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NotAuthorizedExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NotAuthorizedExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordResetRequiredExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordResetRequiredExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PreconditionNotMetExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PreconditionNotMetExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ScopeDoesNotExistExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ScopeDoesNotExistExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMFANotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMFANotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TooManyFailedAttemptsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TooManyFailedAttemptsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TooManyRequestsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TooManyRequestsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnexpectedLambdaExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnexpectedLambdaExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedIdentityProviderExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedIdentityProviderExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedUserStateExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedUserStateExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportInProgressExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportInProgressExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserLambdaValidationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserLambdaValidationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserNotConfirmedExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserNotConfirmedExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolAddOnNotEnabledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolAddOnNotEnabledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolTaggingExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolTaggingExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UsernameExistsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UsernameExistsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->h:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/JsonErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "cognito-idp.us-east-1.amazonaws.com"

    .line 315
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Ljava/lang/String;)V

    const-string v0, "cognito-idp"

    .line 316
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->g:Ljava/lang/String;

    .line 318
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 319
    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/cognitoidentityprovider/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/cognitoidentityprovider/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AddCustomAttributesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AddCustomAttributesResult;
    .registers 9

    .line 359
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 361
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 365
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 367
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AddCustomAttributesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AddCustomAttributesRequestMarshaller;-><init>()V

    .line 368
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AddCustomAttributesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AddCustomAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 370
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 372
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 374
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AddCustomAttributesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AddCustomAttributesResultJsonUnmarshaller;-><init>()V

    .line 375
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 378
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 380
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AddCustomAttributesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 382
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 383
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 372
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 373
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

    .line 382
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 383
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 384
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminConfirmSignUpRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminConfirmSignUpResult;
    .registers 9

    .line 471
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 473
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 477
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 479
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminConfirmSignUpRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminConfirmSignUpRequestMarshaller;-><init>()V

    .line 480
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminConfirmSignUpRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminConfirmSignUpRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 482
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 484
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 486
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminConfirmSignUpResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminConfirmSignUpResultJsonUnmarshaller;-><init>()V

    .line 487
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 490
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 492
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminConfirmSignUpResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 494
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 495
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 484
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 485
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

    .line 494
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 495
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 496
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserResult;
    .registers 9

    .line 560
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 562
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 566
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 568
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 570
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 572
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 574
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserResultJsonUnmarshaller;-><init>()V

    .line 575
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 578
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 580
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 582
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 583
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 572
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 573
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

    .line 582
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 583
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 584
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDeleteUserAttributesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDeleteUserAttributesResult;
    .registers 9

    .line 669
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 671
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 675
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 677
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDeleteUserAttributesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDeleteUserAttributesRequestMarshaller;-><init>()V

    .line 678
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDeleteUserAttributesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDeleteUserAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 680
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 682
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 684
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDeleteUserAttributesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDeleteUserAttributesResultJsonUnmarshaller;-><init>()V

    .line 685
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 688
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 690
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDeleteUserAttributesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 692
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 693
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 682
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 683
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

    .line 692
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 693
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 694
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDisableProviderForUserRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDisableProviderForUserResult;
    .registers 9

    .line 765
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 767
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 771
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 773
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDisableProviderForUserRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDisableProviderForUserRequestMarshaller;-><init>()V

    .line 774
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDisableProviderForUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDisableProviderForUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 776
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 778
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 780
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDisableProviderForUserResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDisableProviderForUserResultJsonUnmarshaller;-><init>()V

    .line 781
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 784
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 786
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDisableProviderForUserResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 788
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 789
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 778
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 779
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

    .line 788
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 789
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 790
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDisableUserRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDisableUserResult;
    .registers 9

    .line 823
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 825
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 829
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 831
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDisableUserRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDisableUserRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDisableUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDisableUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 833
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 835
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 837
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDisableUserResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDisableUserResultJsonUnmarshaller;-><init>()V

    .line 838
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 841
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 843
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDisableUserResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 845
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 846
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 835
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 836
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

    .line 845
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 846
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 847
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminEnableUserRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminEnableUserResult;
    .registers 9

    .line 880
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 882
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 886
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 888
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminEnableUserRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminEnableUserRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminEnableUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminEnableUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 890
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 892
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 894
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminEnableUserResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminEnableUserResultJsonUnmarshaller;-><init>()V

    .line 895
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 898
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 900
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminEnableUserResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 902
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 903
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 892
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 893
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

    .line 902
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 903
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 904
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetDeviceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetDeviceResult;
    .registers 9

    .line 987
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 988
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 989
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 993
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 995
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminGetDeviceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminGetDeviceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminGetDeviceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetDeviceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 997
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 999
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1001
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminGetDeviceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminGetDeviceResultJsonUnmarshaller;-><init>()V

    .line 1002
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1005
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1007
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetDeviceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1009
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1010
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 999
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1000
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

    .line 1009
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1010
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1011
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 9

    .line 1045
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1046
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1047
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1051
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1053
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminGetUserRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminGetUserRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminGetUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1055
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1057
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1059
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminGetUserResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminGetUserResultJsonUnmarshaller;-><init>()V

    .line 1060
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1063
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1065
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1067
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1068
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1057
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1058
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

    .line 1067
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1068
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1069
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;
    .registers 9

    .line 1111
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1113
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1117
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1119
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminInitiateAuthRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminInitiateAuthRequestMarshaller;-><init>()V

    .line 1120
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminInitiateAuthRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1122
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1124
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1126
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminInitiateAuthResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminInitiateAuthResultJsonUnmarshaller;-><init>()V

    .line 1127
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1130
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1132
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1134
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1135
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1124
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1125
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

    .line 1134
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1135
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1136
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserResult;
    .registers 9

    .line 1193
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1194
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1195
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1199
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1201
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminLinkProviderForUserRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminLinkProviderForUserRequestMarshaller;-><init>()V

    .line 1202
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminLinkProviderForUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1204
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1206
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1208
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminLinkProviderForUserResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminLinkProviderForUserResultJsonUnmarshaller;-><init>()V

    .line 1209
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1212
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1214
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminLinkProviderForUserResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1216
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1217
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1206
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1207
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

    .line 1216
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1217
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1218
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListDevicesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListDevicesResult;
    .registers 9

    .line 1250
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1251
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1252
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1256
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1258
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListDevicesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListDevicesRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListDevicesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListDevicesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1260
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1262
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1264
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListDevicesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListDevicesResultJsonUnmarshaller;-><init>()V

    .line 1265
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1268
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1270
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListDevicesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1272
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1273
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1262
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1263
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

    .line 1272
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1273
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1274
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListGroupsForUserRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListGroupsForUserResult;
    .registers 9

    .line 1306
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1307
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1308
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1312
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1314
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListGroupsForUserRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListGroupsForUserRequestMarshaller;-><init>()V

    .line 1315
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListGroupsForUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListGroupsForUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1317
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1319
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1321
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListGroupsForUserResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListGroupsForUserResultJsonUnmarshaller;-><init>()V

    .line 1322
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1325
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1327
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListGroupsForUserResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1329
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1330
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1319
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1320
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

    .line 1329
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1330
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1331
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;
    .registers 9

    .line 1362
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1363
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1364
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1368
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1370
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListUserAuthEventsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListUserAuthEventsRequestMarshaller;-><init>()V

    .line 1371
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListUserAuthEventsRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1373
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1375
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1377
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListUserAuthEventsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminListUserAuthEventsResultJsonUnmarshaller;-><init>()V

    .line 1378
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1381
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1383
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1385
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1386
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1375
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1376
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

    .line 1385
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1386
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1387
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminResetUserPasswordRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminResetUserPasswordResult;
    .registers 9

    .line 1490
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1491
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1492
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1496
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1498
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminResetUserPasswordRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminResetUserPasswordRequestMarshaller;-><init>()V

    .line 1499
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminResetUserPasswordRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminResetUserPasswordRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1501
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1503
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1505
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminResetUserPasswordResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminResetUserPasswordResultJsonUnmarshaller;-><init>()V

    .line 1506
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1509
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1511
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminResetUserPasswordResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1513
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1514
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1503
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1504
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

    .line 1513
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1514
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1515
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminRespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminRespondToAuthChallengeResult;
    .registers 9

    .line 1564
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1565
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1566
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1570
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1572
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminRespondToAuthChallengeRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminRespondToAuthChallengeRequestMarshaller;-><init>()V

    .line 1573
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminRespondToAuthChallengeRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminRespondToAuthChallengeRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1575
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1577
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1579
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminRespondToAuthChallengeResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminRespondToAuthChallengeResultJsonUnmarshaller;-><init>()V

    .line 1580
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1583
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1585
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminRespondToAuthChallengeResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1587
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1588
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1577
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1578
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

    .line 1587
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1588
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1589
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceResult;
    .registers 9

    .line 1619
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1620
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1621
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1625
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1627
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceRequestMarshaller;-><init>()V

    .line 1628
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1630
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1632
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1634
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;-><init>()V

    .line 1635
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1638
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1640
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1642
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1643
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1632
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1633
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

    .line 1642
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1643
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1644
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserSettingsRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserSettingsResult;
    .registers 9

    .line 1678
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1679
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1680
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1684
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1686
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserSettingsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserSettingsRequestMarshaller;-><init>()V

    .line 1687
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserSettingsRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserSettingsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1689
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1691
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1693
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserSettingsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserSettingsResultJsonUnmarshaller;-><init>()V

    .line 1694
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1697
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1699
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserSettingsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1701
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1702
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1691
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1692
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

    .line 1701
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1702
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1703
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateAuthEventFeedbackRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateAuthEventFeedbackResult;
    .registers 9

    .line 1735
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1736
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1737
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1741
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1743
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateAuthEventFeedbackRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateAuthEventFeedbackRequestMarshaller;-><init>()V

    .line 1744
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateAuthEventFeedbackRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateAuthEventFeedbackRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1746
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1748
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1750
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateAuthEventFeedbackResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateAuthEventFeedbackResultJsonUnmarshaller;-><init>()V

    .line 1751
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1754
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1756
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateAuthEventFeedbackResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1758
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1759
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1748
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1749
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

    .line 1758
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1759
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1760
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateDeviceStatusRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateDeviceStatusResult;
    .registers 9

    .line 1795
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1796
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1797
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1801
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1803
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateDeviceStatusRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateDeviceStatusRequestMarshaller;-><init>()V

    .line 1804
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateDeviceStatusRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateDeviceStatusRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1806
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1808
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1810
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateDeviceStatusResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateDeviceStatusResultJsonUnmarshaller;-><init>()V

    .line 1811
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1814
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1816
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateDeviceStatusResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1818
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1819
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1808
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1809
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

    .line 1818
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1819
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1820
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateUserAttributesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateUserAttributesResult;
    .registers 9

    .line 1868
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1869
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1870
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1874
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1876
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateUserAttributesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateUserAttributesRequestMarshaller;-><init>()V

    .line 1877
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateUserAttributesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateUserAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1879
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1881
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1883
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateUserAttributesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUpdateUserAttributesResultJsonUnmarshaller;-><init>()V

    .line 1884
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1887
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1889
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUpdateUserAttributesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1891
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1892
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1881
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1882
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

    .line 1891
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1892
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1893
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUserGlobalSignOutRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUserGlobalSignOutResult;
    .registers 9

    .line 1927
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1928
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1929
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1933
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1935
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUserGlobalSignOutRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUserGlobalSignOutRequestMarshaller;-><init>()V

    .line 1936
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUserGlobalSignOutRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUserGlobalSignOutRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1938
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1940
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1942
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUserGlobalSignOutResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminUserGlobalSignOutResultJsonUnmarshaller;-><init>()V

    .line 1943
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1946
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 1948
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminUserGlobalSignOutResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 1950
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1951
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1940
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1941
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

    .line 1950
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1951
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1952
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;
    .registers 9

    .line 1981
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1982
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1983
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1987
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 1989
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AssociateSoftwareTokenRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AssociateSoftwareTokenRequestMarshaller;-><init>()V

    .line 1990
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AssociateSoftwareTokenRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 1992
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 1994
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1996
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AssociateSoftwareTokenResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AssociateSoftwareTokenResultJsonUnmarshaller;-><init>()V

    .line 1997
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2000
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2002
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/AssociateSoftwareTokenResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2004
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2005
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 1994
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1995
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

    .line 2004
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2005
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2006
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordResult;
    .registers 9

    .line 2039
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2040
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2041
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2045
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2047
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChangePasswordRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChangePasswordRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChangePasswordRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2049
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2051
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2053
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChangePasswordResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ChangePasswordResultJsonUnmarshaller;-><init>()V

    .line 2054
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2057
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2059
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ChangePasswordResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2061
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2062
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2051
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2052
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

    .line 2061
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2062
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2063
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;
    .registers 9

    .line 2099
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2100
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2101
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2105
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2107
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2109
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2111
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2113
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceResultJsonUnmarshaller;-><init>()V

    .line 2114
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2117
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2119
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2121
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2122
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2111
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2112
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

    .line 2121
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2122
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2123
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordResult;
    .registers 9

    .line 2164
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2165
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2166
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2170
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2172
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordRequestMarshaller;-><init>()V

    .line 2173
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2175
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2177
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2179
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordResultJsonUnmarshaller;-><init>()V

    .line 2180
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2183
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2185
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2187
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2188
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2177
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2178
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

    .line 2187
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2188
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2189
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpResult;
    .registers 9

    .line 2227
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2228
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2229
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2233
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2235
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmSignUpRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmSignUpRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmSignUpRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2237
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2239
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2241
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmSignUpResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmSignUpResultJsonUnmarshaller;-><init>()V

    .line 2242
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2245
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2247
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmSignUpResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2249
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2250
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2239
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2240
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

    .line 2249
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2250
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2251
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateGroupRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/CreateGroupResult;
    .registers 9

    .line 2282
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2283
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2284
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2288
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2290
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateGroupRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateGroupRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateGroupRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateGroupRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2292
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2294
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2296
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateGroupResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateGroupResultJsonUnmarshaller;-><init>()V

    .line 2297
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2300
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2302
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/CreateGroupResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2304
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2305
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2294
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2295
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

    .line 2304
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2305
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2306
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateIdentityProviderRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/CreateIdentityProviderResult;
    .registers 9

    .line 2336
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2337
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2338
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2342
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2344
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateIdentityProviderRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateIdentityProviderRequestMarshaller;-><init>()V

    .line 2345
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateIdentityProviderRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateIdentityProviderRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2347
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2349
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2351
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateIdentityProviderResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateIdentityProviderResultJsonUnmarshaller;-><init>()V

    .line 2352
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2355
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2357
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/CreateIdentityProviderResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2359
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2360
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2349
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2350
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

    .line 2359
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2360
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2361
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateResourceServerRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/CreateResourceServerResult;
    .registers 9

    .line 2390
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2391
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2392
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2396
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2398
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateResourceServerRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateResourceServerRequestMarshaller;-><init>()V

    .line 2399
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateResourceServerRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateResourceServerRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2401
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2403
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2405
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateResourceServerResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateResourceServerResultJsonUnmarshaller;-><init>()V

    .line 2406
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2409
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2411
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/CreateResourceServerResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2413
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2414
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2403
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2404
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

    .line 2413
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2414
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2415
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserImportJobRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserImportJobResult;
    .registers 9

    .line 2447
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2448
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2449
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2453
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2455
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserImportJobRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserImportJobRequestMarshaller;-><init>()V

    .line 2456
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserImportJobRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserImportJobRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2458
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2460
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2462
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserImportJobResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserImportJobResultJsonUnmarshaller;-><init>()V

    .line 2463
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2466
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2468
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserImportJobResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2470
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2471
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2460
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2461
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

    .line 2470
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2471
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2472
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolClientRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolClientResult;
    .registers 9

    .line 2562
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2563
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2564
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2568
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2570
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolClientRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolClientRequestMarshaller;-><init>()V

    .line 2571
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolClientRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolClientRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2573
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2575
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2577
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolClientResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolClientResultJsonUnmarshaller;-><init>()V

    .line 2578
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2581
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2583
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolClientResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2585
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2586
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2575
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2576
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

    .line 2585
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2586
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2587
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolDomainRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolDomainResult;
    .registers 9

    .line 2615
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2616
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2617
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2621
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2623
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolDomainRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolDomainRequestMarshaller;-><init>()V

    .line 2624
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolDomainRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolDomainRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2626
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2628
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2630
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolDomainResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolDomainResultJsonUnmarshaller;-><init>()V

    .line 2631
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2634
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2636
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolDomainResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2638
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2639
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2628
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2629
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

    .line 2638
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2639
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2640
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolResult;
    .registers 9

    .line 2505
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2506
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2507
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2511
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2513
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2515
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2517
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2519
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CreateUserPoolResultJsonUnmarshaller;-><init>()V

    .line 2520
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2523
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2525
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/CreateUserPoolResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2527
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2528
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2517
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2518
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

    .line 2527
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2528
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2529
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserAttributesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserAttributesResult;
    .registers 9

    .line 2856
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2857
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2858
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2862
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 2864
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserAttributesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserAttributesRequestMarshaller;-><init>()V

    .line 2865
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserAttributesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 2867
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 2869
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2871
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserAttributesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserAttributesResultJsonUnmarshaller;-><init>()V

    .line 2872
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2875
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 2877
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserAttributesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 2879
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2880
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 2869
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2870
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

    .line 2879
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2880
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2881
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainResult;
    .registers 9

    .line 3000
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3001
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3002
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3006
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3008
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolDomainRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolDomainRequestMarshaller;-><init>()V

    .line 3009
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolDomainRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3011
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3013
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3015
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolDomainResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolDomainResultJsonUnmarshaller;-><init>()V

    .line 3016
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3019
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3021
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolDomainResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3023
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3024
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3013
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3014
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

    .line 3023
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3024
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3025
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeIdentityProviderRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeIdentityProviderResult;
    .registers 9

    .line 3053
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3054
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3055
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3059
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3061
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeIdentityProviderRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeIdentityProviderRequestMarshaller;-><init>()V

    .line 3062
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeIdentityProviderRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeIdentityProviderRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3064
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3066
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3068
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeIdentityProviderResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeIdentityProviderResultJsonUnmarshaller;-><init>()V

    .line 3069
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3072
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3074
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeIdentityProviderResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3076
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3077
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3066
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3067
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

    .line 3076
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3077
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3078
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeResourceServerRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeResourceServerResult;
    .registers 9

    .line 3106
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3107
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3108
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3112
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3114
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeResourceServerRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeResourceServerRequestMarshaller;-><init>()V

    .line 3115
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeResourceServerRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeResourceServerRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3117
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3119
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3121
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeResourceServerResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeResourceServerResultJsonUnmarshaller;-><init>()V

    .line 3122
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3125
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3127
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeResourceServerResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3129
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3130
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3119
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3120
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

    .line 3129
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3130
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3131
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeRiskConfigurationRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeRiskConfigurationResult;
    .registers 9

    .line 3160
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3161
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3162
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3166
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3168
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeRiskConfigurationRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeRiskConfigurationRequestMarshaller;-><init>()V

    .line 3169
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeRiskConfigurationRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeRiskConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3171
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3173
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3175
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeRiskConfigurationResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeRiskConfigurationResultJsonUnmarshaller;-><init>()V

    .line 3176
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3179
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3181
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeRiskConfigurationResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3183
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3184
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3173
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3174
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

    .line 3183
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3184
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3185
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserImportJobRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserImportJobResult;
    .registers 9

    .line 3215
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3216
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3217
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3221
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3223
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserImportJobRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserImportJobRequestMarshaller;-><init>()V

    .line 3224
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserImportJobRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserImportJobRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3226
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3228
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3230
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserImportJobResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserImportJobResultJsonUnmarshaller;-><init>()V

    .line 3231
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3234
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3236
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserImportJobResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3238
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3239
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3228
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3229
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

    .line 3238
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3239
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3240
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolClientRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolClientResult;
    .registers 9

    .line 3325
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3326
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3327
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3331
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3333
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolClientRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolClientRequestMarshaller;-><init>()V

    .line 3334
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolClientRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolClientRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3336
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3338
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3340
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolClientResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolClientResultJsonUnmarshaller;-><init>()V

    .line 3341
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3344
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3346
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolClientResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3348
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3349
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3338
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3339
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

    .line 3348
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3349
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3350
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolDomainRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolDomainResult;
    .registers 9

    .line 3377
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3378
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3379
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3383
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3385
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolDomainRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolDomainRequestMarshaller;-><init>()V

    .line 3386
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolDomainRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolDomainRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3388
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3390
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3392
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolDomainResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolDomainResultJsonUnmarshaller;-><init>()V

    .line 3393
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3396
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3398
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolDomainResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3400
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3401
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3390
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3391
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

    .line 3400
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3401
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3402
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolResult;
    .registers 9

    .line 3270
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3271
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3272
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3276
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3278
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3280
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3282
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3284
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DescribeUserPoolResultJsonUnmarshaller;-><init>()V

    .line 3285
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3288
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3290
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/DescribeUserPoolResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3292
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3293
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3282
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3283
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

    .line 3292
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3293
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3294
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    .registers 9

    .line 3497
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3498
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3499
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3503
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3505
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3507
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3509
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3511
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordResultJsonUnmarshaller;-><init>()V

    .line 3512
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3515
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3517
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3519
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3520
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3509
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3510
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

    .line 3519
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3520
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3521
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetCSVHeaderRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetCSVHeaderResult;
    .registers 9

    .line 3551
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

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
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3559
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetCSVHeaderRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetCSVHeaderRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetCSVHeaderRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetCSVHeaderRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3561
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3563
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3565
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetCSVHeaderResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetCSVHeaderResultJsonUnmarshaller;-><init>()V

    .line 3566
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3569
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3571
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/GetCSVHeaderResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3573
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3574
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3563
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3564
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

    .line 3573
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3574
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3575
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;
    .registers 9

    .line 3607
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3608
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3609
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3613
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3615
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetDeviceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetDeviceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetDeviceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3617
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3619
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3621
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetDeviceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetDeviceResultJsonUnmarshaller;-><init>()V

    .line 3622
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3625
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3627
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/GetDeviceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3629
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3630
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3619
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3620
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

    .line 3629
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3630
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3631
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetGroupRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetGroupResult;
    .registers 9

    .line 3660
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3661
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3662
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3666
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3668
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetGroupRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetGroupRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetGroupRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetGroupRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3670
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3672
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3674
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetGroupResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetGroupResultJsonUnmarshaller;-><init>()V

    .line 3675
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3678
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3680
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/GetGroupResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3682
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3683
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3672
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3673
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

    .line 3682
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3683
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3684
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetIdentityProviderByIdentifierRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetIdentityProviderByIdentifierResult;
    .registers 9

    .line 3712
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3713
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3714
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3718
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3720
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetIdentityProviderByIdentifierRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetIdentityProviderByIdentifierRequestMarshaller;-><init>()V

    .line 3721
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetIdentityProviderByIdentifierRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetIdentityProviderByIdentifierRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3723
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3725
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3727
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetIdentityProviderByIdentifierResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetIdentityProviderByIdentifierResultJsonUnmarshaller;-><init>()V

    .line 3728
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3731
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3733
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/GetIdentityProviderByIdentifierResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3735
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3736
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3725
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3726
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

    .line 3735
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3736
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3737
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetSigningCertificateRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetSigningCertificateResult;
    .registers 9

    .line 3764
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3765
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3766
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3770
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3772
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetSigningCertificateRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetSigningCertificateRequestMarshaller;-><init>()V

    .line 3773
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetSigningCertificateRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetSigningCertificateRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3775
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3777
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3779
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetSigningCertificateResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetSigningCertificateResultJsonUnmarshaller;-><init>()V

    .line 3780
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3783
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3785
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/GetSigningCertificateResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3787
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3788
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3777
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3778
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

    .line 3787
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3788
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3789
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetUICustomizationRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUICustomizationResult;
    .registers 9

    .line 3820
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3821
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3822
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3826
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3828
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUICustomizationRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUICustomizationRequestMarshaller;-><init>()V

    .line 3829
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUICustomizationRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetUICustomizationRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3831
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3833
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3835
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUICustomizationResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUICustomizationResultJsonUnmarshaller;-><init>()V

    .line 3836
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3839
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3841
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUICustomizationResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3843
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3844
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3833
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3834
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

    .line 3843
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3844
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3845
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;
    .registers 9

    .line 3942
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3943
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3944
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3948
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3950
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeRequestMarshaller;-><init>()V

    .line 3951
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3953
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3955
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3957
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;-><init>()V

    .line 3958
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3961
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3963
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3965
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3966
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3955
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3956
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

    .line 3965
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3966
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3967
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;
    .registers 9

    .line 3995
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3996
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3997
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4001
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4003
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserPoolMfaConfigRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserPoolMfaConfigRequestMarshaller;-><init>()V

    .line 4004
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserPoolMfaConfigRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4006
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4008
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4010
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserPoolMfaConfigResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserPoolMfaConfigResultJsonUnmarshaller;-><init>()V

    .line 4011
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4014
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4016
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserPoolMfaConfigResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4018
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4019
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4008
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4009
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

    .line 4018
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4019
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4020
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserResult;
    .registers 9

    .line 3876
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3877
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3878
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3882
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 3884
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 3886
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 3888
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3890
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserResultJsonUnmarshaller;-><init>()V

    .line 3891
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3894
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 3896
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 3898
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3899
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 3888
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3889
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

    .line 3898
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3899
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3900
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutResult;
    .registers 9

    .line 4050
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4051
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4052
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4056
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4058
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4060
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4062
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4064
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;-><init>()V

    .line 4065
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4068
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4070
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4072
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4073
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4062
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4063
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

    .line 4072
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4073
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4074
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;
    .registers 9

    .line 4109
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4110
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4111
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4115
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4117
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4119
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4121
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4123
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthResultJsonUnmarshaller;-><init>()V

    .line 4124
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4127
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4129
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4131
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4132
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4121
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4122
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

    .line 4131
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4132
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4133
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;
    .registers 9

    .line 4165
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4166
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4167
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4171
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4173
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListDevicesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListDevicesRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListDevicesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4175
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4177
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4179
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListDevicesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListDevicesResultJsonUnmarshaller;-><init>()V

    .line 4180
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4183
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4185
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ListDevicesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4187
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4188
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4177
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4178
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

    .line 4187
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4188
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4189
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListGroupsRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListGroupsResult;
    .registers 9

    .line 4218
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4219
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4220
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4224
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4226
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListGroupsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListGroupsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListGroupsRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListGroupsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4228
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4230
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4232
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListGroupsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListGroupsResultJsonUnmarshaller;-><init>()V

    .line 4233
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4236
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4238
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ListGroupsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4240
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4241
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4230
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4231
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

    .line 4240
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4241
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4242
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListIdentityProvidersRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListIdentityProvidersResult;
    .registers 9

    .line 4270
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4271
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4272
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4276
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4278
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListIdentityProvidersRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListIdentityProvidersRequestMarshaller;-><init>()V

    .line 4279
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListIdentityProvidersRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListIdentityProvidersRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4281
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4283
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4285
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListIdentityProvidersResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListIdentityProvidersResultJsonUnmarshaller;-><init>()V

    .line 4286
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4289
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4291
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ListIdentityProvidersResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4293
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4294
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4283
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4284
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

    .line 4293
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4294
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4295
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListResourceServersRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListResourceServersResult;
    .registers 9

    .line 4323
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4324
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4325
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4329
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4331
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListResourceServersRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListResourceServersRequestMarshaller;-><init>()V

    .line 4332
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListResourceServersRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListResourceServersRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4334
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4336
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4338
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListResourceServersResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListResourceServersResultJsonUnmarshaller;-><init>()V

    .line 4339
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4342
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4344
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ListResourceServersResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4346
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4347
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4336
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4337
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

    .line 4346
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4347
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4348
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListTagsForResourceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListTagsForResourceResult;
    .registers 9

    .line 4384
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4385
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4386
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4390
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4392
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListTagsForResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListTagsForResourceRequestMarshaller;-><init>()V

    .line 4393
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListTagsForResourceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListTagsForResourceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4395
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4397
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4399
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListTagsForResourceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListTagsForResourceResultJsonUnmarshaller;-><init>()V

    .line 4400
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4403
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4405
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ListTagsForResourceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4407
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4408
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4397
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4398
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

    .line 4407
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4408
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4409
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserImportJobsRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserImportJobsResult;
    .registers 9

    .line 4438
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4439
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4440
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4444
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4446
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserImportJobsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserImportJobsRequestMarshaller;-><init>()V

    .line 4447
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserImportJobsRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserImportJobsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4449
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4451
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4453
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserImportJobsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserImportJobsResultJsonUnmarshaller;-><init>()V

    .line 4454
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4457
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4459
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserImportJobsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4461
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4462
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4451
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4452
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

    .line 4461
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4462
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4463
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserPoolClientsRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserPoolClientsResult;
    .registers 9

    .line 4493
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4494
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4495
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4499
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4501
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserPoolClientsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserPoolClientsRequestMarshaller;-><init>()V

    .line 4502
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserPoolClientsRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserPoolClientsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4504
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4506
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4508
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserPoolClientsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserPoolClientsResultJsonUnmarshaller;-><init>()V

    .line 4509
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4512
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4514
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserPoolClientsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4516
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4517
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4506
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4507
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

    .line 4516
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4517
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4518
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserPoolsRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserPoolsResult;
    .registers 9

    .line 4545
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4546
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4547
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4551
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4553
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserPoolsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserPoolsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserPoolsRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserPoolsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4555
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4557
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4559
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserPoolsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUserPoolsResultJsonUnmarshaller;-><init>()V

    .line 4560
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4563
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4565
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ListUserPoolsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4567
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4568
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4557
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4558
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

    .line 4567
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4568
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4569
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListUsersInGroupRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListUsersInGroupResult;
    .registers 9

    .line 4650
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4651
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4652
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4656
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4658
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUsersInGroupRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUsersInGroupRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUsersInGroupRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListUsersInGroupRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4660
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4662
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4664
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUsersInGroupResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUsersInGroupResultJsonUnmarshaller;-><init>()V

    .line 4665
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4668
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4670
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ListUsersInGroupResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4672
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4673
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4662
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4663
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

    .line 4672
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4673
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4674
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListUsersRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ListUsersResult;
    .registers 9

    .line 4597
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4598
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4599
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4603
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4605
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUsersRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUsersRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUsersRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ListUsersRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4607
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4609
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4611
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUsersResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ListUsersResultJsonUnmarshaller;-><init>()V

    .line 4612
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4615
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4617
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ListUsersResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4619
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4620
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4609
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4610
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

    .line 4619
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4620
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4621
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;
    .registers 9

    .line 4714
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4715
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4716
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4720
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4722
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeRequestMarshaller;-><init>()V

    .line 4723
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4725
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4727
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4729
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeResultJsonUnmarshaller;-><init>()V

    .line 4730
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4733
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4735
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4737
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4738
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4727
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4728
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

    .line 4737
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4738
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4739
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;
    .registers 9

    .line 4784
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4785
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4786
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4790
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4792
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeRequestMarshaller;-><init>()V

    .line 4793
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4795
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4797
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4799
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeResultJsonUnmarshaller;-><init>()V

    .line 4800
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4803
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4805
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4807
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4808
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4797
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4798
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

    .line 4807
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4808
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4809
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetRiskConfigurationRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetRiskConfigurationResult;
    .registers 9

    .line 4850
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4851
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4852
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4856
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4858
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetRiskConfigurationRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetRiskConfigurationRequestMarshaller;-><init>()V

    .line 4859
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetRiskConfigurationRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetRiskConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4861
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4863
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4865
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetRiskConfigurationResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetRiskConfigurationResultJsonUnmarshaller;-><init>()V

    .line 4866
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4869
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4871
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/SetRiskConfigurationResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4873
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4874
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4863
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4864
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

    .line 4873
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4874
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4875
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetUICustomizationRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUICustomizationResult;
    .registers 9

    .line 4918
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4919
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4920
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4924
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4926
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUICustomizationRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUICustomizationRequestMarshaller;-><init>()V

    .line 4927
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUICustomizationRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetUICustomizationRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4929
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4931
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4933
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUICustomizationResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUICustomizationResultJsonUnmarshaller;-><init>()V

    .line 4934
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4937
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4939
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUICustomizationResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4941
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4942
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4931
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4932
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

    .line 4941
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4942
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4943
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceResult;
    .registers 9

    .line 4973
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 4974
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 4975
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4979
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 4981
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserMFAPreferenceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserMFAPreferenceRequestMarshaller;-><init>()V

    .line 4982
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserMFAPreferenceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 4984
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 4986
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4988
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserMFAPreferenceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserMFAPreferenceResultJsonUnmarshaller;-><init>()V

    .line 4989
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4992
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 4994
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserMFAPreferenceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 4996
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4997
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 4986
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4987
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

    .line 4996
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 4997
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 4998
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigResult;
    .registers 9

    .line 5028
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5029
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5030
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5034
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5036
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigRequestMarshaller;-><init>()V

    .line 5037
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5039
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5041
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5043
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;-><init>()V

    .line 5044
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5047
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5049
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5051
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5052
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5041
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5042
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

    .line 5051
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5052
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5053
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserSettingsRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserSettingsResult;
    .registers 9

    .line 5085
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5086
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5087
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5091
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5093
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserSettingsRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserSettingsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserSettingsRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserSettingsRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5095
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5097
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5099
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserSettingsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserSettingsResultJsonUnmarshaller;-><init>()V

    .line 5100
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5103
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5105
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserSettingsResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5107
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5108
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5097
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5098
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

    .line 5107
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5108
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5109
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    .registers 9

    .line 5147
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5148
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5149
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5153
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5155
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5157
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5159
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5161
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpResultJsonUnmarshaller;-><init>()V

    .line 5162
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5165
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5167
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5169
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5170
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5159
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5160
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

    .line 5169
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5170
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5171
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/StartUserImportJobRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/StartUserImportJobResult;
    .registers 9

    .line 5201
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5202
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5203
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5207
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5209
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StartUserImportJobRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StartUserImportJobRequestMarshaller;-><init>()V

    .line 5210
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StartUserImportJobRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/StartUserImportJobRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5212
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5214
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5216
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StartUserImportJobResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StartUserImportJobResultJsonUnmarshaller;-><init>()V

    .line 5217
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5220
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5222
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/StartUserImportJobResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5224
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5225
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5214
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5215
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

    .line 5224
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5225
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5226
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;
    .registers 9

    .line 5256
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5257
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5258
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5262
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5264
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobRequestMarshaller;-><init>()V

    .line 5265
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5267
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5269
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5271
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;-><init>()V

    .line 5272
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5275
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5277
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5279
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5280
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5269
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5270
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

    .line 5279
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5280
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5281
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/TagResourceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/TagResourceResult;
    .registers 9

    .line 5328
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5329
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5330
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5334
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5336
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TagResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TagResourceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TagResourceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/TagResourceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5338
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5340
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5342
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TagResourceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TagResourceResultJsonUnmarshaller;-><init>()V

    .line 5343
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5346
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5348
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/TagResourceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5350
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5351
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5340
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5341
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

    .line 5350
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5351
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5352
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UntagResourceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UntagResourceResult;
    .registers 9

    .line 5379
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5380
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5381
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5385
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5387
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UntagResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UntagResourceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UntagResourceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UntagResourceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5389
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5391
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5393
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UntagResourceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UntagResourceResultJsonUnmarshaller;-><init>()V

    .line 5394
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5397
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5399
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/UntagResourceResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5401
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5402
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5391
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5392
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

    .line 5401
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5402
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5403
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateAuthEventFeedbackRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateAuthEventFeedbackResult;
    .registers 9

    .line 5436
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5437
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5438
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5442
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5444
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateAuthEventFeedbackRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateAuthEventFeedbackRequestMarshaller;-><init>()V

    .line 5445
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateAuthEventFeedbackRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateAuthEventFeedbackRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5447
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5449
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5451
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateAuthEventFeedbackResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateAuthEventFeedbackResultJsonUnmarshaller;-><init>()V

    .line 5452
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5455
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5457
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateAuthEventFeedbackResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5459
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5460
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5449
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5450
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

    .line 5459
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5460
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5461
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;
    .registers 9

    .line 5494
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5495
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5496
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5500
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5502
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateDeviceStatusRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateDeviceStatusRequestMarshaller;-><init>()V

    .line 5503
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateDeviceStatusRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5505
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5507
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5509
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateDeviceStatusResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateDeviceStatusResultJsonUnmarshaller;-><init>()V

    .line 5510
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5513
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5515
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateDeviceStatusResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5517
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5518
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5507
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5508
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

    .line 5517
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5518
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5519
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;
    .registers 9

    .line 5548
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5549
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5550
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5554
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5556
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateGroupRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateGroupRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateGroupRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5558
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5560
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5562
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateGroupResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateGroupResultJsonUnmarshaller;-><init>()V

    .line 5563
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5566
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5568
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateGroupResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5570
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5571
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5560
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5561
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

    .line 5570
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5571
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5572
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateIdentityProviderRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateIdentityProviderResult;
    .registers 9

    .line 5601
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5602
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5603
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5607
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5609
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateIdentityProviderRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateIdentityProviderRequestMarshaller;-><init>()V

    .line 5610
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateIdentityProviderRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateIdentityProviderRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5612
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5614
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5616
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateIdentityProviderResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateIdentityProviderResultJsonUnmarshaller;-><init>()V

    .line 5617
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5620
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5622
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateIdentityProviderResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5624
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5625
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5614
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5615
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

    .line 5624
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5625
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5626
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateResourceServerRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateResourceServerResult;
    .registers 9

    .line 5655
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5656
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5657
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5661
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5663
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateResourceServerRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateResourceServerRequestMarshaller;-><init>()V

    .line 5664
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateResourceServerRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateResourceServerRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5666
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5668
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5670
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateResourceServerResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateResourceServerResultJsonUnmarshaller;-><init>()V

    .line 5671
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5674
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5676
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateResourceServerResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5678
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5679
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5668
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5669
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

    .line 5678
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5679
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5680
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;
    .registers 9

    .line 5723
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5724
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5725
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5729
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5731
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserAttributesRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserAttributesRequestMarshaller;-><init>()V

    .line 5732
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserAttributesRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5734
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5736
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5738
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserAttributesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserAttributesResultJsonUnmarshaller;-><init>()V

    .line 5739
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5742
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5744
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserAttributesResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5746
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5747
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5736
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5737
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

    .line 5746
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5747
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5748
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolClientRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolClientResult;
    .registers 9

    .line 5844
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5845
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5846
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5850
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5852
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolClientRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolClientRequestMarshaller;-><init>()V

    .line 5853
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolClientRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolClientRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5855
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5857
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5859
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolClientResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolClientResultJsonUnmarshaller;-><init>()V

    .line 5860
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5863
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5865
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolClientResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5867
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5868
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5857
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5858
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

    .line 5867
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5868
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5869
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolDomainRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolDomainResult;
    .registers 9

    .line 5937
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5938
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5939
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5943
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5945
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolDomainRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolDomainRequestMarshaller;-><init>()V

    .line 5946
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolDomainRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolDomainRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5948
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5950
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5952
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolDomainResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolDomainResultJsonUnmarshaller;-><init>()V

    .line 5953
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5956
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5958
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolDomainResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5960
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5961
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5950
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5951
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

    .line 5960
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5961
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5962
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolResult;
    .registers 9

    .line 5784
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 5785
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 5786
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5790
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 5792
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 5794
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 5796
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5798
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolResultJsonUnmarshaller;-><init>()V

    .line 5799
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 5802
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 5804
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 5806
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5807
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 5796
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5797
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

    .line 5806
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 5807
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 5808
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;
    .registers 9

    .line 6000
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 6001
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 6002
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6006
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 6008
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifySoftwareTokenRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifySoftwareTokenRequestMarshaller;-><init>()V

    .line 6009
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifySoftwareTokenRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 6011
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 6013
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6015
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifySoftwareTokenResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifySoftwareTokenResultJsonUnmarshaller;-><init>()V

    .line 6016
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 6019
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 6021
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifySoftwareTokenResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 6023
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6024
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 6013
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6014
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

    .line 6023
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6024
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 6025
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeResult;
    .registers 9

    .line 6061
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 6062
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 6063
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6067
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    .line 6069
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifyUserAttributeRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifyUserAttributeRequestMarshaller;-><init>()V

    .line 6070
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifyUserAttributeRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_49

    .line 6072
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_47

    .line 6074
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6076
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifyUserAttributeResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerifyUserAttributeResultJsonUnmarshaller;-><init>()V

    .line 6077
    new-instance v5, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 6080
    invoke-direct {p0, p1, v5, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51

    .line 6082
    :try_start_33
    invoke-virtual {v0}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cognitoidentityprovider/model/VerifyUserAttributeResult;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_42

    .line 6084
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6085
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

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

    .line 6074
    :goto_4b
    :try_start_4b
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6075
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

    .line 6084
    :goto_56
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6085
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 6086
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminAddUserToGroupRequest;)V
    .registers 7

    .line 412
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 414
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 418
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 420
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminAddUserToGroupRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminAddUserToGroupRequestMarshaller;-><init>()V

    .line 421
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminAddUserToGroupRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminAddUserToGroupRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 423
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 425
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 427
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 428
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 430
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 431
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 425
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 426
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 430
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 431
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 432
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDeleteUserRequest;)V
    .registers 7

    .line 614
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 616
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 620
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 622
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDeleteUserRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDeleteUserRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminDeleteUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminDeleteUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 624
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 626
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 628
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 629
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 631
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 632
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 626
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 627
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 631
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 632
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 633
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminForgetDeviceRequest;)V
    .registers 7

    .line 935
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 937
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 941
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 943
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminForgetDeviceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminForgetDeviceRequestMarshaller;-><init>()V

    .line 944
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminForgetDeviceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminForgetDeviceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 946
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 948
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 950
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 951
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 953
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 954
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 948
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 949
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 953
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 954
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 955
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminRemoveUserFromGroupRequest;)V
    .registers 7

    .line 1416
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 1417
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1418
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1422
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 1424
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminRemoveUserFromGroupRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminRemoveUserFromGroupRequestMarshaller;-><init>()V

    .line 1425
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminRemoveUserFromGroupRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminRemoveUserFromGroupRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 1427
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 1429
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1431
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1432
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 1434
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1435
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 1429
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1430
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 1434
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1435
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 1436
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteGroupRequest;)V
    .registers 7

    .line 2667
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2668
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2669
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2673
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 2675
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteGroupRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteGroupRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteGroupRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteGroupRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 2677
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 2679
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2681
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2682
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 2684
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2685
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 2679
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2680
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 2684
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2685
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2686
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteIdentityProviderRequest;)V
    .registers 7

    .line 2711
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2712
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2713
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2717
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 2719
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteIdentityProviderRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteIdentityProviderRequestMarshaller;-><init>()V

    .line 2720
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteIdentityProviderRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteIdentityProviderRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 2722
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 2724
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2726
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2727
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 2729
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2730
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 2724
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2725
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 2729
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2730
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2731
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteResourceServerRequest;)V
    .registers 7

    .line 2755
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2756
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2757
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2761
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 2763
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteResourceServerRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteResourceServerRequestMarshaller;-><init>()V

    .line 2764
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteResourceServerRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteResourceServerRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 2766
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 2768
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2770
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2771
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 2773
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2774
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 2768
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2769
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 2773
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2774
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2775
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolClientRequest;)V
    .registers 7

    .line 2953
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2954
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2955
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2959
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 2961
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolClientRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolClientRequestMarshaller;-><init>()V

    .line 2962
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolClientRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolClientRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 2964
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 2966
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2968
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2969
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 2971
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2972
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 2966
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2967
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 2971
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2972
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2973
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolRequest;)V
    .registers 7

    .line 2908
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2909
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2910
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2914
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 2916
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserPoolRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserPoolRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 2918
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 2920
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2922
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2923
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 2925
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2926
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 2920
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2921
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 2925
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2926
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2927
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserRequest;)V
    .registers 7

    .line 2804
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 2805
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2806
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2810
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 2812
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeleteUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeleteUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 2814
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 2816
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2818
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2819
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 2821
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2822
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 2816
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2817
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 2821
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2822
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 2823
    throw v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;)V
    .registers 7

    .line 3432
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 3433
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    .line 3434
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3438
    :try_start_f
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_42

    .line 3440
    :try_start_14
    new-instance v4, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgetDeviceRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgetDeviceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgetDeviceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgetDeviceRequest;)Lcom/amazonaws/Request;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_38

    .line 3442
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    .line 3444
    :try_start_20
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3446
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 3447
    invoke-direct {p0, p1, v4, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_40

    .line 3449
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3450
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void

    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object p1, v3

    .line 3444
    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3445
    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move-object p1, v3

    .line 3449
    :goto_44
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 3450
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3451
    throw v0
.end method

.method public b_(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6110
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

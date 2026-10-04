###### Class com.amazonaws.auth.CognitoCredentialsProvider (com.amazonaws.auth.CognitoCredentialsProvider)
.class public Lcom/amazonaws/auth/CognitoCredentialsProvider;
.super Ljava/lang/Object;
.source "CognitoCredentialsProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;

.field public static final b:I = 0xe10

.field public static final c:I = 0x1f4


# instance fields
.field protected d:Lcom/amazonaws/auth/AWSSessionCredentials;

.field protected e:Ljava/util/Date;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

.field protected h:I

.field protected i:I

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Z

.field protected n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final o:Ljava/lang/String;

.field private p:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

.field private final q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V
    .registers 4

    .line 365
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .registers 4

    .line 387
    invoke-static {p3, p2}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;)V
    .registers 3

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->p:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 410
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->i_()Lcom/amazonaws/regions/Regions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->o:Ljava/lang/String;

    .line 411
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    const/4 p1, 0x0

    .line 412
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->j:Ljava/lang/String;

    .line 413
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->k:Ljava/lang/String;

    .line 414
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    const/16 p1, 0xe10

    .line 415
    iput p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h:I

    const/16 p1, 0x1f4

    .line 416
    iput p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->i:I

    const/4 p1, 0x1

    .line 417
    iput-boolean p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Z

    .line 418
    new-instance p2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p2, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 308
    new-instance v0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    new-instance v2, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v2}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .registers 6

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 332
    instance-of v0, p1, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;

    iget-object v0, p1, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->a:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    instance-of v0, v0, Lcom/amazonaws/AmazonWebServiceClient;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->a:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    check-cast v0, Lcom/amazonaws/AmazonWebServiceClient;

    .line 334
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceClient;->i_()Lcom/amazonaws/regions/Regions;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 335
    iget-object p1, p1, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->a:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    check-cast p1, Lcom/amazonaws/AmazonWebServiceClient;

    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceClient;->i_()Lcom/amazonaws/regions/Regions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->o:Ljava/lang/String;

    goto :goto_39

    .line 337
    :cond_2a
    sget-object p1, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a:Lcom/amazonaws/logging/Log;

    const-string v0, "Could not determine region of the Cognito Identity client, using default us-east-1"

    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 338
    sget-object p1, Lcom/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazonaws/regions/Regions;

    invoke-virtual {p1}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->o:Ljava/lang/String;

    .line 340
    :goto_39
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->j:Ljava/lang/String;

    .line 341
    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->k:Ljava/lang/String;

    .line 342
    iput-object p4, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    const/16 p1, 0xe10

    .line 343
    iput p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h:I

    const/16 p1, 0x1f4

    .line 344
    iput p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->i:I

    const/4 p1, 0x0

    .line 345
    iput-boolean p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Z

    .line 346
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .registers 9

    .line 174
    invoke-static {p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Lcom/amazonaws/mobile/config/AWSConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->b(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/regions/Regions;

    move-result-object v5

    invoke-static {p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .registers 10

    .line 215
    new-instance v6, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v6}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .registers 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 235
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .registers 13

    .line 110
    new-instance v6, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v6}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .registers 14

    .line 139
    invoke-static {p6, p5}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    move-result-object v5

    if-nez p3, :cond_a

    if-nez p4, :cond_a

    const/4 p5, 0x0

    goto :goto_14

    :cond_a
    new-instance p5, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    new-instance v0, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v0}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {p5, v0, p6}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    :goto_14
    move-object v6, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 138
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .registers 8

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p5, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->p:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 270
    invoke-virtual {p5}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->i_()Lcom/amazonaws/regions/Regions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->o:Ljava/lang/String;

    .line 271
    iput-object p6, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 273
    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->j:Ljava/lang/String;

    .line 274
    iput-object p4, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->k:Ljava/lang/String;

    const/16 p6, 0xe10

    .line 275
    iput p6, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h:I

    const/16 p6, 0x1f4

    .line 276
    iput p6, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->i:I

    const/4 p6, 0x1

    if-nez p3, :cond_24

    if-nez p4, :cond_24

    const/4 p3, 0x1

    goto :goto_25

    :cond_24
    const/4 p3, 0x0

    .line 278
    :goto_25
    iput-boolean p3, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Z

    .line 280
    iget-boolean p3, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Z

    if-eqz p3, :cond_33

    .line 281
    new-instance p3, Lcom/amazonaws/auth/AWSEnhancedCognitoIdentityProvider;

    invoke-direct {p3, p1, p2, p5}, Lcom/amazonaws/auth/AWSEnhancedCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    goto :goto_3a

    .line 285
    :cond_33
    new-instance p3, Lcom/amazonaws/auth/AWSBasicCognitoIdentityProvider;

    invoke-direct {p3, p1, p2, p5}, Lcom/amazonaws/auth/AWSBasicCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 288
    :goto_3a
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1, p6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method private static a(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;
    .registers 4

    .line 146
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 147
    invoke-static {p1}, Lcom/amazonaws/regions/Region;->a(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/regions/Region;)V

    return-object v0
.end method

.method private static a(Lcom/amazonaws/mobile/config/AWSConfiguration;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "CredentialsProvider"

    .line 179
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CognitoIdentity"

    .line 180
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "PoolId"

    .line 182
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to read CognitoIdentity please check your setup or awsconfiguration.json file"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .registers 3

    .line 866
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->b()Lcom/amazonaws/RequestClientOptions;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazonaws/RequestClientOptions;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/regions/Regions;
    .registers 3

    :try_start_0
    const-string v0, "CredentialsProvider"

    .line 190
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CognitoIdentity"

    .line 191
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Region"

    .line 193
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to read CognitoIdentity please check your setup or awsconfiguration.json file"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static c(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 200
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazonaws/ClientConfiguration;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_15

    .line 768
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 770
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 772
    :cond_15
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->p()Ljava/util/Map;

    move-result-object v0

    .line 775
    :goto_19
    new-instance p1, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    invoke-direct {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;-><init>()V

    .line 776
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object p1

    .line 777
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->b(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object p1

    .line 782
    :try_start_30
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->p:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->a(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object p1
    :try_end_36
    .catch Lcom/amazonaws/services/cognitoidentity/model/ResourceNotFoundException; {:try_start_30 .. :try_end_36} :catch_4a
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_30 .. :try_end_36} :catch_37

    goto :goto_4e

    :catch_37
    move-exception p1

    .line 789
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidationException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 790
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->t()Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object p1

    goto :goto_4e

    .line 793
    :cond_49
    throw p1

    .line 786
    :catch_4a
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->t()Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object p1

    .line 798
    :goto_4e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->b()Lcom/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v0

    .line 799
    new-instance v1, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->a()Ljava/lang/String;

    move-result-object v2

    .line 800
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 801
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->d()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Ljava/util/Date;)V

    .line 803
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 804
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Ljava/lang/String;)V

    :cond_81
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 6

    .line 816
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 817
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->k:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->j:Ljava/lang/String;

    .line 819
    :goto_d
    new-instance v1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;-><init>()V

    .line 820
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object p1

    .line 821
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object p1

    const-string v0, "ProviderSession"

    .line 822
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object p1

    iget v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h:I

    .line 823
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->b(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object p1

    .line 824
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 826
    invoke-interface {v0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;->a(Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;

    move-result-object p1

    .line 827
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->a()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object p1

    .line 829
    new-instance v0, Lcom/amazonaws/auth/BasicSessionCredentials;

    .line 830
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->a()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->b()Ljava/lang/String;

    move-result-object v2

    .line 832
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 833
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/Credentials;->d()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Ljava/util/Date;)V

    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 713
    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    .line 715
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    return-object v0
.end method

.method private t()Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .registers 4

    .line 741
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    .line 744
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 745
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 746
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 748
    :cond_21
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->p()Ljava/util/Map;

    move-result-object v0

    .line 751
    :goto_25
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;-><init>()V

    .line 752
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v1

    .line 753
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->b(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->p:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->a(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a()Lcom/amazonaws/auth/AWSCredentials;
    .registers 2

    .line 52
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 482
    iput p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h:I

    return-void
.end method

.method public a(Lcom/amazonaws/auth/IdentityChangedListener;)V
    .registers 3

    .line 886
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->b(Lcom/amazonaws/auth/IdentityChangedListener;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    .line 556
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 3

    .line 434
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 436
    :try_start_9
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_15

    .line 438
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_15
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 439
    throw p1
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 570
    :try_start_9
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->a(Ljava/util/Map;)V

    .line 571
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f()V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1b

    .line 573
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_1b
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 574
    throw p1
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/auth/AWSCredentialsProvider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/auth/AWSCredentialsProvider;"
        }
    .end annotation

    .line 613
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Ljava/util/Map;)V

    return-object p0
.end method

.method public b(I)Lcom/amazonaws/auth/CognitoCredentialsProvider;
    .registers 2

    .line 497
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(I)V

    return-object p0
.end method

.method public b()V
    .registers 3

    .line 629
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 631
    :try_start_9
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_16

    .line 633
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 634
    throw v0
.end method

.method public b(Lcom/amazonaws/auth/IdentityChangedListener;)V
    .registers 3

    .line 896
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->a(Lcom/amazonaws/auth/IdentityChangedListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 597
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->l:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .line 522
    iput p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->i:I

    return-void
.end method

.method public d()Lcom/amazonaws/auth/AWSSessionCredentials;
    .registers 3

    .line 462
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 464
    :try_start_9
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->s()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 465
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q()V

    .line 467
    :cond_12
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 469
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 470
    throw v0
.end method

.method public d(I)Lcom/amazonaws/auth/CognitoCredentialsProvider;
    .registers 2

    .line 538
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c(I)V

    return-object p0
.end method

.method public e()V
    .registers 3

    .line 643
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 645
    :try_start_9
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f()V

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->a(Ljava/util/Map;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_24

    .line 649
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_24
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 650
    throw v0
.end method

.method public f()V
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x0

    .line 660
    :try_start_a
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 661
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_18

    .line 663
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 664
    throw v0
.end method

.method protected h()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/amazonaws/auth/AWSIdentityProvider;
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    return-object v0
.end method

.method public k()Ljava/util/Date;
    .registers 3

    .line 443
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 445
    :try_start_9
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_15

    .line 447
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 448
    throw v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .registers 2

    .line 509
    iget v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h:I

    return v0
.end method

.method public n()I
    .registers 2

    .line 552
    iget v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->i:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->l:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/util/Map;
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

    .line 624
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected q()V
    .registers 4

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;
    :try_end_8
    .catch Lcom/amazonaws/services/cognitoidentity/model/ResourceNotFoundException; {:try_start_0 .. :try_end_8} :catch_1e
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_24

    :catch_9
    move-exception v0

    .line 685
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidationException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 686
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    goto :goto_24

    .line 689
    :cond_1d
    throw v0

    .line 682
    :catch_1e
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    .line 693
    :goto_24
    iget-boolean v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Z

    if-eqz v0, :cond_2e

    .line 694
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c(Ljava/lang/String;)V

    goto :goto_33

    .line 696
    :cond_2e
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d(Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method protected r()Ljava/lang/String;
    .registers 3

    .line 725
    sget-object v0, Lcom/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazonaws/regions/Regions;

    invoke-virtual {v0}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "cognito-identity.cn-north-1.amazonaws.com.cn"

    return-object v0

    :cond_11
    const-string v0, "cognito-identity.amazonaws.com"

    return-object v0
.end method

.method protected s()Z
    .registers 7

    .line 847
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 850
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 851
    invoke-static {}, Lcom/amazonaws/SDKGlobalConfiguration;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 852
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 854
    iget v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->i:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

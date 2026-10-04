###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool)
.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;
.super Ljava/lang/Object;
.source "CognitoUserPool.java"


# static fields
.field private static final b:Lcom/amazonaws/logging/Log;

.field private static final l:Ljava/lang/String; = "CognitoIdentityProviderCache"


# instance fields
.field a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-class v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .registers 5

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Z

    .line 120
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->k:Z

    .line 180
    :try_start_8
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Landroid/content/Context;)V

    const-string v0, "CognitoUserPool"

    .line 182
    invoke-virtual {p2, v0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f:Landroid/content/Context;

    const-string v1, "PoolId"

    .line 184
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c:Ljava/lang/String;

    const-string v1, "AppClientId"

    .line 185
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    const-string v1, "AppClientSecret"

    .line 186
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Ljava/lang/String;

    const-string v1, "PinpointAppId"

    .line 187
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoPinpointSharedContext;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i:Ljava/lang/String;

    .line 189
    new-instance p1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {p1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    .line 190
    invoke-virtual {p2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/ClientConfiguration;->a(Ljava/lang/String;)V

    .line 191
    new-instance p2, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {p2, v1, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 192
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    const-string p2, "Region"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/regions/Region;->a(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/regions/Region;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_62} :catch_63

    return-void

    :catch_63
    move-exception p1

    .line 194
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to read PoolId, AppClientId, AppClientSecret, or Region from AWSConfiguration please check your setup or awsconfiguration.json file"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    new-instance v5, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v5}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    sget-object v6, Lcom/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazonaws/regions/Regions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    sget-object v6, Lcom/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazonaws/regions/Regions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 246
    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;Ljava/lang/String;)V
    .registers 9

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Z

    .line 120
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->k:Z

    .line 265
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Landroid/content/Context;)V

    .line 266
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f:Landroid/content/Context;

    .line 267
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c:Ljava/lang/String;

    .line 268
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    .line 269
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Ljava/lang/String;

    .line 270
    new-instance p2, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    new-instance p3, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {p3}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {p2, p3, p5}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 271
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-static {p6}, Lcom/amazonaws/regions/Region;->a(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/regions/Region;)V

    .line 272
    invoke-static {p1, p7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoPinpointSharedContext;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .registers 13

    .line 212
    new-instance v5, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v5}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Ljava/lang/String;)V
    .registers 15

    .line 228
    new-instance v5, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v5}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 288
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Ljava/lang/String;)V
    .registers 8

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Z

    .line 120
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->k:Z

    .line 304
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Landroid/content/Context;)V

    .line 305
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f:Landroid/content/Context;

    .line 306
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c:Ljava/lang/String;

    .line 307
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    .line 308
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Ljava/lang/String;

    .line 309
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 310
    invoke-static {p1, p6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoPinpointSharedContext;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;)Landroid/content/Context;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    .registers 5

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;"
        }
    .end annotation

    if-eqz p4, :cond_36

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_f
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 450
    new-instance v2, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    invoke-direct {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;-><init>()V

    .line 451
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->a(Ljava/lang/String;)V

    .line 452
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->c(Ljava/lang/String;)V

    .line 453
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_36
    const/4 v0, 0x0

    .line 458
    :cond_37
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Ljava/lang/String;

    invoke-static {p1, p4, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h:Ljava/lang/String;

    .line 461
    new-instance p4, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    invoke-direct {p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;-><init>()V

    .line 462
    invoke-virtual {p4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    move-result-object p4

    .line 463
    invoke-virtual {p4, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    move-result-object p2

    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    .line 464
    invoke-virtual {p2, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    move-result-object p2

    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h:Ljava/lang/String;

    .line 465
    invoke-virtual {p2, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    move-result-object p2

    .line 466
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->b()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    move-result-object p2

    .line 467
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->d(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    move-result-object p2

    .line 468
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    move-result-object p1

    .line 469
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7f

    .line 471
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 472
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->a(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 475
    :cond_7f
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 314
    new-instance v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "CognitoIdentityProviderCache"

    iget-boolean v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->k:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 317
    iget-boolean p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->k:Z

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
    .registers 11

    if-nez p1, :cond_7

    .line 515
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object p1

    return-object p1

    .line 518
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 519
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object p1

    return-object p1

    .line 522
    :cond_12
    new-instance v8, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Ljava/lang/String;

    .line 523
    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f:Landroid/content/Context;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Landroid/content/Context;)V

    return-object v8
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;",
            ")V"
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 399
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 346
    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Z

    return-void
.end method

.method protected b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;
    .registers 6

    .line 542
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Z

    if-eqz v0, :cond_1d

    .line 543
    invoke-static {}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->a()Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 546
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;-><init>()V

    .line 547
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;->a(Ljava/lang/String;)V

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;",
            ")V"
        }
    .end annotation

    .line 420
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    move-result-object p2

    .line 422
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object p1

    .line 423
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    new-instance p4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    .line 424
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object p2

    invoke-direct {p4, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    .line 423
    invoke-interface {p5, p1, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    .line 426
    invoke-interface {p5, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;->a(Ljava/lang/Exception;)V

    :goto_21
    return-void
.end method

.method public b(Z)V
    .registers 4

    .line 354
    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->k:Z

    .line 355
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    iget-boolean v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->k:Z

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Z)V

    .line 356
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Z)V

    return-void
.end method

.method public c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
    .registers 3

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CognitoIdentityProvider."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".LastAuthUser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 487
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    return-object v0

    .line 489
    :cond_2b
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
    .registers 10

    .line 499
    new-instance v8, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Landroid/content/Context;)V

    return-object v8
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    .line 532
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i:Ljava/lang/String;

    return-object v0
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool.AnonymousClass1 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;
.super Ljava/lang/Object;
.source "CognitoUserPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;

.field final synthetic f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V
    .registers 7

    .line 372
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 375
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 378
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->d:Ljava/util/Map;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    move-result-object v1

    .line 380
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v2

    .line 381
    new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception v1

    .line 390
    new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$2;

    invoke-direct {v3, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;Ljava/lang/Exception;)V

    .line 397
    :goto_31
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool.AnonymousClass1.RunnableC00221 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool$1$1)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;
.super Ljava/lang/Object;
.source "CognitoUserPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;)V
    .registers 4

    .line 381
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 384
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    invoke-virtual {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    .line 386
    invoke-virtual {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    .line 384
    invoke-interface {v0, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V

    return-void
.end method

###### Class com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool.AnonymousClass1.AnonymousClass2 (com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool$1$2)
.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$2;
.super Ljava/lang/Object;
.source "CognitoUserPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;Ljava/lang/Exception;)V
    .registers 3

    .line 390
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method

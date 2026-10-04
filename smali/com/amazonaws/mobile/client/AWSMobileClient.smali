###### Class com.amazonaws.mobile.client.AWSMobileClient (com.amazonaws.mobile.client.AWSMobileClient)
.class public final Lcom/amazonaws/mobile/client/AWSMobileClient;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;,
        Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;,
        Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "GoogleSignIn"

.field private static final B:Ljava/lang/String; = "ClientId-WebApp"

.field private static volatile C:Lcom/amazonaws/mobile/client/AWSMobileClient; = null

.field public static final a:Ljava/lang/String; = "AWSMobileClient"

.field static final b:Ljava/lang/String; = "com.amazonaws.mobile.client"

.field static final c:Ljava/lang/String; = "provider"

.field static final d:Ljava/lang/String; = "token"

.field static final e:Ljava/lang/String; = "cognitoIdentityId"

.field static final f:Ljava/lang/String; = "signInMode"

.field public static final g:Ljava/lang/String; = "hostedUI"

.field static final h:Ljava/lang/String; = "isFederationEnabled"

.field private static final w:Ljava/lang/String; = "AWSMobileClient"

.field private static final x:Ljava/lang/String; = "customRoleArn"

.field private static final y:Ljava/lang/String; = "CognitoUserPool"

.field private static final z:Ljava/lang/String; = "FacebookSignIn"


# instance fields
.field private final D:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/config/AWSConfigurable;",
            ">;",
            "Lcom/amazonaws/mobile/config/AWSConfigurable;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field private F:Lcom/amazonaws/mobile/client/UserStateDetails;

.field private G:Ljava/util/concurrent/locks/Lock;

.field private volatile H:Ljava/util/concurrent/CountDownLatch;

.field private I:Lcom/amazonaws/mobile/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignInResult;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

.field private K:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

.field private L:Lcom/amazonaws/mobile/client/results/SignInState;

.field private M:Lcom/amazonaws/mobile/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

.field private O:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field private P:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field private Q:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

.field private R:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

.field private S:Lcom/amazonaws/mobile/client/AWSStartupHandler;

.field private T:Z

.field private U:Ljava/lang/Object;

.field private volatile V:Ljava/util/concurrent/CountDownLatch;

.field private W:Ljava/lang/Object;

.field private X:Ljava/lang/Object;

.field private Y:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

.field private Z:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

.field i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

.field j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

.field k:Ljava/lang/String;

.field l:Landroid/content/Context;

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/mobile/client/UserStateListener;",
            ">;"
        }
    .end annotation
.end field

.field p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

.field q:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

.field r:Lcom/amazonaws/mobile/client/DeviceOperations;

.field s:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

.field t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

.field u:Ljava/lang/String;

.field v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Z

    .line 312
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->C:Lcom/amazonaws/mobile/client/AWSMobileClient;

    if-nez v1, :cond_47

    .line 315
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->D:Ljava/util/LinkedHashMap;

    const-string v1, ""

    .line 316
    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/lang/String;

    .line 317
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->G:Ljava/util/concurrent/locks/Lock;

    .line 318
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->m:Ljava/util/Map;

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->o:Ljava/util/List;

    .line 320
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->U:Ljava/lang/Object;

    .line 321
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->W:Ljava/lang/Object;

    .line 322
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->V:Ljava/util/concurrent/CountDownLatch;

    .line 323
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->X:Ljava/lang/Object;

    return-void

    .line 313
    :cond_47
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic B()Ljava/lang/String;
    .registers 1

    .line 164
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    return-object v0
.end method

.method private C()Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
            "Lcom/amazonaws/auth/AWSCredentials;",
            ">;"
        }
    .end annotation

    .line 405
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V

    return-object v0
.end method

.method private D()V
    .registers 8

    .line 3129
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v1, "Using the SignInProviderConfig supplied by the user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v0

    .line 3132
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Q:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_49

    aget-object v4, v1, v3

    .line 3133
    invoke-virtual {v4}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/lang/Class;)V

    .line 3134
    invoke-virtual {v4}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->b()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 3135
    const-class v5, Lcom/amazonaws/mobile/auth/facebook/FacebookSignInProvider;

    invoke-virtual {v4}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 3136
    invoke-virtual {v4}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->b()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/mobile/auth/facebook/FacebookSignInProvider;->setPermissions([Ljava/lang/String;)V

    .line 3138
    :cond_33
    const-class v5, Lcom/amazonaws/mobile/auth/google/GoogleSignInProvider;

    invoke-virtual {v4}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 3139
    invoke-virtual {v4}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->b()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/mobile/auth/google/GoogleSignInProvider;->setPermissions([Ljava/lang/String;)V

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_49
    return-void
.end method

.method private E()V
    .registers 3

    .line 3150
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v1, "Using the SignInProviderConfig from `awsconfiguration.json`."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v0

    const-string v1, "CognitoUserPool"

    .line 3153
    invoke-direct {p0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3154
    const-class v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/lang/Class;)V

    :cond_18
    const-string v1, "FacebookSignIn"

    .line 3157
    invoke-direct {p0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3158
    const-class v1, Lcom/amazonaws/mobile/auth/facebook/FacebookSignInProvider;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/lang/Class;)V

    :cond_25
    const-string v1, "GoogleSignIn"

    .line 3161
    invoke-direct {p0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3162
    const-class v1, Lcom/amazonaws/mobile/auth/google/GoogleSignInProvider;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/lang/Class;)V

    :cond_32
    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->I:Lcom/amazonaws/mobile/client/Callback;

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/results/SignInState;)Lcom/amazonaws/mobile/client/results/SignInState;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->L:Lcom/amazonaws/mobile/client/results/SignInState;

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/mobile/config/AWSConfiguration;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Y:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->O:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->K:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->N:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->J:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;)Ljava/lang/Object;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->X:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/Tokens;",
            ">;Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1513
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient$8;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Z)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/FederatedSignInOptions;Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/FederatedSignInOptions;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1387
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1389
    :try_start_5
    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v1, "_federatedSignIn: Putting provider and token in store"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    .line 1393
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 1394
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isFederationEnabled"

    const-string v2, "true"

    .line 1395
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    sget-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->DEVELOPER:Lcom/amazonaws/mobile/client/IdentityProvider;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobile/client/IdentityProvider;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    if-nez p3, :cond_40

    .line 1398
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Developer authenticated identities require theidentity id to be specified in FederatedSignInOptions"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :cond_40
    const-string v1, "cognitoIdentityId"

    .line 1401
    invoke-virtual {p3}, Lcom/amazonaws/mobile/client/FederatedSignInOptions;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    if-eqz p3, :cond_5e

    .line 1403
    invoke-virtual {p3}, Lcom/amazonaws/mobile/client/FederatedSignInOptions;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "customRoleArn"

    .line 1404
    invoke-virtual {p3}, Lcom/amazonaws/mobile/client/FederatedSignInOptions;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    :cond_5e
    iget-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    invoke-virtual {p3, v0}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/util/Map;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception p3

    .line 1408
    invoke-interface {p4, p3}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 1411
    :goto_68
    new-instance p3, Lcom/amazonaws/mobile/client/AWSMobileClient$7;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobile/client/AWSMobileClient$7;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object p3
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->V:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;)V
    .registers 4

    .line 3194
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v0

    .line 3195
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;)V
    .registers 5

    .line 3107
    :try_start_0
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v1, "Fetching the Cognito Identity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    new-instance v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;-><init>(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    .line 3111
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V

    .line 3112
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Q:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

    if-nez v0, :cond_19

    .line 3113
    invoke-direct {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->E()V

    goto :goto_1c

    .line 3115
    :cond_19
    invoke-direct {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->D()V

    .line 3117
    :goto_1c
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Landroid/app/Activity;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p1

    .line 3119
    sget-object p2, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v0, "Error occurred in fetching the Cognito Identity and resuming the auth session"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-void
.end method

.method private a(Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;)V
    .registers 3

    .line 3016
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->a()Lcom/amazonaws/mobile/config/AWSConfiguration;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3017
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->a()Lcom/amazonaws/mobile/config/AWSConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 3020
    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->b()[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3021
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->b()[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Q:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

    .line 3025
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->c()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->R:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Landroid/content/Context;Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_29

    .line 3027
    :catch_22
    sget-object p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v0, "Error in initializing the AWSMobileClient. Check if AWS Cloud Config `awsconfiguration.json` is present in the application."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;)V
    .registers 2

    .line 164
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;)Z
    .registers 2

    .line 164
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->M:Lcom/amazonaws/mobile/client/Callback;

    return-object p1
.end method

.method private b(Lcom/amazonaws/mobile/client/SignOutOptions;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/SignOutOptions;",
            ")",
            "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1247
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$6;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/SignOutOptions;)V

    return-object v0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/config/AWSConfiguration;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Z:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    return-object p1
.end method

.method private b(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazonaws/mobile/client/SignInUIOptions;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 2575
    invoke-virtual {p2}, Lcom/amazonaws/mobile/client/SignInUIOptions;->e()Lcom/amazonaws/mobile/client/HostedUIOptions;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2576
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2578
    new-instance p1, Lcom/amazonaws/mobile/client/AWSMobileClient$21;

    invoke-direct {p1, p0, p3}, Lcom/amazonaws/mobile/client/AWSMobileClient$21;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)V

    return-object p1

    :cond_12
    const-string v1, "TokenURI"

    const/4 v2, 0x0

    .line 2585
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2586
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    .line 2588
    :cond_20
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    .line 2591
    :cond_25
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignInResult;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1093
    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->I:Lcom/amazonaws/mobile/client/Callback;

    const/4 v0, 0x0

    .line 1094
    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->L:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 1096
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobile/client/AWSMobileClient$5;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignUpResult;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1670
    new-instance v7, Lcom/amazonaws/mobile/client/AWSMobileClient$9;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobile/client/AWSMobileClient$9;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)V

    return-object v7
.end method

.method public static declared-synchronized c()Lcom/amazonaws/mobile/client/AWSMobileClient;
    .registers 2

    const-class v0, Lcom/amazonaws/mobile/client/AWSMobileClient;

    monitor-enter v0

    .line 332
    :try_start_3
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->C:Lcom/amazonaws/mobile/client/AWSMobileClient;

    if-nez v1, :cond_e

    .line 333
    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-direct {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;-><init>()V

    sput-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->C:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 335
    :cond_e
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->C:Lcom/amazonaws/mobile/client/AWSMobileClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 331
    monitor-exit v0

    throw v1
.end method

.method private c(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazonaws/mobile/client/SignInUIOptions;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 2597
    new-instance p1, Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    invoke-direct {p1, p0, p2, p3}, Lcom/amazonaws/mobile/client/AWSMobileClient$22;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)V

    return-object p1
.end method

.method private c(Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignInResult;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 2051
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$16;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic c(Lcom/amazonaws/mobile/client/AWSMobileClient;)V
    .registers 1

    .line 164
    invoke-direct {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->E()V

    return-void
.end method

.method private d(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazonaws/mobile/client/SignInUIOptions;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 2732
    new-instance p1, Lcom/amazonaws/mobile/client/AWSMobileClient$23;

    invoke-direct {p1, p0, p2, p3}, Lcom/amazonaws/mobile/client/AWSMobileClient$23;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)V

    return-object p1
.end method

.method private d(Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;",
            ">;>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 2158
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$18;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic d(Lcom/amazonaws/mobile/client/AWSMobileClient;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->V:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic e(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->I:Lcom/amazonaws/mobile/client/Callback;

    return-object p0
.end method

.method private e(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazonaws/mobile/client/SignInUIOptions;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 2875
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$24;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Lcom/amazonaws/mobile/client/SignInUIOptions;Landroid/app/Activity;)V

    return-object v0
.end method

.method private e(Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 2104
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$17;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$17;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignUpResult;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1788
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient$11;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 3173
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "GoogleSignIn"

    .line 3174
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    const-string v2, "ClientId-WebApp"

    .line 3175
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_20

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    :cond_1c
    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0

    .line 3180
    :catch_20
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found in `awsconfiguration.json`"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static synthetic f(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/results/SignInState;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->L:Lcom/amazonaws/mobile/client/results/SignInState;

    return-object p0
.end method

.method private f(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1832
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$12;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic g(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Z:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    return-object p0
.end method

.method private g(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignInResult;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1979
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$15;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic h(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->M:Lcom/amazonaws/mobile/client/Callback;

    return-object p0
.end method

.method private h(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 2225
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$19;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$19;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;)V

    return-object v0
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignUpResult;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1736
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazonaws/mobile/client/AWSMobileClient$10;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V

    return-object v0
.end method

.method static synthetic i(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->N:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    return-object p0
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1901
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient$13;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    if-eqz p2, :cond_32

    .line 1061
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_32

    .line 1064
    :cond_9
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 1065
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasFederatedToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_32
    :goto_32
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic j(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->J:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    return-object p0
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1939
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazonaws/mobile/client/AWSMobileClient$14;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V

    return-object v0
.end method

.method static synthetic k(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->K:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    return-object p0
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 2317
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient$20;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic l(Lcom/amazonaws/mobile/client/AWSMobileClient;)Ljava/lang/Object;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->U:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public A()Lcom/amazonaws/auth/AWSCredentialsProvider;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3070
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 3073
    :cond_7
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->P:Lcom/amazonaws/auth/AWSCredentialsProvider;

    if-eqz v0, :cond_e

    .line 3074
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->P:Lcom/amazonaws/auth/AWSCredentialsProvider;

    return-object v0

    .line 3076
    :cond_e
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e()Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/amazonaws/auth/AWSCredentials;
    .registers 5

    .line 350
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 351
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d()Lcom/amazonaws/auth/AWSCredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    return-object v0

    .line 354
    :cond_13
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz v0, :cond_51

    .line 359
    :try_start_17
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 360
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v1, "getCredentials: Validated user is signed-in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_24
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v2, "cognitoIdentityId"

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v3}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_17 .. :try_end_37} :catch_41
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_37} :catch_38

    return-object v0

    :catch_38
    move-exception v0

    .line 370
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Failed to get credentials from Cognito Identity"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_41
    move-exception v0

    .line 367
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v2, "getCredentials: Failed to getCredentials from Cognito Identity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Failed to get credentials from Cognito Identity"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 355
    :cond_51
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Cognito Identity not configured"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/amazonaws/mobile/client/AWSStartupHandler;)Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2992
    new-instance v0, Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/mobile/config/AWSConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const/4 v0, 0x0

    .line 2993
    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Q:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

    .line 2994
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$26;

    invoke-direct {v0, p0, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient$26;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/AWSStartupHandler;)V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->R:Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;

    .line 3005
    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->S:Lcom/amazonaws/mobile/client/AWSStartupHandler;

    const/4 p2, 0x1

    .line 3006
    iput-boolean p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->T:Z

    .line 3007
    new-instance p2, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;

    invoke-direct {p2, p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Landroid/content/Context;)V

    return-object p2
.end method

.method public a(Landroid/app/Activity;)Lcom/amazonaws/mobile/client/UserStateDetails;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2541
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 2542
    invoke-static {}, Lcom/amazonaws/mobile/client/SignInUIOptions;->f()Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->a()Lcom/amazonaws/mobile/client/SignInUIOptions;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    return-object p1
.end method

.method public a(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;)Lcom/amazonaws/mobile/client/UserStateDetails;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2568
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 2569
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/mobile/client/UserStateDetails;
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1330
    new-instance v6, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v6}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v6

    .line 1331
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/FederatedSignInOptions;Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/FederatedSignInOptions;)Lcom/amazonaws/mobile/client/UserStateDetails;
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1365
    new-instance v6, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v6}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    .line 1366
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/FederatedSignInOptions;Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    return-object p1
.end method

.method protected a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;
    .registers 10

    .line 934
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->t()Ljava/util/Map;

    move-result-object v0

    const-string v1, "provider"

    .line 935
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "token"

    .line 936
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 937
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->w()Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 938
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->u()Ljava/lang/String;

    move-result-object v3

    .line 940
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->v()Z

    move-result v4

    .line 941
    sget-object v5, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v6, "Inspecting user state details"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    if-eqz v1, :cond_2d

    if-eqz v2, :cond_2d

    const/4 v6, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v6, 0x0

    :goto_2e
    const/4 v7, 0x0

    if-nez p1, :cond_168

    .line 946
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_168

    :cond_3b
    if-eqz v6, :cond_b8

    .line 959
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    if-nez v4, :cond_48

    goto :goto_94

    .line 968
    :cond_48
    :try_start_48
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i()Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 969
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 970
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->e()Ljava/lang/String;

    move-result-object p1

    .line 971
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v4, "Token was refreshed using drop-in UI internal mechanism"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_68
    move-object p1, v2

    :goto_69
    if-nez p1, :cond_7a

    .line 975
    sget-object p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v1, "Token used for federation has become null"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_FEDERATED_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 980
    :cond_7a
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 981
    sget-object p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v1, "getUserStateDetails: token already federated just fetch credentials"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz p1, :cond_94

    .line 983
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    goto :goto_94

    .line 986
    :cond_91
    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :cond_94
    :goto_94
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_9b} :catch_9c

    return-object p1

    :catch_9c
    move-exception p1

    .line 992
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v2, "Failed to federate the tokens."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 993
    instance-of p1, p1, Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException;

    if-eqz p1, :cond_b0

    .line 994
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_FEDERATED_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 996
    :cond_b0
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    :cond_b8
    if-eqz v6, :cond_14a

    .line 999
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    if-eqz p1, :cond_14a

    .line 1003
    :try_start_be
    invoke-virtual {p0, v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Z)Lcom/amazonaws/mobile/client/results/Tokens;

    move-result-object p1
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c2} :catch_113
    .catchall {:try_start_be .. :try_end_c2} :catchall_110

    .line 1004
    :try_start_c2
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/results/Tokens;->b()Lcom/amazonaws/mobile/client/results/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/results/Token;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_ca} :catch_10c
    .catchall {:try_start_c2 .. :try_end_ca} :catchall_10a

    :try_start_ca
    const-string v3, "token"

    .line 1005
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_d2

    goto :goto_f2

    .line 1010
    :cond_d2
    invoke-direct {p0, v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d6} :catch_108
    .catchall {:try_start_ca .. :try_end_d6} :catchall_106

    if-eqz v3, :cond_eb

    .line 1012
    :try_start_d8
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz v1, :cond_f2

    .line 1013
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e1} :catch_e2
    .catchall {:try_start_d8 .. :try_end_e1} :catchall_106

    goto :goto_f2

    :catch_e2
    move-exception v1

    .line 1016
    :try_start_e3
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v4, "Failed to get or refresh credentials from Cognito Identity"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f2

    .line 1019
    :cond_eb
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz v3, :cond_f2

    .line 1020
    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_f2} :catch_108
    .catchall {:try_start_e3 .. :try_end_f2} :catchall_106

    :cond_f2
    :goto_f2
    if-eqz p1, :cond_fe

    if-eqz v2, :cond_fe

    .line 1028
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 1030
    :cond_fe
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    :catchall_106
    nop

    goto :goto_136

    :catch_108
    move-exception v1

    goto :goto_10e

    :catchall_10a
    move-object v2, v7

    goto :goto_136

    :catch_10c
    move-exception v1

    move-object v2, v7

    :goto_10e
    move-object v7, p1

    goto :goto_115

    :catchall_110
    move-object p1, v7

    move-object v2, p1

    goto :goto_136

    :catch_113
    move-exception v1

    move-object v2, v7

    .line 1024
    :goto_115
    :try_start_115
    sget-object p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    if-nez v7, :cond_11c

    const-string v3, "Tokens are invalid, please sign-in again."

    goto :goto_11e

    :cond_11c
    const-string v3, "Failed to federate the tokens"

    :goto_11e
    invoke-static {p1, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_121
    .catchall {:try_start_115 .. :try_end_121} :catchall_135

    if-eqz v7, :cond_12d

    if-eqz v2, :cond_12d

    .line 1028
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 1030
    :cond_12d
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    :catchall_135
    move-object p1, v7

    :goto_136
    if-eqz p1, :cond_142

    if-eqz v2, :cond_142

    .line 1028
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 1030
    :cond_142
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 1034
    :cond_14a
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-nez p1, :cond_156

    .line 1035
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    :cond_156
    if-eqz v3, :cond_160

    .line 1037
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->GUEST:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 1039
    :cond_160
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v0, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v0, v7}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    :cond_168
    :goto_168
    if-eqz v6, :cond_172

    .line 948
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    :cond_172
    if-eqz v3, :cond_17c

    .line 951
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->GUEST:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1

    .line 953
    :cond_17c
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v0, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    invoke-direct {p1, v0, v7}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazonaws/mobile/client/results/SignInResult;
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/mobile/client/results/SignInResult;"
        }
    .end annotation

    .line 1084
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 1085
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/SignInResult;

    return-object p1
.end method

.method public a(Ljava/util/Map;)Lcom/amazonaws/mobile/client/results/SignInResult;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/mobile/client/results/SignInResult;"
        }
    .end annotation

    .line 2044
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 2045
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/SignInResult;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/SignUpResult;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1782
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 1783
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/SignUpResult;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amazonaws/mobile/client/results/SignUpResult;
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/mobile/client/results/SignUpResult;"
        }
    .end annotation

    .line 1660
    new-instance v6, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v6}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    .line 1661
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/SignUpResult;

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/Class;)Lcom/amazonaws/mobile/config/AWSConfigurable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/config/AWSConfigurable;",
            ">;)",
            "Lcom/amazonaws/mobile/config/AWSConfigurable;"
        }
    .end annotation

    .line 3042
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving the client instance for class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->D:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobile/config/AWSConfigurable;

    if-nez v0, :cond_6d

    .line 3048
    :try_start_20
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobile/config/AWSConfigurable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-interface {v1, p1, v2}, Lcom/amazonaws/mobile/config/AWSConfigurable;->a(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/mobile/config/AWSConfigurable;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_52

    .line 3049
    :try_start_30
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->D:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3050
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created the new client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4f} :catch_50

    goto :goto_6e

    :catch_50
    move-exception v0

    goto :goto_56

    :catch_52
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 3053
    :goto_56
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred in creating and initializing client. Check the context and the clientClass passed in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    :cond_6d
    move-object p1, v0

    :goto_6e
    return-object p1
.end method

.method a(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;
    .registers 7

    const-string v0, "Scopes"

    .line 672
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 673
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 674
    :goto_d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1d

    .line 675
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 678
    :cond_1d
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Landroid/content/Context;

    .line 679
    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setApplicationContext(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->u:Ljava/lang/String;

    .line 680
    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setUserPoolId(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v0

    const-string v3, "AppClientId"

    .line 681
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAppClientId(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v0

    const-string v3, "AppClientSecret"

    const/4 v4, 0x0

    .line 682
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAppClientSecret(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v0

    const-string v3, "WebDomain"

    .line 683
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAppCognitoWebDomain(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v0

    const-string v3, "SignInRedirectURI"

    .line 684
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setSignInRedirect(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v0

    const-string v3, "SignOutRedirectURI"

    .line 685
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setSignOutRedirect(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v0

    .line 686
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setScopes(Ljava/util/Set;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v0

    .line 687
    invoke-virtual {v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAdvancedSecurityDataCollection(Z)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v0

    const-string v1, "IdentityProvider"

    .line 688
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setIdentityProvider(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v0

    const-string v1, "IdpIdentifier"

    .line 689
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setIdpIdentifier(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 2530
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2531
    invoke-static {}, Lcom/amazonaws/mobile/client/SignInUIOptions;->f()Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/mobile/client/SignInUIOptions$Builder;->a()Lcom/amazonaws/mobile/client/SignInUIOptions;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 5
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazonaws/mobile/client/SignInUIOptions;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 2555
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2556
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 438
    new-instance v0, Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-direct {v0, p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 5
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazonaws/mobile/config/AWSConfiguration;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 443
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 444
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3090
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->P:Lcom/amazonaws/auth/AWSCredentialsProvider;

    return-void
.end method

.method public a(Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/auth/AWSCredentials;",
            ">;)V"
        }
    .end annotation

    .line 401
    invoke-direct {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->C()Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public a(Lcom/amazonaws/mobile/client/SignOutOptions;)V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1227
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Lcom/amazonaws/mobile/client/SignOutOptions;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/amazonaws/mobile/client/SignOutOptions;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/SignOutOptions;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1243
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Lcom/amazonaws/mobile/client/SignOutOptions;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method protected a(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    .registers 7

    .line 719
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->F:Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-virtual {p1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 720
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->F:Lcom/amazonaws/mobile/client/UserStateDetails;

    if-eqz v0, :cond_34

    .line 723
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->o:Ljava/util/List;

    monitor-enter v0

    .line 724
    :try_start_f
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobile/client/UserStateListener;

    .line 725
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/amazonaws/mobile/client/AWSMobileClient$3;

    invoke-direct {v4, p0, v2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$3;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/UserStateListener;Lcom/amazonaws/mobile/client/UserStateDetails;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 730
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_15

    .line 732
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw p1

    :cond_34
    :goto_34
    return-void
.end method

.method public a(Lcom/amazonaws/mobile/client/UserStateListener;)V
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->o:Ljava/util/List;

    monitor-enter v0

    .line 836
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignUpResult;",
            ">;)V"
        }
    .end annotation

    .line 1769
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 1770
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 11
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 1315
    new-instance v6, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v6, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v6

    .line 1316
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/FederatedSignInOptions;Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/FederatedSignInOptions;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 12
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/FederatedSignInOptions;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 1348
    new-instance v6, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v6, p4}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    .line 1349
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/FederatedSignInOptions;Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 6
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignInResult;",
            ">;)V"
        }
    .end annotation

    .line 1075
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p4}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 1076
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 13
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignUpResult;",
            ">;)V"
        }
    .end annotation

    .line 1639
    new-instance v6, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v6, p5}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    .line 1640
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignInResult;",
            ">;)V"
        }
    .end annotation

    .line 2029
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2030
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.support.v4.content.ContextCompat"

    .line 745
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 746
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_c} :catch_f

    if-eqz v1, :cond_17

    return v0

    :catch_f
    move-exception v1

    .line 752
    sget-object v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v3, "Could not check if ACCESS_NETWORK_STATE permission is available."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :try_start_17
    const-string v1, "connectivity"

    .line 757
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 758
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 759
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_29} :catch_2d

    if-eqz p1, :cond_35

    const/4 p1, 0x1

    return p1

    :catch_2d
    move-exception p1

    .line 763
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v2, "Could not access network state"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    return v0
.end method

.method public a(Landroid/content/Intent;)Z
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 2511
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Z:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 2512
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Z:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->getTokens(Landroid/net/Uri;)V

    return v1

    .line 2515
    :cond_f
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->b(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_20

    return v1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;)Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2967
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$25;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$25;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->S:Lcom/amazonaws/mobile/client/AWSStartupHandler;

    .line 2974
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->S:Lcom/amazonaws/mobile/client/AWSStartupHandler;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Landroid/content/Context;Lcom/amazonaws/mobile/client/AWSStartupHandler;)Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1825
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 1826
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->f(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;

    return-object p1
.end method

.method protected b(Z)Lcom/amazonaws/mobile/client/results/Tokens;
    .registers 3

    .line 1507
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 1508
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/Tokens;

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazonaws/mobile/config/AWSConfiguration;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 452
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$2;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Lcom/amazonaws/mobile/config/AWSConfiguration;Landroid/content/Context;)V

    return-object v0
.end method

.method public b(Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;",
            ">;"
        }
    .end annotation

    .line 2151
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 2152
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public b()V
    .registers 4

    .line 376
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 377
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d()Lcom/amazonaws/auth/AWSCredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->b()V

    return-void

    .line 381
    :cond_12
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz v0, :cond_29

    .line 385
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b()V

    .line 386
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v1, "cognitoIdentityId"

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 382
    :cond_29
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Cognito Identity not configured"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 812
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->p()Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;",
            ">;)V"
        }
    .end annotation

    .line 1818
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 1819
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->f(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1370
    new-instance v6, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v6}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v6

    .line 1371
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/FederatedSignInOptions;Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 1377
    new-instance v6, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v6, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v6

    .line 1378
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/FederatedSignInOptions;Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;",
            ">;>;)V"
        }
    .end annotation

    .line 2137
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2138
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/amazonaws/mobile/client/UserStateListener;)Z
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->o:Ljava/util/List;

    monitor-enter v0

    .line 849
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_14

    .line 851
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 852
    monitor-exit v0

    return p1

    :cond_14
    const/4 p1, 0x0

    .line 854
    monitor-exit v0

    return p1

    :catchall_17
    move-exception p1

    .line 855
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public c(Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/SignInResult;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1972
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 1973
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/SignInResult;

    return-object p1
.end method

.method public c(Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/Tokens;",
            ">;)V"
        }
    .end annotation

    .line 1502
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    const/4 p1, 0x1

    .line 1503
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignInResult;",
            ">;)V"
        }
    .end annotation

    .line 1965
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 1966
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1456
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->W:Ljava/lang/Object;

    monitor-enter v0

    .line 1457
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 1458
    sget-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->DEVELOPER:Lcom/amazonaws/mobile/client/IdentityProvider;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobile/client/IdentityProvider;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1459
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->q:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v3, "cognitoIdentityId"

    invoke-virtual {v2, v3}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 1461
    :cond_1f
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->q:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->k()V

    .line 1464
    :goto_24
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v2, "customRoleArn"

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1465
    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1466
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v2, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b(Ljava/lang/String;)V

    .line 1469
    :cond_37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1470
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Ljava/util/Map;)V

    .line 1472
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b()V

    .line 1474
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string p2, "cognitoIdentityId"

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->p()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->m:Ljava/util/Map;

    .line 1477
    :cond_5e
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 5
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/SignUpResult;",
            ">;)V"
        }
    .end annotation

    .line 1714
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 1715
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->h(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/SignUpResult;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1728
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 1729
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->h(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/SignUpResult;

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2218
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 2219
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->h(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    return-object p1
.end method

.method public d()Lcom/amazonaws/mobile/config/AWSConfiguration;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    return-object v0
.end method

.method public d(Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2093
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2094
    invoke-direct {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;",
            ">;)V"
        }
    .end annotation

    .line 2205
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2206
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->h(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 5
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;",
            ">;)V"
        }
    .end annotation

    .line 1878
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 1879
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Lcom/amazonaws/auth/AWSCredentials;
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 396
    invoke-direct {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->C()Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1893
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 1894
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 5
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1923
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 1924
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 416
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 419
    :cond_f
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz v0, :cond_25

    .line 423
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    .line 425
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v1, "cognitoIdentityId"

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    return-object v0

    .line 420
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cognito Identity not configured"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1931
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 1932
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 5
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2266
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2267
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->k(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2280
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 2281
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->k(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 5
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2295
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2296
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->k(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method g()Z
    .registers 2

    .line 432
    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->T:Z

    return v0
.end method

.method h()Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->V:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2309
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 2310
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->k(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method

.method i()Lorg/json/JSONObject;
    .registers 4

    .line 632
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v1, "OAuth"

    .line 633
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    :try_start_12
    const-string v1, "OAuth"

    .line 635
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    .line 639
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v2, "getHostedUIJSONFromJSON: Failed to read config"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method j()Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    .line 647
    :try_start_1
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    .line 652
    :cond_8
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v3, "hostedUI"

    invoke-virtual {v2, v3}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_38

    .line 655
    :try_start_10
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_1f

    :catch_16
    move-exception v2

    .line 657
    :try_start_17
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v4, "Failed to parse HostedUI settings from store. Defaulting to awsconfiguration.json"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v0

    :goto_1f
    if-nez v3, :cond_37

    if-eqz v1, :cond_37

    .line 661
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v2, "hostedUI"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_37} :catch_38

    :cond_37
    return-object v3

    :catch_38
    move-exception v1

    .line 666
    sget-object v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v3, "getHostedUIJSON: Failed to read config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public k()Lcom/amazonaws/mobile/client/DeviceOperations;
    .registers 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/DeviceOperations;

    if-eqz v0, :cond_7

    .line 703
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/DeviceOperations;

    return-object v0

    .line 701
    :cond_7
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Please check if userpools is configured."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()V
    .registers 2
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->H:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_9

    .line 714
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->H:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_9
    return-void
.end method

.method m()Z
    .registers 4

    .line 770
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v2, "provider"

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x0

    .line 780
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v3, "provider"

    invoke-virtual {v2, v3}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 781
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    return-object v1

    :cond_1c
    return-object v0

    :catch_1d
    return-object v0
.end method

.method public o()Lcom/amazonaws/mobile/client/UserStateDetails;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 798
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->p()Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobile/client/UserStateDetails;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 800
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to retrieve user state."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method p()Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;"
        }
    .end annotation

    .line 816
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$4;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$4;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V

    return-object v0
.end method

.method q()Ljava/lang/String;
    .registers 2

    .line 859
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .registers 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x1

    .line 871
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v1

    .line 872
    sget-object v2, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->a:[I

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/UserStateDetails;->a()Lcom/amazonaws/mobile/client/UserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/UserState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_20

    .line 881
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown user state, please report this exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    const/4 v0, 0x0

    return v0

    :pswitch_1e
    return v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method protected s()Z
    .registers 7

    const/4 v0, 0x0

    .line 894
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 895
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->H:Ljava/util/concurrent/CountDownLatch;

    .line 896
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v1

    .line 897
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "waitForSignIn: userState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/UserStateDetails;->a()Lcom/amazonaws/mobile/client/UserState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {p0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 899
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->a:[I

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/UserStateDetails;->a()Lcom/amazonaws/mobile/client/UserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/UserState;->ordinal()I

    move-result v1

    aget v1, v3, v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_66
    .catchall {:try_start_1 .. :try_end_3b} :catchall_64

    packed-switch v1, :pswitch_data_7a

    goto :goto_6e

    .line 913
    :pswitch_3f
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 907
    :pswitch_45
    :try_start_45
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->H:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 908
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/UserStateDetails;->a()Lcom/amazonaws/mobile/client/UserState;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/UserState;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_58} :catch_66
    .catchall {:try_start_45 .. :try_end_58} :catchall_64

    .line 913
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :pswitch_5e
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :catchall_64
    move-exception v0

    goto :goto_74

    :catch_66
    move-exception v1

    .line 911
    :try_start_67
    sget-object v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Ljava/lang/String;

    const-string v3, "Exception when waiting for sign-in"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_64

    .line 913
    :goto_6e
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :goto_74
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 914
    throw v0

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_45
        :pswitch_45
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method t()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "provider"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "token"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method u()Ljava/lang/String;
    .registers 3

    .line 923
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v1, "cognitoIdentityId"

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v()Z
    .registers 3

    .line 1045
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v1, "isFederationEnabled"

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "true"

    .line 1048
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method w()Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    .registers 3

    .line 1056
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v1, "signInMode"

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->fromString(Ljava/lang/String;)Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    move-result-object v0

    return-object v0
.end method

.method public x()V
    .registers 5
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x0

    .line 1182
    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->n:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 1183
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    if-eqz v1, :cond_19

    .line 1184
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e()V

    .line 1185
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e()V

    .line 1187
    :cond_19
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-eqz v1, :cond_22

    .line 1188
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e()V

    .line 1190
    :cond_22
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 1191
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h()V

    .line 1193
    :cond_2f
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a()V

    .line 1195
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v2, "Auth"

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v2, "Auth"

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "OAuth"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1197
    :try_start_4e
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->E:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v2, "Auth"

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "OAuth"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_60} :catch_61

    goto :goto_66

    :catch_61
    move-exception v1

    .line 1199
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    .line 1201
    :goto_66
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Z:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    if-eqz v2, :cond_70

    .line 1202
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Z:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->signOut(Z)V

    .line 1204
    :cond_70
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    if-eqz v2, :cond_79

    .line 1205
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a()V

    .line 1207
    :cond_79
    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->Z:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    move-object v0, v1

    .line 1209
    :cond_7c
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v2, "hostedUI"

    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1210
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 1211
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->l()V

    return-void
.end method

.method public y()Lcom/amazonaws/mobile/client/results/Tokens;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1489
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    const/4 v1, 0x1

    .line 1490
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobile/client/results/Tokens;

    return-object v0
.end method

.method public z()Ljava/util/Map;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2099
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 2100
    invoke-direct {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$1;
.super Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.source "AWSMobileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->C()Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
        "Lcom/amazonaws/auth/AWSCredentials;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-direct {p0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/auth/AWSCredentials;
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 405
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$1;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass10 (com.amazonaws.mobile.client.AWSMobileClient$10)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$10;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->h(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic d:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 5

    .line 1736
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;->c:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1739
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;->b:Ljava/lang/String;

    new-instance v2, Lcom/amazonaws/mobile/client/AWSMobileClient$10$1;

    invoke-direct {v2, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$10$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$10;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Ljava/lang/String;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass10.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$10$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$10$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$10;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$10;)V
    .registers 2

    .line 1739
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 1742
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$10;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;->c:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Lcom/amazonaws/mobile/client/results/SignUpResult;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/amazonaws/mobile/client/results/SignUpResult;-><init>(ZLcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 1746
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$10;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 1751
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$10$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$10;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$10;->c:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass11 (com.amazonaws.mobile.client.AWSMobileClient$11)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$11;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4

    .line 1788
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$11;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$11;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$11;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1791
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$11;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$11;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient$11$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$11$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$11;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass11.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$11$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$11$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$11;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$11;)V
    .registers 2

    .line 1791
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$11$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V
    .registers 5

    .line 1794
    new-instance v0, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    .line 1795
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->a()Ljava/lang/String;

    move-result-object v1

    .line 1796
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->b()Ljava/lang/String;

    move-result-object v2

    .line 1797
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$11$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$11;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$11;->b:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Lcom/amazonaws/mobile/client/results/SignUpResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/mobile/client/results/SignUpResult;-><init>(ZLcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;)V

    invoke-interface {p1, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 1807
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$11$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$11;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$11;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass12 (com.amazonaws.mobile.client.AWSMobileClient$12)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$12;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->f(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;)V
    .registers 4

    .line 1832
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1835
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v1, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {v1, v2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;

    .line 1836
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$12;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass12.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$12$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$12;)V
    .registers 2

    .line 1836
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1839
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->h(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;

    sget-object v2, Lcom/amazonaws/mobile/client/results/ForgotPasswordState;->DONE:Lcom/amazonaws/mobile/client/results/ForgotPasswordState;

    invoke-direct {v1, v2}, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;-><init>(Lcom/amazonaws/mobile/client/results/ForgotPasswordState;)V

    .line 1840
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)V
    .registers 6

    .line 1845
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    .line 1846
    new-instance v0, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;

    sget-object v1, Lcom/amazonaws/mobile/client/results/ForgotPasswordState;->CONFIRMATION_CODE:Lcom/amazonaws/mobile/client/results/ForgotPasswordState;

    invoke-direct {v0, v1}, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;-><init>(Lcom/amazonaws/mobile/client/results/ForgotPasswordState;)V

    .line 1847
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    move-result-object p1

    .line 1848
    new-instance v1, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    .line 1849
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->a()Ljava/lang/String;

    move-result-object v2

    .line 1850
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->b()Ljava/lang/String;

    move-result-object v3

    .line 1851
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/results/ForgotPasswordResult;->a(Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;)V

    .line 1853
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->h(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 1858
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->h(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass13 (com.amazonaws.mobile.client.AWSMobileClient$13)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$13;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1901
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1904
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1905
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "confirmForgotPassword called before initiating forgotPassword"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 1909
    :cond_15
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->a(Ljava/lang/String;)V

    .line 1910
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->b(Ljava/lang/String;)V

    .line 1912
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v1, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {v1, v2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;

    .line 1913
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$13;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->b()V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass14 (com.amazonaws.mobile.client.AWSMobileClient$14)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$14;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->j(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic d:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 5

    .line 1939
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$14;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$14;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$14;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$14;->c:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1942
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$14;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$14;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$14;->b:Ljava/lang/String;

    new-instance v3, Lcom/amazonaws/mobile/client/AWSMobileClient$14$1;

    invoke-direct {v3, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$14$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$14;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass14.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$14$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$14$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$14;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$14;)V
    .registers 2

    .line 1945
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$14$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1948
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$14$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$14;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$14;->c:Lcom/amazonaws/mobile/client/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 1953
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$14$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$14;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$14;->c:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass15 (com.amazonaws.mobile.client.AWSMobileClient$15)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$15;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->g(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;)V
    .registers 4

    .line 1979
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1982
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->f(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/results/SignInState;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1983
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot call confirmMFA(String, Callback) without initiating sign-in. This call is used for SMS_MFA and NEW_PASSWORD_REQUIREDsign-in state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 1990
    :cond_15
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->b:[I

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->f(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/results/SignInState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/results/SignInState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_84

    .line 2006
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "confirmSignIn called on unsupported operation, please file a feature request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 2003
    :pswitch_33
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "confirmSignIn called after signIn has succeeded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 1997
    :pswitch_40
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->k(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->b:Ljava/lang/String;

    .line 1998
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;->b(Ljava/lang/String;)V

    .line 1999
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->k(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    move-result-object v0

    .line 2000
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v2, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {v2, v3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    invoke-static {v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;

    goto :goto_7d

    .line 1992
    :pswitch_60
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;->a(Ljava/lang/String;)V

    .line 1993
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    move-result-object v0

    .line 1994
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v2, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$15;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {v2, v3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    invoke-static {v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;

    :goto_7d
    if-eqz v0, :cond_82

    .line 2012
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/CognitoIdentityProviderContinuation;->b()V

    :cond_82
    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_60
        :pswitch_40
        :pswitch_33
    .end packed-switch
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass16 (com.amazonaws.mobile.client.AWSMobileClient$16)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$16;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/util/Map;)V
    .registers 4

    .line 2051
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2054
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->f(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/results/SignInState;

    move-result-object v0

    if-nez v0, :cond_15

    .line 2055
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot call confirmMFA(Map<String, String>, Callback) without initiating sign-in. This call is used for CUSTOM_CHALLENGE sign-in state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 2061
    :cond_15
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->b:[I

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->f(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/results/SignInState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/results/SignInState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8a

    .line 2079
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "confirmSignIn called on unsupported operation, please file a feature request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    :pswitch_33
    const/4 v0, 0x0

    .line 2076
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "confirmSignIn called after signIn has succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 2064
    :pswitch_3e
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Please use confirmSignIn(String, Callback) for SMS_MFA and NEW_PASSWORD_REQUIRED challenges"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 2068
    :pswitch_4a
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2069
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->k(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 2071
    :cond_72
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->k(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    move-result-object v0

    .line 2072
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v2, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$16;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {v2, v3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    invoke-static {v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;

    :goto_84
    if-eqz v0, :cond_89

    .line 2085
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/CognitoIdentityProviderContinuation;->b()V

    :cond_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3e
        :pswitch_33
        :pswitch_4a
    .end packed-switch
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass17 (com.amazonaws.mobile.client.AWSMobileClient$17)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$17;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3

    .line 2104
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$17;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$17;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2107
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$17;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2108
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$17;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Operation requires a signed-in state"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 2112
    :cond_15
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$17;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient$17$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$17$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$17;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass17.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$17$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$17$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GetDetailsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$17;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$17;)V
    .registers 2

    .line 2112
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$17$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;)V
    .registers 3

    .line 2115
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$17$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$17;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$17;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserDetails;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 2120
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$17$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$17;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$17;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass18 (com.amazonaws.mobile.client.AWSMobileClient$18)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$18;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/util/Map;)V
    .registers 4

    .line 2158
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2161
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2162
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Operation requires a signed-in state"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 2166
    :cond_15
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;-><init>()V

    .line 2167
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->b:Ljava/util/Map;

    if-eqz v1, :cond_40

    .line 2168
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2169
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 2173
    :cond_40
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v1

    new-instance v2, Lcom/amazonaws/mobile/client/AWSMobileClient$18$1;

    invoke-direct {v2, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$18$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$18;)V

    invoke-virtual {v1, v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass18.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$18$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$18$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/UpdateAttributesHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$18;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$18;)V
    .registers 2

    .line 2173
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 2189
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$18;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;",
            ">;)V"
        }
    .end annotation

    .line 2176
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    .line 2178
    new-instance v2, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    .line 2179
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->a()Ljava/lang/String;

    move-result-object v3

    .line 2180
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->b()Ljava/lang/String;

    move-result-object v4

    .line 2181
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2184
    :cond_2a
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$18$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$18;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$18;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass19 (com.amazonaws.mobile.client.AWSMobileClient$19)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$19;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->h(Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;)V
    .registers 4

    .line 2225
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$19;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$19;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$19;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2228
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$19;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2229
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$19;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Operation requires a signed-in state"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 2233
    :cond_15
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$19;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$19;->b:Ljava/lang/String;

    new-instance v2, Lcom/amazonaws/mobile/client/AWSMobileClient$19$1;

    invoke-direct {v2, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$19$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$19;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass19.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$19$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$19$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$19;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$19;)V
    .registers 2

    .line 2235
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$19$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V
    .registers 6

    .line 2238
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$19$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$19;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$19;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    .line 2239
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->a()Ljava/lang/String;

    move-result-object v2

    .line 2240
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->b()Ljava/lang/String;

    move-result-object v3

    .line 2241
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 2247
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$19$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$19;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$19;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass2 (com.amazonaws.mobile.client.AWSMobileClient$2)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$2;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Lcom/amazonaws/mobile/config/AWSConfiguration;Landroid/content/Context;)V
    .registers 5

    .line 452
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 454
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 455
    :try_start_7
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/config/AWSConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 456
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v3, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 457
    monitor-exit v0

    return-void

    .line 460
    :cond_1d
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-boolean v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Z
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_2d4

    .line 464
    :try_start_21
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v3, "Auth"

    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v3, "Auth"

    .line 465
    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "Persistence"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 466
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v4, "Auth"

    .line 467
    invoke-virtual {v3, v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Persistence"

    .line 468
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4d} :catch_2c5
    .catchall {:try_start_21 .. :try_end_4d} :catchall_2d4

    .line 476
    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Landroid/content/Context;

    .line 477
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v3, Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-direct {v3, v4}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V

    iput-object v3, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    .line 479
    new-instance v1, Lcom/amazonaws/mobile/auth/core/IdentityManager;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v3, v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/amazonaws/mobile/auth/core/IdentityManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 480
    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b(Z)V

    .line 481
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    .line 482
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-boolean v4, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Z

    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Z)V

    .line 483
    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V

    .line 484
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v4}, Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Lcom/amazonaws/mobile/client/AWSMobileClient;)V

    .line 485
    new-instance v4, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;

    invoke-direct {v4, p0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$2;Lcom/amazonaws/mobile/auth/core/IdentityManager;)V

    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;)V

    .line 518
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v4, "CredentialsProvider"

    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_133

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v4, "CredentialsProvider"

    .line 519
    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "CognitoIdentity"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_a3
    .catchall {:try_start_4d .. :try_end_a3} :catchall_2d4

    if-eqz v1, :cond_133

    .line 521
    :try_start_a5
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v4, "CredentialsProvider"

    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "CognitoIdentity"

    .line 522
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-virtual {v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "PoolId"

    .line 523
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Region"

    .line 524
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    new-instance v5, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v5}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    .line 526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AWSMobileClient "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-virtual {v7}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazonaws/ClientConfiguration;->a(Ljava/lang/String;)V

    .line 527
    new-instance v5, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v6, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v6}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v5, v6}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 529
    invoke-static {v1}, Lcom/amazonaws/regions/Region;->a(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->a(Lcom/amazonaws/regions/Region;)V

    .line 530
    iget-object v6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v7, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v4, v5}, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    iput-object v7, v6, Lcom/amazonaws/mobile/client/AWSMobileClient;->q:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    .line 532
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v5, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    iget-object v6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v6, v6, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Landroid/content/Context;

    iget-object v7, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v7, v7, Lcom/amazonaws/mobile/client/AWSMobileClient;->q:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    .line 533
    invoke-static {v1}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object v1

    invoke-direct {v5, v6, v7, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;-><init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V

    iput-object v5, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 534
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-boolean v4, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Z

    invoke-virtual {v1, v4}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Z)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_123} :catch_124
    .catchall {:try_start_a5 .. :try_end_123} :catchall_2d4

    goto :goto_133

    :catch_124
    move-exception v1

    .line 536
    :try_start_125
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to initialize Cognito Identity; please check your awsconfiguration.json"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 537
    monitor-exit v0

    return-void

    .line 541
    :cond_133
    :goto_133
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    const-string v4, "CognitoUserPool"

    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_13b
    .catchall {:try_start_125 .. :try_end_13b} :catchall_2d4

    if-eqz v1, :cond_1fe

    .line 544
    :try_start_13d
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const-string v5, "PoolId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->u:Ljava/lang/String;

    const-string v4, "AppClientId"

    .line 545
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "AppClientSecret"

    .line 546
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 547
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->c:Landroid/content/Context;

    const-string v5, "PinpointAppId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoPinpointSharedContext;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 549
    new-instance v4, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v4}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    .line 550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AWSMobileClient "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-virtual {v6}, Lcom/amazonaws/mobile/config/AWSConfiguration;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/ClientConfiguration;->a(Ljava/lang/String;)V

    .line 551
    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v6, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    new-instance v7, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v7}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v6, v7, v4}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    iput-object v6, v5, Lcom/amazonaws/mobile/client/AWSMobileClient;->s:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 553
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v4, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->s:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    const-string v5, "Region"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/regions/Region;->a(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/regions/Region;)V

    .line 555
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const-string v5, "cognito-idp.%s.amazonaws.com/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Region"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "PoolId"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/lang/String;

    .line 557
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v6, v5, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Landroid/content/Context;

    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v7, v5, Lcom/amazonaws/mobile/client/AWSMobileClient;->u:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v10, v5, Lcom/amazonaws/mobile/client/AWSMobileClient;->s:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 558
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-boolean v4, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Z

    invoke-virtual {v1, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b(Z)V

    .line 560
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v4, Lcom/amazonaws/mobile/client/DeviceOperations;

    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v6, v6, Lcom/amazonaws/mobile/client/AWSMobileClient;->s:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/mobile/client/DeviceOperations;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;)V

    iput-object v4, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/DeviceOperations;
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_1ee} :catch_1ef
    .catchall {:try_start_13d .. :try_end_1ee} :catchall_2d4

    goto :goto_1fe

    :catch_1ef
    move-exception v1

    .line 563
    :try_start_1f0
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to initialize Cognito Userpool; please check your awsconfiguration.json"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 564
    monitor-exit v0

    return-void

    .line 568
    :cond_1fe
    :goto_1fe
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_204
    .catchall {:try_start_1f0 .. :try_end_204} :catchall_2d4

    if-eqz v1, :cond_292

    :try_start_206
    const-string v4, "TokenURI"

    .line 572
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_232

    .line 573
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v1

    const-string v3, "initialize: OAuth2 client detected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v3, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v4, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Landroid/content/Context;

    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-direct {v3, v4, v5}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;-><init>(Landroid/content/Context;Lcom/amazonaws/mobile/client/AWSMobileClient;)V

    iput-object v3, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 575
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-boolean v3, v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Z

    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a(Z)V

    goto :goto_292

    .line 577
    :cond_232
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v4

    const-string v5, "initialize: Cognito HostedUI client detected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Scopes"

    .line 578
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 579
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 580
    :goto_246
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_256

    .line 581
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_246

    .line 584
    :cond_256
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v3, v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->u:Ljava/lang/String;

    if-eqz v3, :cond_27d

    .line 588
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v4, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-boolean v4, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Z

    .line 589
    invoke-virtual {v1, v4}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setPersistenceEnabled(Z)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v1

    new-instance v4, Lcom/amazonaws/mobile/client/AWSMobileClient$2$2;

    invoke-direct {v4, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$2$2;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$2;)V

    .line 590
    invoke-virtual {v1, v4}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAuthHandler(Lcom/amazonaws/mobileconnectors/cognitoauth/handlers/AuthHandler;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->build()Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    move-result-object v1

    .line 588
    invoke-static {v3, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    goto :goto_292

    .line 585
    :cond_27d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "User pool Id must be available through user pool setting"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_285
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_285} :catch_285
    .catchall {:try_start_206 .. :try_end_285} :catchall_2d4

    :catch_285
    move-exception v1

    .line 609
    :try_start_286
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to initialize OAuth, please check your awsconfiguration.json"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 613
    :cond_292
    :goto_292
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-nez v1, :cond_2ac

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    if-nez v1, :cond_2ac

    .line 614
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Neither Cognito Identity or Cognito UserPool was used. At least one must be present to use AWSMobileClient."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 617
    monitor-exit v0

    return-void

    .line 620
    :cond_2ac
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v1

    .line 622
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    invoke-static {v2, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 624
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v2, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 625
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v2, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 626
    monitor-exit v0

    return-void

    :catch_2c5
    move-exception v1

    .line 472
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to initialize AWSMobileClient; please check your awsconfiguration.json"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 473
    monitor-exit v0

    return-void

    :catchall_2d4
    move-exception v1

    .line 626
    monitor-exit v0
    :try_end_2d6
    .catchall {:try_start_286 .. :try_end_2d6} :catchall_2d4

    throw v1
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass2.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$2$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

.field final synthetic b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$2;Lcom/amazonaws/mobile/auth/core/IdentityManager;)V
    .registers 3

    .line 485
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 488
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUserSignedIn: Updating user state from drop-in UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->DONE:Lcom/amazonaws/mobile/client/results/SignInState;

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/results/SignInState;)Lcom/amazonaws/mobile/client/results/SignInState;

    .line 490
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i()Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->d()Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-interface {v0}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->b()Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v3, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;

    invoke-direct {v3, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public b()V
    .registers 4

    .line 512
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUserSignedOut: Updating user state from drop-in UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 514
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Lcom/amazonaws/mobile/client/AWSMobileClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass2.AnonymousClass1.C00131 (com.amazonaws.mobile.client.AWSMobileClient$2$1$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobile/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobile/client/Callback<",
        "Lcom/amazonaws/mobile/client/UserStateDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;)V
    .registers 2

    .line 493
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    .registers 4

    .line 496
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onResult: showSignIn federated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 498
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->h()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    .line 503
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError: User sign-in had errors from drop-in UI"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 505
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->h()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 493
    check-cast p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1$1;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass2.C00142 (com.amazonaws.mobile.client.AWSMobileClient$2$2)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$2$2;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoauth/handlers/AuthHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$2;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$2;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$2;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoauth/AuthUserSession;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass20 (com.amazonaws.mobile.client.AWSMobileClient$20)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$20;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->k(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2317
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2320
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2321
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Operation requires a signed-in state"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 2325
    :cond_15
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->c:Ljava/lang/String;

    new-instance v3, Lcom/amazonaws/mobile/client/AWSMobileClient$20$1;

    invoke-direct {v3, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$20$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$20;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass20.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$20$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$20$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$20;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$20;)V
    .registers 2

    .line 2328
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 2331
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$20;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->a:Lcom/amazonaws/mobile/client/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 2336
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$20$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$20;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$20;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass21 (com.amazonaws.mobile.client.AWSMobileClient$21)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$21;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3

    .line 2578
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$21;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$21;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2581
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$21;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "showSignIn called with HostedUI options in awsconfiguration.json"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass22 (com.amazonaws.mobile.client.AWSMobileClient$22)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$22;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/SignInUIOptions;

.field final synthetic b:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4

    .line 2597
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->a:Lcom/amazonaws/mobile/client/SignInUIOptions;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 2600
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->a:Lcom/amazonaws/mobile/client/SignInUIOptions;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/SignInUIOptions;->e()Lcom/amazonaws/mobile/client/HostedUIOptions;

    move-result-object v0

    .line 2603
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 2605
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->b:Lcom/amazonaws/mobile/client/Callback;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Could not create OAuth configuration object"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 2608
    :cond_1a
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 2609
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v3, "isFederationEnabled"

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->d()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_33

    const-string v4, "true"

    goto :goto_35

    :cond_33
    const-string v4, "false"

    :goto_35
    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 2611
    :cond_39
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v3, "isFederationEnabled"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    :goto_44
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v3, "signInMode"

    sget-object v4, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->OAUTH2:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    invoke-virtual {v4}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->v()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_62

    goto :goto_6a

    .line 2616
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OAuth flow requires a federation provider name if federation is enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2619
    :cond_6a
    :goto_6a
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->g()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_af

    .line 2621
    :try_start_70
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2622
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->g()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_81
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2623
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_81

    :cond_9b
    const-string v3, "SignOutQueryParameters"

    .line 2625
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a0
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_a0} :catch_a1

    goto :goto_af

    :catch_a1
    move-exception v0

    .line 2627
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->b:Lcom/amazonaws/mobile/client/Callback;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to construct sign-out query parameters"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 2631
    :cond_af
    :goto_af
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->h()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_f4

    .line 2633
    :try_start_b5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2634
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->h()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2635
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c6

    :cond_e0
    const-string v3, "TokenQueryParameters"

    .line 2637
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e5
    .catch Lorg/json/JSONException; {:try_start_b5 .. :try_end_e5} :catch_e6

    goto :goto_f4

    :catch_e6
    move-exception v0

    .line 2639
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->b:Lcom/amazonaws/mobile/client/Callback;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to construct token query parameters"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 2644
    :cond_f4
    :goto_f4
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v3, "hostedUI"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_101
    const-string v2, "SignInURI"

    .line 2648
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 2649
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->f()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_13d

    .line 2650
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->f()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_121
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2651
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_121

    :cond_13d
    const-string v3, "redirect_uri"

    const-string v4, "SignInRedirectURI"

    .line 2654
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "scopes"

    const-string v4, "Scopes"

    .line 2655
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "client_id"

    const-string v4, "AppClientId"

    .line 2656
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_164} :catch_1d9

    .line 2662
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_169
    const-string v4, "TokenURI"

    .line 2664
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 2665
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->f()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1a5

    .line 2666
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->h()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_189
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2667
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_189

    :cond_1a5
    const-string v5, "client_id"

    const-string v6, "AppClientId"

    .line 2670
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "redirect_uri"

    const-string v6, "SignInRedirectURI"

    .line 2671
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_1bb} :catch_1d0

    .line 2675
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2677
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v4, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    invoke-direct {v5, p0, v1, v3, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$22;Landroid/net/Uri;Ljava/util/Map;Lcom/amazonaws/mobile/client/HostedUIOptions;)V

    invoke-virtual {v4, v2, v5}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->b(Landroid/net/Uri;Lcom/amazonaws/mobile/client/Callback;)V

    return-void

    :catch_1d0
    move-exception v0

    .line 2673
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to construct tokens url for OAuth"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1d9
    move-exception v0

    .line 2658
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to construct authorization url for OAuth"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass22.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$22$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobile/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobile/client/Callback<",
        "Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/amazonaws/mobile/client/HostedUIOptions;

.field final synthetic d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$22;Landroid/net/Uri;Ljava/util/Map;Lcom/amazonaws/mobile/client/HostedUIOptions;)V
    .registers 5

    .line 2677
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->c:Lcom/amazonaws/mobile/client/HostedUIOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;)V
    .registers 9

    .line 2680
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResult: OAuth2 callback occurred, exchanging code for token"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->a:Landroid/net/Uri;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;

    invoke-direct {v6, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;)V

    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 2722
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 2677
    check-cast p1, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->a(Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass22.AnonymousClass1.C00151 (com.amazonaws.mobile.client.AWSMobileClient$22$1$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobile/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->a(Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobile/client/Callback<",
        "Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;)V
    .registers 2

    .line 2681
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;)V
    .registers 5

    .line 2684
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->v()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2685
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->c:Lcom/amazonaws/mobile/client/HostedUIOptions;

    .line 2686
    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/HostedUIOptions;->e()Ljava/lang/String;

    move-result-object v1

    .line 2687
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;

    invoke-direct {v2, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;)V

    .line 2685
    invoke-virtual {v0, v1, p1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V

    goto :goto_44

    .line 2706
    :cond_27
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 v0, 0x0

    .line 2707
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object p1

    .line 2708
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 2709
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    :goto_44
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 2715
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 2681
    check-cast p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass22.AnonymousClass1.C00151.C00161 (com.amazonaws.mobile.client.AWSMobileClient$22$1$1$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobile/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobile/client/Callback<",
        "Lcom/amazonaws/mobile/client/UserStateDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;)V
    .registers 2

    .line 2688
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    .registers 3

    .line 2691
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 v0, 0x0

    .line 2692
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object p1

    .line 2693
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 2694
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 2699
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 v0, 0x0

    .line 2700
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object p1

    .line 2701
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 2702
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1;->d:Lcom/amazonaws/mobile/client/AWSMobileClient$22;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$22;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 2688
    check-cast p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$22$1$1$1;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass23 (com.amazonaws.mobile.client.AWSMobileClient$23)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$23;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/SignInUIOptions;

.field final synthetic b:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4

    .line 2732
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->a:Lcom/amazonaws/mobile/client/SignInUIOptions;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2736
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->a:Lcom/amazonaws/mobile/client/SignInUIOptions;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/SignInUIOptions;->e()Lcom/amazonaws/mobile/client/HostedUIOptions;

    move-result-object v0

    const/4 v1, 0x0

    .line 2741
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_25

    :catch_17
    move-exception v2

    .line 2743
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->b:Lcom/amazonaws/mobile/client/Callback;

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Could not create OAuth configuration object"

    invoke-direct {v4, v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    move-object v2, v1

    .line 2746
    :goto_25
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->d()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 2747
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v3, v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v4, "isFederationEnabled"

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->d()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string v5, "true"

    goto :goto_40

    :cond_3e
    const-string v5, "false"

    :goto_40
    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 2749
    :cond_44
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v3, v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v4, "isFederationEnabled"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    :goto_4f
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->g()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_94

    .line 2754
    :try_start_55
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2755
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->g()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2756
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_66

    :cond_80
    const-string v4, "SignOutQueryParameters"

    .line 2758
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_85} :catch_86

    goto :goto_94

    :catch_86
    move-exception v0

    .line 2760
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->b:Lcom/amazonaws/mobile/client/Callback;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to construct sign-out query parameters"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 2764
    :cond_94
    :goto_94
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->h()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_d9

    .line 2766
    :try_start_9a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2767
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->h()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ab
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2768
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ab

    :cond_c5
    const-string v4, "TokenQueryParameters"

    .line 2770
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ca
    .catch Lorg/json/JSONException; {:try_start_9a .. :try_end_ca} :catch_cb

    goto :goto_d9

    :catch_cb
    move-exception v0

    .line 2772
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->b:Lcom/amazonaws/mobile/client/Callback;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to construct token query parameters"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 2777
    :cond_d9
    :goto_d9
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v3, v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v4, "hostedUI"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->a()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f8

    .line 2781
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2782
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->a()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2787
    :cond_f8
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->b()Ljava/lang/String;

    move-result-object v3

    .line 2788
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/HostedUIOptions;->c()Ljava/lang/String;

    move-result-object v0

    .line 2790
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v4, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    const-string v5, "signInMode"

    sget-object v6, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    invoke-virtual {v6}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    :try_start_10f
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v4, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v2
    :try_end_115
    .catch Lorg/json/JSONException; {:try_start_10f .. :try_end_115} :catch_147

    .line 2799
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-boolean v4, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Z

    .line 2800
    invoke-virtual {v2, v4}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setPersistenceEnabled(Z)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    move-result-object v4

    new-instance v5, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;

    invoke-direct {v5, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$23;)V

    .line 2801
    invoke-virtual {v4, v5}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAuthHandler(Lcom/amazonaws/mobileconnectors/cognitoauth/handlers/AuthHandler;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    if-eqz v1, :cond_12a

    .line 2857
    invoke-virtual {v2, v1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setScopes(Ljava/util/Set;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    :cond_12a
    if-eqz v3, :cond_12f

    .line 2860
    invoke-virtual {v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setIdentityProvider(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    :cond_12f
    if-eqz v0, :cond_134

    .line 2863
    invoke-virtual {v2, v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setIdpIdentifier(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 2865
    :cond_134
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->build()Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    .line 2866
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->getSession()V

    return-void

    :catch_147
    move-exception v0

    .line 2796
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to construct HostedUI from awsconfiguration.json"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass23.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$23$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoauth/handlers/AuthHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/amazonaws/mobile/client/AWSMobileClient$23;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$23;)V
    .registers 2

    .line 2801
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2802
    iput-boolean p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 2838
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSignout: HostedUI signed-out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoauth/AuthUserSession;)V
    .registers 5

    .line 2806
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSuccess: HostedUI signed-in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2807
    iput-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->a:Z

    .line 2808
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$23;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->v()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2809
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$23;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$23;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/lang/String;

    .line 2810
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/AuthUserSession;->getIdToken()Lcom/amazonaws/mobileconnectors/cognitoauth/tokens/IdToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/tokens/IdToken;->getJWTToken()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$1;

    invoke-direct {v2, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;)V

    .line 2809
    invoke-virtual {v0, v1, p1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V

    .line 2825
    :cond_30
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$2;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$2;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2833
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    .line 2843
    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->a:Z

    if-eqz v0, :cond_e

    .line 2844
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFailure: Ignoring failure because HostedUI has signaled success at least once."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2848
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$3;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;Ljava/lang/Exception;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2853
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass23.AnonymousClass1.C00171 (com.amazonaws.mobile.client.AWSMobileClient$23$1$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobile/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->a(Lcom/amazonaws/mobileconnectors/cognitoauth/AuthUserSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobile/client/Callback<",
        "Lcom/amazonaws/mobile/client/UserStateDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;)V
    .registers 2

    .line 2811
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    .registers 3

    .line 2814
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onResult: Federation from the Hosted UI succeeded"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    .line 2820
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError: Federation from the Hosted UI failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 2811
    check-cast p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$1;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass23.AnonymousClass1.AnonymousClass2 (com.amazonaws.mobile.client.AWSMobileClient$23$1$2)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$2;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->a(Lcom/amazonaws/mobileconnectors/cognitoauth/AuthUserSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;)V
    .registers 2

    .line 2825
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$2;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2828
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$2;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$23;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 v1, 0x0

    .line 2829
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v0

    .line 2830
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$2;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$23;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 2831
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$2;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$23;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v1, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass23.AnonymousClass1.AnonymousClass3 (com.amazonaws.mobile.client.AWSMobileClient$23$1$3)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$3;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;Ljava/lang/Exception;)V
    .registers 3

    .line 2848
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$3;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$3;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2851
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$3;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$23;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$23;->b:Lcom/amazonaws/mobile/client/Callback;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$23$1$3;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass24 (com.amazonaws.mobile.client.AWSMobileClient$24)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$24;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Landroid/app/Activity;Lcom/amazonaws/mobile/client/SignInUIOptions;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Lcom/amazonaws/mobile/client/SignInUIOptions;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Lcom/amazonaws/mobile/client/SignInUIOptions;Landroid/app/Activity;)V
    .registers 5

    .line 2875
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->b:Lcom/amazonaws/mobile/client/SignInUIOptions;

    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 2878
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->l(Lcom/amazonaws/mobile/client/AWSMobileClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2879
    :try_start_7
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/UserStateDetails;->a()Lcom/amazonaws/mobile/client/UserState;

    move-result-object v1

    .line 2880
    sget-object v3, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobile/client/UserState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2881
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Called showSignIn while user is already signed-in"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 2882
    monitor-exit v0

    return-void

    .line 2885
    :cond_28
    new-instance v1, Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;

    invoke-direct {v1}, Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->b:Lcom/amazonaws/mobile/client/SignInUIOptions;

    .line 2886
    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/SignInUIOptions;->c()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;->canCancel(Z)Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;

    move-result-object v1

    .line 2887
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;->isBackgroundColorFullScreen(Z)Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;

    move-result-object v1

    .line 2889
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->b:Lcom/amazonaws/mobile/client/SignInUIOptions;

    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/SignInUIOptions;->a()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 2890
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->b:Lcom/amazonaws/mobile/client/SignInUIOptions;

    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/SignInUIOptions;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;->logoResId(I)Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;

    .line 2892
    :cond_50
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->b:Lcom/amazonaws/mobile/client/SignInUIOptions;

    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/SignInUIOptions;->b()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_65

    .line 2893
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->b:Lcom/amazonaws/mobile/client/SignInUIOptions;

    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/SignInUIOptions;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;->backgroundColor(I)Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;

    .line 2896
    :cond_65
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 2898
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const-string v4, "CognitoUserPool"

    invoke-static {v3, v4}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_76

    .line 2899
    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;->userPools(Z)Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;

    .line 2902
    :cond_76
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const-string v5, "FacebookSignIn"

    invoke-static {v3, v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 2903
    const-class v3, Lcom/amazonaws/mobile/auth/facebook/FacebookButton;

    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;->signInButton(Ljava/lang/Class;)Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;

    .line 2906
    :cond_85
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const-string v5, "GoogleSignIn"

    invoke-static {v3, v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 2907
    const-class v3, Lcom/amazonaws/mobile/auth/google/GoogleButton;

    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;->signInButton(Ljava/lang/Class;)Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;

    .line 2910
    :cond_94
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->b:Lcom/amazonaws/mobile/client/SignInUIOptions;

    .line 2911
    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/SignInUIOptions;->d()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_a3

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->c:Landroid/app/Activity;

    .line 2912
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_a9

    :cond_a3
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->b:Lcom/amazonaws/mobile/client/SignInUIOptions;

    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/SignInUIOptions;->d()Ljava/lang/Class;

    move-result-object v3

    .line 2913
    :goto_a9
    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v6, v6, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Landroid/content/Context;

    const-class v7, Lcom/amazonaws/mobile/auth/ui/SignInUI;

    invoke-virtual {v5, v6, v7}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/amazonaws/mobile/config/AWSConfigurable;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/mobile/auth/ui/SignInUI;

    .line 2914
    iget-object v6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->c:Landroid/app/Activity;

    invoke-virtual {v5, v6, v3}, Lcom/amazonaws/mobile/auth/ui/SignInUI;->login(Landroid/app/Activity;Ljava/lang/Class;)Lcom/amazonaws/mobile/auth/ui/SignInUI$LoginBuilder;

    move-result-object v3

    .line 2915
    invoke-virtual {v1}, Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration$Builder;->build()Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobile/auth/ui/SignInUI$LoginBuilder;->authUIConfiguration(Lcom/amazonaws/mobile/auth/ui/AuthUIConfiguration;)Lcom/amazonaws/mobile/auth/ui/SignInUI$LoginBuilder;

    move-result-object v1

    .line 2916
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/auth/ui/SignInUI$LoginBuilder;->enableFederation(Z)Lcom/amazonaws/mobile/auth/ui/SignInUI$LoginBuilder;

    move-result-object v1

    .line 2917
    invoke-virtual {v1}, Lcom/amazonaws/mobile/auth/ui/SignInUI$LoginBuilder;->execute()V

    .line 2919
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v1, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    :try_end_d6
    .catchall {:try_start_7 .. :try_end_d6} :catchall_fc

    .line 2921
    :try_start_d6
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Lcom/amazonaws/mobile/client/AWSMobileClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 2922
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->a:Lcom/amazonaws/mobile/client/Callback;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v3, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 2923
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "run: showSignIn completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/lang/InterruptedException; {:try_start_d6 .. :try_end_f3} :catch_f4
    .catchall {:try_start_d6 .. :try_end_f3} :catchall_fc

    goto :goto_fa

    :catch_f4
    move-exception v1

    .line 2925
    :try_start_f5
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$24;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v2, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 2927
    :goto_fa
    monitor-exit v0

    return-void

    :catchall_fc
    move-exception v1

    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_f5 .. :try_end_fe} :catchall_fc

    throw v1
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass25 (com.amazonaws.mobile.client.AWSMobileClient$25)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$25;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobile/client/AWSStartupHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Landroid/content/Context;)Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V
    .registers 2

    .line 2967
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$25;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/client/AWSStartupResult;)V
    .registers 3

    .line 2970
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AWSMobileClient Initialize succeeded."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Welcome to AWS! You are connected successfully."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass26 (com.amazonaws.mobile.client.AWSMobileClient$26)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$26;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobile/auth/core/StartupAuthResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Landroid/content/Context;Lcom/amazonaws/mobile/client/AWSStartupHandler;)Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSStartupHandler;

.field final synthetic b:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/AWSStartupHandler;)V
    .registers 3

    .line 2994
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$26;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$26;->a:Lcom/amazonaws/mobile/client/AWSStartupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/auth/core/StartupAuthResult;)V
    .registers 4

    .line 2997
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Welcome to AWS! You are connected successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/core/StartupAuthResult;->c()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2999
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Identity ID retrieved."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    :cond_18
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$26;->a:Lcom/amazonaws/mobile/client/AWSStartupHandler;

    new-instance v0, Lcom/amazonaws/mobile/client/AWSStartupResult;

    .line 3002
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/mobile/client/AWSStartupResult;-><init>(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V

    .line 3001
    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/AWSStartupHandler;->a(Lcom/amazonaws/mobile/client/AWSStartupResult;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass27 (com.amazonaws.mobile.client.AWSMobileClient$27)
.class synthetic Lcom/amazonaws/mobile/client/AWSMobileClient$27;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1990
    invoke-static {}, Lcom/amazonaws/mobile/client/results/SignInState;->values()[Lcom/amazonaws/mobile/client/results/SignInState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->b:[I

    sget-object v2, Lcom/amazonaws/mobile/client/results/SignInState;->SMS_MFA:Lcom/amazonaws/mobile/client/results/SignInState;

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/results/SignInState;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->b:[I

    sget-object v3, Lcom/amazonaws/mobile/client/results/SignInState;->NEW_PASSWORD_REQUIRED:Lcom/amazonaws/mobile/client/results/SignInState;

    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/results/SignInState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->b:[I

    sget-object v4, Lcom/amazonaws/mobile/client/results/SignInState;->DONE:Lcom/amazonaws/mobile/client/results/SignInState;

    invoke-virtual {v4}, Lcom/amazonaws/mobile/client/results/SignInState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->b:[I

    sget-object v5, Lcom/amazonaws/mobile/client/results/SignInState;->CUSTOM_CHALLENGE:Lcom/amazonaws/mobile/client/results/SignInState;

    invoke-virtual {v5}, Lcom/amazonaws/mobile/client/results/SignInState;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    .line 872
    :catch_35
    invoke-static {}, Lcom/amazonaws/mobile/client/UserState;->values()[Lcom/amazonaws/mobile/client/UserState;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->a:[I

    :try_start_3e
    sget-object v4, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->a:[I

    sget-object v5, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    invoke-virtual {v5}, Lcom/amazonaws/mobile/client/UserState;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->a:[I

    sget-object v4, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    invoke-virtual {v4}, Lcom/amazonaws/mobile/client/UserState;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->a:[I

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_FEDERATED_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/UserState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5c
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->a:[I

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->GUEST:Lcom/amazonaws/mobile/client/UserState;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/UserState;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_66} :catch_66

    :catch_66
    :try_start_66
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$27;->a:[I

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/UserState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_71

    :catch_71
    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass3 (com.amazonaws.mobile.client.AWSMobileClient$3)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$3;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/UserStateListener;

.field final synthetic b:Lcom/amazonaws/mobile/client/UserStateDetails;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/UserStateListener;Lcom/amazonaws/mobile/client/UserStateDetails;)V
    .registers 4

    .line 725
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$3;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$3;->a:Lcom/amazonaws/mobile/client/UserStateListener;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$3;->b:Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 728
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$3;->a:Lcom/amazonaws/mobile/client/UserStateListener;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$3;->b:Lcom/amazonaws/mobile/client/UserStateDetails;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/UserStateListener;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass4 (com.amazonaws.mobile.client.AWSMobileClient$4)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$4;
.super Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.source "AWSMobileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->p()Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
        "Lcom/amazonaws/mobile/client/UserStateDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V
    .registers 2

    .line 816
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$4;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-direct {p0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobile/client/UserStateDetails;
    .registers 3

    .line 819
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$4;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 816
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$4;->a()Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass5 (com.amazonaws.mobile.client.AWSMobileClient$5)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$5;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic e:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 6

    .line 1096
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->d:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1100
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$5;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    .line 1171
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->d:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :goto_19
    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass5.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$5$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$5;)V
    .registers 2

    .line 1100
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    .registers 6

    .line 1105
    :try_start_0
    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p2, p2, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p1, p2, Lcom/amazonaws/mobile/client/AWSMobileClient;->n:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 1106
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    sget-object p2, Lcom/amazonaws/mobile/client/results/SignInState;->DONE:Lcom/amazonaws/mobile/client/results/SignInState;

    invoke-static {p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/results/SignInState;)Lcom/amazonaws/mobile/client/results/SignInState;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_24

    :catch_10
    move-exception p1

    .line 1108
    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p2, p2, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {p2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 1109
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;

    .line 1113
    :goto_24
    :try_start_24
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->v()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 1114
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p2, p2, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object p2, p2, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->n:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_49
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->l()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_50} :catch_66
    .catchall {:try_start_24 .. :try_end_50} :catchall_64

    .line 1121
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance p2, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v0, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->t()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    goto :goto_83

    :catchall_64
    move-exception p1

    goto :goto_94

    :catch_66
    move-exception p1

    .line 1119
    :try_start_67
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Failed to federate tokens during sign-in"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_64

    .line 1121
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance p2, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v0, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->t()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    :goto_83
    invoke-virtual {p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 1124
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object p1

    sget-object p2, Lcom/amazonaws/mobile/client/results/SignInResult;->a:Lcom/amazonaws/mobile/client/results/SignInResult;

    invoke-interface {p1, p2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void

    .line 1121
    :goto_94
    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object p2, p2, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    new-instance v0, Lcom/amazonaws/mobile/client/UserStateDetails;

    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->t()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 1122
    throw p1
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
    .registers 6

    .line 1129
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Sending password."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->c:Ljava/util/Map;

    invoke-direct {p2, v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)V

    .line 1131
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->b()V

    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
    .registers 5

    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/mobile/client/results/SignInState;->valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/SignInState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/results/SignInState;)Lcom/amazonaws/mobile/client/results/SignInState;

    .line 1155
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    .line 1157
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobile/client/results/SignInResult;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 1158
    invoke-static {v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->f(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/results/SignInState;

    move-result-object v2

    .line 1159
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->a()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/amazonaws/mobile/client/results/SignInResult;-><init>(Lcom/amazonaws/mobile/client/results/SignInState;Ljava/util/Map;)V

    .line 1157
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_3f

    :catch_33
    move-exception p1

    .line 1161
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :goto_3f
    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
    .registers 8

    .line 1136
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    .line 1137
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    move-result-object p1

    .line 1138
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    sget-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->SMS_MFA:Lcom/amazonaws/mobile/client/results/SignInState;

    invoke-static {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/results/SignInState;)Lcom/amazonaws/mobile/client/results/SignInState;

    .line 1139
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobile/client/results/SignInResult;

    sget-object v2, Lcom/amazonaws/mobile/client/results/SignInState;->SMS_MFA:Lcom/amazonaws/mobile/client/results/SignInState;

    new-instance v3, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    .line 1143
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->a()Ljava/lang/String;

    move-result-object v4

    .line 1144
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->b()Ljava/lang/String;

    move-result-object v5

    .line 1145
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, v5, p1}, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/mobile/client/results/SignInResult;-><init>(Lcom/amazonaws/mobile/client/results/SignInState;Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;)V

    .line 1139
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 1167
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$5$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$5;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$5;->e:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass6 (com.amazonaws.mobile.client.AWSMobileClient$6)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$6;
.super Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.source "AWSMobileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Lcom/amazonaws/mobile/client/SignOutOptions;)Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/mobile/client/internal/ReturningRunnable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/SignOutOptions;

.field final synthetic b:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/SignOutOptions;)V
    .registers 3

    .line 1247
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->a:Lcom/amazonaws/mobile/client/SignOutOptions;

    invoke-direct {p0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 9

    .line 1250
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->a:Lcom/amazonaws/mobile/client/SignOutOptions;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/SignOutOptions;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1251
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;-><init>()V

    .line 1252
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->y()Lcom/amazonaws/mobile/client/results/Tokens;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/results/Tokens;->a()Lcom/amazonaws/mobile/client/results/Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/results/Token;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;->a(Ljava/lang/String;)V

    .line 1254
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->s:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutResult;

    .line 1256
    :cond_25
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->a:Lcom/amazonaws/mobile/client/SignOutOptions;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/SignOutOptions;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_be

    .line 1257
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1258
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->signOut()V

    goto/16 :goto_be

    .line 1259
    :cond_41
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    if-eqz v0, :cond_be

    .line 1260
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1261
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "SignOutURI"

    .line 1262
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1263
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 1264
    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v5}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "SignOutRedirectURI"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_80

    const-string v5, "redirect_uri"

    .line 1265
    iget-object v6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v6}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "SignOutRedirectURI"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_80
    const-string v5, "SignOutQueryParameters"

    .line 1268
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_a0

    .line 1271
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1272
    :goto_8c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 1273
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1274
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_8c

    .line 1277
    :cond_a0
    new-array v2, v2, [Ljava/lang/Exception;

    .line 1278
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v3, v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/amazonaws/mobile/client/AWSMobileClient$6$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient$6$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$6;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Exception;)V

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a(Landroid/net/Uri;Lcom/amazonaws/mobile/client/Callback;)V

    .line 1290
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v0, 0x0

    .line 1291
    aget-object v3, v2, v0

    if-nez v3, :cond_bb

    goto :goto_be

    .line 1292
    :cond_bb
    aget-object v0, v2, v0

    throw v0

    .line 1296
    :cond_be
    :goto_be
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->x()V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 1247
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$6;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass6.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$6$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$6$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobile/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$6;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobile/client/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:[Ljava/lang/Exception;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient$6;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$6;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Exception;)V
    .registers 4

    .line 1278
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6$1;->c:Lcom/amazonaws/mobile/client/AWSMobileClient$6;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6$1;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6$1;->b:[Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 4

    .line 1286
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6$1;->b:[Ljava/lang/Exception;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1287
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1278
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$6$1;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .registers 2

    .line 1281
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$6$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass7 (com.amazonaws.mobile.client.AWSMobileClient$7)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$7;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobile/client/FederatedSignInOptions;Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Z

.field final synthetic f:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 7

    .line 1411
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->d:Ljava/util/Map;

    iput-boolean p6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    .registers 3

    .line 1447
    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->e:Z

    if-eqz v0, :cond_9

    .line 1448
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1415
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    if-nez v0, :cond_13

    .line 1416
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Federation is not enabled, please check if you have CognitoIdentity configured."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 1421
    :cond_13
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->m:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1422
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e()V

    .line 1423
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->a(Ljava/util/Map;)V

    .line 1426
    :cond_35
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    move-result-object v0

    .line 1428
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 1431
    invoke-direct {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception v0

    .line 1433
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "provider"

    const/4 v3, 0x0

    .line 1434
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    .line 1435
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isFederationEnabled"

    .line 1436
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cognitoIdentityId"

    .line 1437
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "customRoleArn"

    .line 1438
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    invoke-virtual {v2, v1}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a(Ljava/util/Map;)V

    .line 1441
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$7;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error in federating the token."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass8 (com.amazonaws.mobile.client.AWSMobileClient$8)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$8;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Z

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Z)V
    .registers 4

    .line 1513
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    iput-boolean p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1516
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->t()Ljava/util/Map;

    move-result-object v0

    const-string v1, "provider"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_28

    .line 1518
    :cond_11
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1519
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "getTokens does not support retrieving tokens for federated sign-in"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 1523
    :cond_28
    :goto_28
    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->b:Z

    if-eqz v0, :cond_41

    .line 1524
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1525
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "getTokens does not support retrieving tokens while signed-out"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 1529
    :cond_41
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->m()Z

    move-result v0

    if-nez v0, :cond_55

    .line 1530
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You must be signed-in with Cognito Userpools to be able to use getTokens"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 1533
    :cond_55
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->w()Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1546
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient$8$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$8$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$8;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->setAuthHandler(Lcom/amazonaws/mobileconnectors/cognitoauth/handlers/AuthHandler;)V

    .line 1566
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g(Lcom/amazonaws/mobile/client/AWSMobileClient;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->getSession(Z)V

    return-void

    .line 1568
    :cond_7c
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->w()Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->OAUTH2:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1569
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Tokens are not supported for OAuth2"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void

    .line 1574
    :cond_97
    :try_start_97
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$8;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a7} :catch_a8

    goto :goto_ae

    :catch_a8
    move-exception v0

    .line 1616
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :goto_ae
    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass8.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$8$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$8$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoauth/handlers/AuthHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$8;)V
    .registers 2

    .line 1546
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1558
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No cached session."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoauth/AuthUserSession;)V
    .registers 6

    .line 1549
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Lcom/amazonaws/mobile/client/results/Tokens;

    .line 1550
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/AuthUserSession;->getAccessToken()Lcom/amazonaws/mobileconnectors/cognitoauth/tokens/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoauth/tokens/AccessToken;->getJWTToken()Ljava/lang/String;

    move-result-object v2

    .line 1551
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/AuthUserSession;->getIdToken()Lcom/amazonaws/mobileconnectors/cognitoauth/tokens/IdToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/tokens/IdToken;->getJWTToken()Ljava/lang/String;

    move-result-object v3

    .line 1552
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/AuthUserSession;->getRefreshToken()Lcom/amazonaws/mobileconnectors/cognitoauth/tokens/RefreshToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/tokens/RefreshToken;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/amazonaws/mobile/client/results/Tokens;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 5

    .line 1563
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No cached session."

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass8.AnonymousClass2 (com.amazonaws.mobile.client.AWSMobileClient$8$2)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$8;)V
    .registers 2

    .line 1574
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .registers 5

    .line 1611
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "signalTokensNotAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No cached session."

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    .registers 6

    .line 1579
    :try_start_0
    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;

    iget-object p2, p2, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p1, p2, Lcom/amazonaws/mobile/client/AWSMobileClient;->n:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 1580
    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;

    iget-object p2, p2, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v0, Lcom/amazonaws/mobile/client/results/Tokens;

    .line 1581
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->a()Ljava/lang/String;

    move-result-object v1

    .line 1582
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;->a()Ljava/lang/String;

    move-result-object v2

    .line 1583
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;->a_()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/amazonaws/mobile/client/results/Tokens;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    invoke-interface {p2, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    move-exception p1

    .line 1586
    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$8;

    iget-object p2, p2, Lcom/amazonaws/mobile/client/AWSMobileClient$8;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {p2, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :goto_33
    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
    .registers 3

    const/4 p1, 0x0

    .line 1592
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
    .registers 2

    const/4 p1, 0x0

    .line 1602
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
    .registers 2

    const/4 p1, 0x0

    .line 1597
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 2

    .line 1607
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$8$2;->b(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass9 (com.amazonaws.mobile.client.AWSMobileClient$9)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$9;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic f:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 7

    .line 1670
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->e:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1673
    new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    invoke-direct {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;-><init>()V

    .line 1674
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1675
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 1678
    :cond_27
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->d:Ljava/util/Map;

    new-instance v5, Lcom/amazonaws/mobile/client/AWSMobileClient$9$1;

    invoke-direct {v5, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$9$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$9;)V

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass9.AnonymousClass1 (com.amazonaws.mobile.client.AWSMobileClient$9$1)
.class Lcom/amazonaws/mobile/client/AWSMobileClient$9$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$9;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$9;)V
    .registers 2

    .line 1678
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V
    .registers 6

    .line 1684
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$9;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->f:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 1685
    new-instance p1, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;

    .line 1686
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->a()Ljava/lang/String;

    move-result-object v0

    .line 1687
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->b()Ljava/lang/String;

    move-result-object v1

    .line 1688
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->c()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, v1, p3}, Lcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    iget-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$9;

    iget-object p3, p3, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->e:Lcom/amazonaws/mobile/client/Callback;

    new-instance v0, Lcom/amazonaws/mobile/client/results/SignUpResult;

    invoke-direct {v0, p2, p1}, Lcom/amazonaws/mobile/client/results/SignUpResult;-><init>(ZLcom/amazonaws/mobile/client/results/UserCodeDeliveryDetails;)V

    invoke-interface {p3, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 1695
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$9$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$9;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$9;->e:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v0, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.InitializeBuilder (com.amazonaws.mobile.client.AWSMobileClient$InitializeBuilder)
.class public Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitializeBuilder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient;

.field private b:Landroid/content/Context;

.field private c:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field private d:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3221
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3222
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->b:Landroid/content/Context;

    .line 3223
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->c:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 3224
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->d:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3237
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3238
    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->b:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3239
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->c:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 3240
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->d:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3254
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->c:Lcom/amazonaws/mobile/config/AWSConfiguration;

    return-object p0
.end method

.method public varargs a([Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;)Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3269
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->d:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

    return-object p0
.end method

.method public a()Lcom/amazonaws/mobile/config/AWSConfiguration;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3283
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->c:Lcom/amazonaws/mobile/config/AWSConfiguration;

    return-object v0
.end method

.method public b()[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3296
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->d:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3309
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->b:Landroid/content/Context;

    return-object v0
.end method

.method public d()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3320
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-static {v0, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/AWSMobileClient$InitializeBuilder;)V

    return-void
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.SignInMode (com.amazonaws.mobile.client.AWSMobileClient$SignInMode)
.class final enum Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
.super Ljava/lang/Enum;
.source "AWSMobileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SignInMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

.field public static final enum FEDERATED_SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

.field public static final enum HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

.field public static final enum OAUTH2:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

.field public static final enum SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

.field public static final enum UNKNOWN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;


# instance fields
.field encode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 268
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    const-string v1, "SIGN_IN"

    const-string v2, "0"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 269
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    const-string v1, "FEDERATED_SIGN_IN"

    const-string v2, "1"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->FEDERATED_SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 270
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    const-string v1, "HOSTED_UI"

    const-string v2, "2"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 271
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    const-string v1, "OAUTH2"

    const-string v2, "3"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->OAUTH2:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 272
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    const-string v1, "UNKNOWN"

    const-string v2, "-1"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->UNKNOWN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    const/4 v0, 0x5

    .line 267
    new-array v0, v0, [Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->FEDERATED_SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->OAUTH2:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->UNKNOWN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->$VALUES:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 278
    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->encode:Ljava/lang/String;

    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    .registers 2

    const-string v0, "0"

    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 287
    sget-object p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    return-object p0

    :cond_b
    const-string v0, "1"

    .line 288
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 289
    sget-object p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->FEDERATED_SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    return-object p0

    :cond_16
    const-string v0, "2"

    .line 290
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 291
    sget-object p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    return-object p0

    :cond_21
    const-string v0, "3"

    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 293
    sget-object p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->OAUTH2:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    return-object p0

    .line 295
    :cond_2c
    sget-object p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->UNKNOWN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    .registers 2

    .line 267
    const-class v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    .registers 1

    .line 267
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->$VALUES:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->encode:Ljava/lang/String;

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.AWSMobileClient.SignInProviderConfig (com.amazonaws.mobile.client.AWSMobileClient$SignInProviderConfig)
.class public Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignInProviderConfig"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private c:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3364
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3365
    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->b:Ljava/lang/Class;

    .line 3366
    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3379
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3392
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInProviderConfig;->c:[Ljava/lang/String;

    return-object v0
.end method
